import 'package:flutter/material.dart';

class InstagramLoginScreen extends StatefulWidget {
  const InstagramLoginScreen({Key? key}) : super(key: key);

  @override
  State<InstagramLoginScreen> createState() => _InstagramLoginScreenState();
}

class _InstagramLoginScreenState extends State<InstagramLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()async{

        },
            child: const Text('Login With Instagram')),
      ),
    );
  }
}
