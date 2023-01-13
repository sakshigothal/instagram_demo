class InstagramBasicDisplayApi {
  var appId = '6015544598507408';
  var appSecret = 'd932f4d5c459b3933863290e2ebe22c3';
  var redirectUrl = 'https://shammypcot.com/blog_code/instagram_basic_display_api';
  var getCode = '';
  var apiBaseUrl = 'https://api.instagram.com/';
  var graphBaseUrl = 'https://graph.instagram.com/';
  var userAccessToken = '';
  var userAccessTokenExpires = '';

  var authorizationUrl = '';
  var hasUserAccessToken = false;
  var userId = '';


  Future<String?> getAccessToken() async {
    return userAccessToken;
  }


  Future<String?> getUserAccessToken() async {
    return userAccessTokenExpires;
  }
}

https://shammypcot.com/blog_code/instagram_basic_display_api/?code=d932f4d5c459b3933863290e2ebe22c3

//access token
//IGQVJVVzBTdFFacFRsZAkNtY3ZAmUjhLaTJRa2FYajVFNjJhNk1HclM5MlppRjR3MDhjbmdUREhLenJ6Ty1tWDlQemlad2Jia0phSlNvMm9nWkJMc3R0b2ljVTh4YjBwN0p5aXFGYy1hN292ZAHRjdGpnYwZDZD