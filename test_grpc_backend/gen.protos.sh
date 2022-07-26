# shellcheck disable=SC2046
PROTO_PATH=protos

protoc --proto_path=$PROTO_PATH --go_out=$PROTO_PATH --go_opt=paths=source_relative \
  --go-grpc_out=$PROTO_PATH --go-grpc_opt=paths=source_relative \
  $(find $PROTO_PATH -iname "*.proto")
