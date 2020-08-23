#include <iostream>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/io/zero_copy_stream_impl.h>
#include "cpp-cpp/proto/msg.pb.h"

#include <zmq.hpp>

using namespace std;

/*
 * With protobuf integration
 * */
//using namespace google::protobuf::io;
class ZMQSubscriber{
public:
    explicit ZMQSubscriber(const char* url):context(1), publisher(context, ZMQ_PUB), proto_saved(false){
        publisher.bind(url);

        raw_output = std::make_unique<google::protobuf::io::StringOutputStream>(&encoded_message);
        coded_output = std::make_unique<google::protobuf::io::CodedOutputStream>(raw_output.get());
    }

    void writeProto(google::protobuf::Message &msg){
        if(!raw_output || !coded_output){
            throw std::runtime_error("Output streams not initialized.");
        }
        std::string serialized_update;
        msg.SerializeToString(&serialized_update);

        coded_output->WriteVarint32(serialized_update.size());
        coded_output->WriteString(serialized_update);

        proto_saved = true;
    }

    void send(){
        if(!proto_saved){
            throw std::invalid_argument("Must save proto to subscriber before sending message.");
        }
        zmq::message_t message(encoded_message.size());
        memcpy ((void *) message.data(), encoded_message.c_str(),
                encoded_message.size());

        publisher.send(message);

        // Clear message tied to coded_output
        encoded_message.clear();

        proto_saved = false;
    }

    std::unique_ptr<google::protobuf::io::CodedOutputStream> coded_output;

private:
    bool proto_saved;
    zmq::context_t context;
    zmq::socket_t publisher;
    std::string encoded_message;
    std::unique_ptr<google::protobuf::io::ZeroCopyOutputStream> raw_output;
};

//int main(int argc, char *argv[])
//{
//    // publish
//    zmq::context_t context (1);
//    zmq::socket_t publisher (context, ZMQ_PUB);
//    publisher.bind("tcp://127.0.0.1:5557");
//
////    while(true){
//        // encoded_message : protobuf all
//        // serialized_update : protobuf one segment
//        // message : zmq
//        // update : my msg
//        std::string encoded_message;
//        ZeroCopyOutputStream* raw_output =
//            new StringOutputStream(&encoded_message);
//        CodedOutputStream* coded_output = new CodedOutputStream(raw_output);
//
//        int num_updates = 10;
//
//        // prefix the stream with the number of updates
//        coded_output->WriteLittleEndian32(num_updates);
//        int update_nbr;
//
//        // create a bunch of updates, serialize them and add them
//        // to the stream
//        for(update_nbr = 0; update_nbr < num_updates; update_nbr++) {
//
//            ZmqPBExampleWeather update;
//            update.set_zipcode( 78731 );
//            update.set_temperature( 78 );
//            update.set_relhumidity( 10 );
//
//            std::string serialized_update;
//            update.SerializeToString(&serialized_update);
//
//            coded_output->WriteVarint32(serialized_update.size());
//            coded_output->WriteString(serialized_update);
//        }
//        // clean up
//        delete coded_output;
//        delete raw_output;
//
//        zmq::message_t message(encoded_message.size());
//        memcpy ((void *) message.data(), encoded_message.c_str(),
//                encoded_message.size());
//
//        publisher.send(message);
////    }
//
//    std::cout << "done pub" << std::endl;
//    return 0;
//}

int main(int argc, char *argv[]){
    ZMQSubscriber sub("tcp://127.0.0.1:5557");

    while(true){
        int num_updates = 10;
        sub.coded_output->WriteLittleEndian32(num_updates);


        for(int update_nbr = 0; update_nbr < num_updates; update_nbr++) {
            ZmqPBExampleWeather update;
            update.set_zipcode( 78731 );
            update.set_temperature( 78 );
            update.set_relhumidity( 10 );

            sub.writeProto(update);
        }

        sub.send();
    }

    return 0;
}