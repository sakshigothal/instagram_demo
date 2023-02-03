class InstagramConstant {
  static InstagramConstant? _instance;
  static InstagramConstant get instance {
    _instance ??= InstagramConstant._init();
    return _instance!;
  }

  InstagramConstant._init();

  static const String clientID = '1325462768276243';
  static const String appSecret = 'ac901b99fc6c2c89d03494d254acf044';
  static const String redirectUri = 'https://www.ekspar.com.tr/';
  static const String scope = 'user_profile,user_media';
  static const String responseType = 'code';
  // https://api.instagram.com/oauth/authorize?force_authentication=1&client_id=706674467575881&redirect_uri=https://pub.dev/packages/flutter_facebook_auth/example&state=1&response_type=code
  final String url =
      'https://www.instagram.com/oauth/authorize?client_id=706674467575881&redirect_uri=https://pub.dev/packages/flutter_facebook_auth/example&scope=user_profile%2Cuser_media&response_type=code&logger_id=162d5cf3-01bc-4fe0-9720-66e411960c7c';


}