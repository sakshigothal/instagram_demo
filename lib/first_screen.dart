/*
import 'package:flutter/material.dart';
import 'package:flutter_insta/flutter_insta.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final flutterWebViewPlugin =  FlutterWebviewPlugin();
  FlutterInsta flutterInsta = new FlutterInsta();



  @override
  void initState() {
    super.initState();
    getData();
    */
/*flutterWebViewPlugin.onUrlChanged.listen((String url) {
      print('string url---->$url');
    });
    *//*

  }

  void getData()async{
    await flutterInsta.getProfileData("virat.kohli");
    print("Username : ${flutterInsta.username}");
    print("Followers : ${flutterInsta.followers}");
    print("Folowing : ${flutterInsta.following}");
    print("Bio : ${flutterInsta.bio}");
    print("Website : ${flutterInsta.website}");
    print("Profile Image : ${flutterInsta.imgurl}");
    print("Feed images:${flutterInsta.feedImagesUrl}");
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://www.instagram.com/accounts/login/",
      appBar:  AppBar(
        title:  const Text("Widget webview"),
      ),
    );
  }
}
*/
