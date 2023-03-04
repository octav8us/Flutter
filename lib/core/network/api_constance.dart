class ApiConstance {
  static const String baseUrl = 'http://back-ph2h.onrender.com/jobs/';
  //static const String apiKey = "c3435cfe40aeb079689227d82bf921d3";

  static const String getalljopPath = baseUrl;

  

  

  static const String baseImageUrl = '"https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/';
///path=Test-Logo.svg/783px-Test-Logo.svg.png
  static String imageUrl(String path) => '$baseImageUrl$path';
}
