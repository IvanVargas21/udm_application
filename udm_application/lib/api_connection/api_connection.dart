class API {
  //connection to API service, which we can access using this hostConnectt
  static const String hostConnect = "http://192.168.0.20/api_udm_application";
  static const String hostConnectUser = "$hostConnect/user";

  //validation for signing up, checking if there was already an existing account to specific userID
  //static const String validateStudentID = "$hostConnect/user/validate_studentID.php";
  static const login = "$hostConnect/user/login.php";

  /*
  //signup user
  static const signup = "$hostConnect/user/signup.php";
   */
}
