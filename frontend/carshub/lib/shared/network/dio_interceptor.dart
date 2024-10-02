import 'package:carshub/shared/utils/logger.dart';
import 'package:carshub/shared/utils/storage_utils.dart';
import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger.i("Request[${options.method}] => PATH: ${options.path}");
    options.headers["Authorization"] = await storage.read(key: "token");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i("Response Status Code: [${response.statusCode}]");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger
        .e("Error[${err.response?.data}] => PATH: ${err.requestOptions.path}");
    super.onError(err, handler);
  }
}
