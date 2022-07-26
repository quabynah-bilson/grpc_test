///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $0;
export 'auth.pb.dart';

class AuthSvcClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.AuthRequest, $0.AuthResponse>(
      '/test.AuthSvc/login',
      ($0.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$createAccount =
      $grpc.ClientMethod<$0.AuthRequest, $0.AuthResponse>(
          '/test.AuthSvc/createAccount',
          ($0.AuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$updateAccount =
      $grpc.ClientMethod<$0.Account, $0.AuthResponse>(
          '/test.AuthSvc/updateAccount',
          ($0.Account value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$resetPassword =
      $grpc.ClientMethod<$0.ResetPasswordRequest, $0.AuthResponse>(
          '/test.AuthSvc/resetPassword',
          ($0.ResetPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$deleteAccount =
      $grpc.ClientMethod<$0.DeleteRequest, $0.AuthResponse>(
          '/test.AuthSvc/deleteAccount',
          ($0.DeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$currentAccount =
      $grpc.ClientMethod<$0.EmptyRequest, $0.AuthResponse>(
          '/test.AuthSvc/currentAccount',
          ($0.EmptyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));

  AuthSvcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthResponse> login($0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> createAccount($0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> updateAccount($0.Account request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> resetPassword(
      $0.ResetPasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> deleteAccount($0.DeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> currentAccount($0.EmptyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$currentAccount, request, options: options);
  }
}

abstract class AuthSvcServiceBase extends $grpc.Service {
  $core.String get $name => 'test.AuthSvc';

  AuthSvcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthResponse>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthResponse>(
        'createAccount',
        createAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Account, $0.AuthResponse>(
        'updateAccount',
        updateAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Account.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetPasswordRequest, $0.AuthResponse>(
        'resetPassword',
        resetPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResetPasswordRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRequest, $0.AuthResponse>(
        'deleteAccount',
        deleteAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.AuthResponse>(
        'currentAccount',
        currentAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.AuthResponse> createAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return createAccount(call, await request);
  }

  $async.Future<$0.AuthResponse> updateAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Account> request) async {
    return updateAccount(call, await request);
  }

  $async.Future<$0.AuthResponse> resetPassword_Pre($grpc.ServiceCall call,
      $async.Future<$0.ResetPasswordRequest> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$0.AuthResponse> deleteAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeleteRequest> request) async {
    return deleteAccount(call, await request);
  }

  $async.Future<$0.AuthResponse> currentAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async {
    return currentAccount(call, await request);
  }

  $async.Future<$0.AuthResponse> login(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.AuthResponse> createAccount(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.AuthResponse> updateAccount(
      $grpc.ServiceCall call, $0.Account request);
  $async.Future<$0.AuthResponse> resetPassword(
      $grpc.ServiceCall call, $0.ResetPasswordRequest request);
  $async.Future<$0.AuthResponse> deleteAccount(
      $grpc.ServiceCall call, $0.DeleteRequest request);
  $async.Future<$0.AuthResponse> currentAccount(
      $grpc.ServiceCall call, $0.EmptyRequest request);
}
