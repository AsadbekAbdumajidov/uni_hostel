import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:UniHostel/core/themes/app_text.dart';

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
      '${AppStrings.strServerFailure} $statusCode';
}

class ConnectionFailure extends Failure {
  const ConnectionFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppStrings.strConnectionFailure;
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppStrings.strUnknownFailure;
}

class GeneralFailure extends Failure {
  const GeneralFailure(this.error) : super();
  final String error;

  @override
  String getLocalizedMessage(BuildContext context) => error;
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppStrings.strUserNotFoundFailure;
}

class UserNotFound extends Failure {
  final String? errorMessage;

  const UserNotFound(this.errorMessage) : super();

  @override
  List<Object> get props =>
      [errorMessage == null ? AppStrings.strUserNotFound : "$errorMessage"];

  @override
  String getLocalizedMessage(BuildContext context) => "$errorMessage";
}

class CacheFailure extends Failure {
  const CacheFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppStrings.strCacheFailure;
}

class SubmittedFailure extends Failure {
  const SubmittedFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppStrings.strSubmittedFailure;
}
