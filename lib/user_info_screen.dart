import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class UserInfoScreen extends StatefulWidget {
  final profileImage,userEmail,userName;
  const UserInfoScreen({Key? key,required this.userEmail,required this.profileImage,required this.userName}) : super(key: key);

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(widget.profileImage),
              const SizedBox(height: 20),
              Text(widget.userName),
              const SizedBox(height: 20),
              Text(widget.userEmail),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: ()async{
                final fb = FacebookLogin(debug: true);
                await fb.logOut();
                Navigator.pop(context);
              }, child: const Text('Logout')),
            ],
          ),
        ),
    );
  }
}
