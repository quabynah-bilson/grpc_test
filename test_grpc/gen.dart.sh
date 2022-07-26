# shellcheck disable=SC2046
PROTO_PATH=/Users/quabynah/src/projects/qcodelabsllc/grpc_test/test_grpc_backend/protos

# generate for mobile
protoc -I=$PROTO_PATH \
  --dart_out=grpc:lib/protos \
 $(find $PROTO_PATH -iname "*.proto")