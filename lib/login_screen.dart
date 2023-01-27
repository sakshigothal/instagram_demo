import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // final FacebookLogin facebookLogin = FacebookLogin(debug: true);
  bool isSignIn = false;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String uId = '';
  String name = '';
  String email = '';
  String imageUrl = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()async{
          /*FacebookAuth.instance.login(
            permissions: ['public_profile','email']
          ).then((value){
            FacebookAuth.instance.getUserData().then((userData){
                print('userdata is --->${userData.toString()}');
            });
          });*/

          // FacebookLoginResult result = await facebookLogin.logIn(customPermissions: ['email']);
          loginInWithFacebook();
        },
            child: const Text('Login with Facebook')),
      ),
    );
  }

  facebookLogin()async{
    final fb = FacebookLogin(debug: true);
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    print('checking status---->${res.status}');
    switch (res.status) {
      case FacebookLoginStatus.success:
        final FacebookAccessToken? accessToken = res.accessToken;
        final profile = await fb.getUserProfile(); // get profile of user
        final imageUrl = await fb.getProfileImageUrl(width: 100);//get user profile
        final email = await fb.getUserEmail();//get user email
        if (email != null)
          print('And your email is $email');

        break;
      case FacebookLoginStatus.cancel:
        break;
      case FacebookLoginStatus.error:
        print('Error while log in: ${res.error}');
        break;
    }
  }





  Future signInWithFacebook()async{

    final LoginResult result = await FacebookAuth.instance.login();
    final graphResponse = await http.get(Uri.parse(
        'https://graph.facebook.com/v15.0/me?fields=name,picture.width(100).height(100),first_name,last_name,email&access_token=${result.accessToken!.token}'));

    final profile = jsonDecode(graphResponse.body);
    print('response is---->${profile.toString()}');
  }



  Future<Resource?> loginInWithFacebook() async {
    print('object----->');
      try {
        print('object2----->');
        final LoginResult result = await FacebookAuth.instance.login();
        print('after initialized result---->${result.message}');
        switch (result.status) {
          case LoginStatus.success:
            final AuthCredential facebookCredential =
            FacebookAuthProvider.credential(result.accessToken!.token);
            final userCredential =
            await firebaseAuth.signInWithCredential(facebookCredential);
            return Resource(status: Status.Success);
          case LoginStatus.cancelled:
            return Resource(status: Status.Cancelled);
          case LoginStatus.failed:
            return Resource(status: Status.Error);
          default:
            return null;
        }
      } on FirebaseAuthException catch (e) {
        throw e;
      }
    }

}

class Resource{

  final Status status;
  Resource({required this.status});
}

enum Status {
  Success,
  Error,
  Cancelled
}
