package services

import (
	"context"
	"google.golang.org/grpc/metadata"
	"log"
	pb "test.com/ms/protos"
)

type AuthServer struct {
	pb.UnimplementedAuthSvcServer
}

// Login =>
func (s AuthServer) Login(ctx context.Context, request *pb.AuthRequest) (*pb.AuthResponse, error) {
	response := &pb.AuthResponse{}

	md, ok := metadata.FromIncomingContext(ctx)

	if ok {
		authKey := md.Get("Authorization")
		log.Printf("authorization key: %v", authKey)
	}

	// perform logic
	response.Message = "Login was successful"
	response.Successful = true
	response.AccessToken = "123456abcde"
	response.Account = &pb.Account{
		Id:       "ali123",
		Username: request.GetUsername(),
		Password: request.GetPassword(),
		Salt:     "abc123",
	}

	return response, nil
}
