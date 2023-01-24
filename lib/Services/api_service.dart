
import 'package:http/http.dart' as http;

class InstagramBasicDisplayService {
  // var appId = '6015544598507408';
  // var appSecret = 'd932f4d5c459b3933863290e2ebe22c3';
  // var redirectUrl = 'https://shammypcot.com/blog_code/instagram_basic_display_api';
  // var getCode = '';
  // var apiBaseUrl = 'https://api.instagram.com/';
  // var graphBaseUrl = 'https://graph.instagram.com/';
  // var userAccessToken = '';
  // var userAccessTokenExpires = '';
  //
  // var authorizationUrl = '';
  // var hasUserAccessToken = false;
  // var userId = '';
  //
  //
  // Future<String?> getAccessToken() async {
  //   return userAccessToken;
  // }
  //
  //
  // Future<String?> getUserAccessToken() async {
  //   return userAccessTokenExpires;
  // }

  Future<dynamic> getInstagramUserData(String link) async {
    // var token = 'EAAS1gFl3UxMBADIQTNdsue5t9m7AZBZAzN3R4K1LczQCdwDbGc2NP6GIV5ZBF5e6su7LjrPW6nJ7nKMEpfGOO51kqRZAirzbmrVWbsND8ULfdMhLWeBdAhHoVbund0N180dG32YwK4EKgRGZBLjyGzZBABiPpJSXMqBEVsZC0l3u3MlsR8zhopiPaqLqfAKl0wpPDZAUGg0mE0YXRZAImfb5I3sEg4gyVHhlswMFdRFSnzPZBfAd5RTNBOSGZBkm3yyjZBsZD';
    try {
      // print('user id is---->$user');
      // var url = Uri.parse('https://graph.facebook.com/v15.0/17841457810153791?fields=follows_count%2Cmedia_count%2Cbusiness_discovery.username($user){followers_count,media_count,media{media_url}}&access_token=$token');
      // var url = Uri.parse('https://graph.facebook.com/v15.0/17841457810153791?fields=follows_count%2Cmedia_count%2Cbusiness_discovery.username($user){followers_count,media_count,media{media_url,like_count,comments_count,media_type}}&access_token=$token');
      String searchLink = link;
      print('link------------>$link');
      String splitLast = searchLink.substring(searchLink.length - 19);
      print('splitlink------------>$splitLast');
      String actualLink = splitLast.replaceAll(splitLast, '__a=1&__d=dis');
      print('actual link---->$actualLink');
      if(searchLink.contains('reel')){
        searchLink = link.substring(0,44);
      }else{
        searchLink = link.substring(0,41);
      }
      print('after split actual link---->$searchLink');
      var url = Uri.parse('$searchLink$actualLink');
      print('------------>$searchLink$actualLink');
      // https://www.instagram.com/p/Cf4dPucLzW0/?__a=1&__d=dis
      var response = await http.get(url);
      //     body: {
      //   'access_token': 'EAAS1gFl3UxMBANLGdvSchGlEN5pqdKiVt1TuUveY2naP4mFZAJW0XFnwMGF7S8aEh0EsWVW0GMofb0uluMkGcWwra1EjcWQZCOIhkjw1lVBZCHpFSX3LHS6l8438vRu2ti2DPRW6wej6uPZC3cvU9LfqB0CsGg1gPV6qXKgpvI1FHhRkLD6pauaVwG4tBBB1Qd71TxvplnlvBwxs8v6ZB06DdeG4gWlcZD',
      //   'fields' : 'follows_count%2Cmedia_count%2Cbusiness_discovery.username(mypcot.user){followers_count,media_count,media{media_url}}'
      // });
      print(response.body.toString());
      return response;
    } catch (e) {
      print('=======This is exception=========');
      print(e);
      return ' ';
    }
  }
}

// https://shammypcot.com/blog_code/instagram_basic_display_api/?code=d932f4d5c459b3933863290e2ebe22c3

//access token
//IGQVJVVzBTdFFacFRsZAkNtY3ZAmUjhLaTJRa2FYajVFNjJhNk1HclM5MlppRjR3MDhjbmdUREhLenJ6Ty1tWDlQemlad2Jia0phSlNvMm9nWkJMc3R0b2ljVTh4YjBwN0p5aXFGYy1hN292ZAHRjdGpnYwZDZD