import 'dart:convert';

import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

final Client client = HttpClientWithInterceptor.build(
  badCertificateCallback: (certificate, host, port) => true,
  requestTimeout: Duration(seconds: 5),
  interceptors: [LoggingInterceptor()],
);

const String base_url = 'http://192.168.0.20:8080/transactions';