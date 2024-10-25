import 'package:dio/dio.dart';
import 'dart:io';
import 'package:dio/io.dart';
import 'package:water/Base/common/config.dart';
import 'package:water/Base/common/shared_preference_manger.dart';

import 'network-mappers.dart';

class NetworkUtil {
  static final NetworkUtil _instance = new NetworkUtil.internal();
SharedPreferenceManager sharedPreferenceManager =SharedPreferenceManager();
  NetworkUtil.internal();

  factory NetworkUtil() => _instance;

  Future<ResponseType> get <ResponseType extends Mappable>(ResponseType responseType, String url,
      {Map<String, dynamic>? headers,  var body}) async {
    print("url : ${url}");
    Dio dio = new Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };

  // Include API key in the headers
    headers ??= {};  // Ensure headers is not null
    headers['api-key'] =  '$apiKey';  // Replace 'Bearer' with the appropriate prefix if necessary
    Response? response;
    try {
      dio.options.baseUrl = baseUrl;
      response = await dio.get(
          url,
          data: body,
          options: Options(
            headers: headers,
            contentType: 'application/json',
          )
      );
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    print("response : ${response}");
    return handleResponse(response, responseType);
  }

  Future<ResponseType> post<ResponseType extends Mappable>(
      ResponseType responseType,
      String url, {
        Map<String, dynamic>? headers,
        var body,
        encoding,
      }) async {
    Dio dio = Dio();

    print("url : $url");
    print("body : $body");
    print("headers : $headers");

    // Configure the HttpClient to accept all certificates (use carefully in production)
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };

    var response;
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    // Add the API key to the headers if provided
    Map<String, dynamic> finalHeaders = {};
    if (headers != null) {
      finalHeaders.addAll(headers);
    }
    if (apiKey != null) {
      finalHeaders['Authorization'] = 'Bearer $apiKey';
    }

    try {
      response = await dio.post(
        url,
        data: body,
        options: Options(
          headers: finalHeaders,
          requestEncoder: encoding,
          followRedirects: true,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      }
    }
    return handleResponse(response, responseType);
  }

  Future<ResponseType> delete<ResponseType extends Mappable>(
      ResponseType responseType,
      String url, {
        Map<String, dynamic>? additionalHeaders, // Rename headers for clarity
      }) {
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return dioClient;
    };

    // Prepare headers with the API key
    final headers = {
      'Authorization': 'Bearer $apiKey', // Add the API key to the headers
      if (additionalHeaders != null) ...additionalHeaders, // Include any additional headers
    };

    return dio
        .delete(
      url,
      options: Options(headers: headers),
    ).then((Response response) {
      return handleResponse(response, responseType);
    });
  }


  Future<ResponseType> put<ResponseType extends Mappable>(
      ResponseType? responseType,
      String? url, {
        Map<String, dynamic>? headers,
        dynamic body,
        dynamic encoding,
      }) {
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return dioClient;
    };

    // Add the API key to the headers
    headers = {
      ...?headers,
      'Authorization': 'Bearer $apiKey', // Assuming API key is used as a Bearer token
    };

    return dio
        .put(
      url!,
      data: body,
      options: Options(headers: headers, requestEncoder: encoding),
    )
        .then((Response response) {
      return handleResponse(response, responseType);
    });
  }



  ResponseType handleResponse<ResponseType extends Mappable>(Response? response, ResponseType? responseType) {
    final int? statusCode = response!.statusCode;
    if (statusCode! >= 200 && statusCode < 300) {
      return Mappable(responseType!, response.toString()) as ResponseType;
    } else {
      return Mappable(responseType!, response.toString()) as ResponseType;
    }
  }


}
