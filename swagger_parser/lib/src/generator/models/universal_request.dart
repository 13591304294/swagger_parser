import 'package:collection/collection.dart';

import 'universal_request_type.dart';
import 'universal_type.dart';

/// Universal template for containing information about Request
class UniversalRequest {
  const UniversalRequest({
    required this.name,
    required this.requestType,
    required this.route,
    required this.returnType,
    required this.parameters,
    this.isMultiPart = false,
    this.isFormUrlEncoded = false,
  });

  /// Request name
  final String name;

  /// HTTP type of request
  final HttpRequestType requestType;

  /// Request route
  final String route;

  /// Request return type
  final UniversalType? returnType;

  /// Request parameters
  final List<UniversalRequestType> parameters;

  /// Request type 'multipart/form-data'
  final bool isMultiPart;

  /// Request type 'application/x-www-form-urlencoded'
  final bool isFormUrlEncoded;
}

enum HttpRequestType {
  get,
  post,
  head,
  put,
  delete,
  patch,
  connect,
  options,
  trace;

  const HttpRequestType();

  static HttpRequestType? fromString(String type) =>
      HttpRequestType.values.firstWhereOrNull((e) => e.name == type);
}
