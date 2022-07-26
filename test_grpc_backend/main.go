package main

import (
	"google.golang.org/grpc"
	"log"
	"net"
	pb "test.com/ms/protos"
	"test.com/ms/services"
)

// entry point of the application
func main() {
	// create server socket
	lis, err := net.Listen("tcp", ":4112")
	if err != nil {
		log.Fatalf("error creating server instance: %v", err)
		return
	}
	log.Printf("grpc server started successfully on port: %v", lis.Addr().String())

	// create a grpc server
	srv := grpc.NewServer()

	// register auth service with grpc server
	pb.RegisterAuthSvcServer(srv, services.AuthServer{})
	
	// start server
	err = srv.Serve(lis)

	if err != nil {
		log.Fatalf("error creating grpc server instance: %v", err)
		return
	}
}
