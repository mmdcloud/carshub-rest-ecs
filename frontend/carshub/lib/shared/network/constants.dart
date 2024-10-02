class NetworkConstants {
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;

  /// production
  // static const String baseURL = "https://www.dvmane.com/api/";

  /// dev
  static const String baseURL = "http://api.dvmane.com/api/";
  static const String apiGatewayURL =
      "https://fuebitarq3.execute-api.ap-south-1.amazonaws.com/prod/dvmzipfiles";
  static const String s3URL =
      "https://dvmnewreportfiles.s3.ap-south-1.amazonaws.com/";
  static const String imageURL = "http://api.dvmane.com/uploads/file_picker/";
}
