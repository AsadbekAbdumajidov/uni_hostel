import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LocalizedMessage {
  String getLocalizedMessage(BuildContext context);
}

abstract class Failure extends Equatable implements LocalizedMessage {
  const Failure();

  @override
  List<Object> get props => [];
}

class EmptyFailure extends Failure {
  const EmptyFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => '';
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(this.statusCode) : super();

  @override
  List<Object> get props => [statusCode ?? 0];

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Server error $statusCode';
}

class RegistaredFailure extends Failure {
  const RegistaredFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'This email is registered';
}
class ConnectionFailure extends Failure {
  const ConnectionFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Check internet connection';
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Unknown failure';
}

class GeneralFailure extends Failure {
  const GeneralFailure(this.error) : super();
  final String error;

  @override
  String getLocalizedMessage(BuildContext context) => error;
}

class UserExistFailure extends Failure {
  const UserExistFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'User already exists with this email';
}

class EmailExistFailure extends Failure {
  const EmailExistFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'This is email has already been taken';
}

class OldPasswordFailure extends Failure {
  const OldPasswordFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Old password is incorrect';
}

class UnAuthorizationFailure extends Failure {
  const UnAuthorizationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'UnAuthorization failure';
}

class EmailPasswordWrongFailure extends Failure {
  const EmailPasswordWrongFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Password is wrong';
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Id yoki passport seriyasi xato !';
}

class UserNotFound extends Failure {
  const UserNotFound() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'User not found';
}

class JudoGiNotFound extends Failure {
  const JudoGiNotFound() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'JudoGi was not found with this chip';
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Email is invalid';
}

class WrongCodeFailure extends Failure {
  const WrongCodeFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Wrong code';
}

class CacheFailure extends Failure {
  const CacheFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Cache failure';
}
