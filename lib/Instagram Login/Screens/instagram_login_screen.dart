import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../Constants/instagram_constants.dart';
import '../Model/instagra_model.dart';
import 'home.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:url_launcher/url_launcher.dart';


class InstagramView extends StatefulWidget {
  const InstagramView({Key? key}) : super(key: key);

  @override
  State<InstagramView> createState() => _InstagramViewState();
}

class _InstagramViewState extends State<InstagramView> {
   final  webViewController = WebViewController();
   final Uri _url = Uri.parse('https://www.instagram.com/oauth/authorize?client_id=706674467575881&redirect_uri=https://pub.dev/packages/flutter_facebook_auth/example&scope=user_profile%2Cuser_media&response_type=code&logger_id=162d5cf3-01bc-4fe0-9720-66e411960c7c');

  @override
  void initState() {
    super.initState();
    webViewController
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              debugPrint('blocking navigation to ${request.url}');
              return NavigationDecision.prevent;
            }
            debugPrint('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse('https://flutter.dev'));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            ElevatedButton(onPressed: ()async{
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            }, child: Text('Login With Instagram'))
            /*IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () async {
                if (await webViewController.canGoBack()) {
                  await webViewController.goBack();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No back history item')),
                  );
                  return;
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () async {
                if (await webViewController.canGoForward()) {
                  await webViewController.goForward();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No forward history item')),
                  );
                  return;
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: () => webViewController.reload(),
            ),*/
          ],
        ),
      ),
    );
  }

   Future<void> _launchUrl() async {
     if (!await launchUrl(_url)) {
       throw Exception('Could not launch $_url');
     }
   }
}
