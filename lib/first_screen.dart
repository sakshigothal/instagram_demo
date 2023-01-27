/*
import 'package:demo_app/Controller/instagram_user_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  final instagramController = Get.put(InstagramUserController());

*/
/*  void getData()async{
    await flutterInsta.getProfileData("virat.kohli");
    print("Username : ${flutterInsta.username}");
    print("Followers : ${flutterInsta.followers}");
    print("Folowing : ${flutterInsta.following}");
    print("Bio : ${flutterInsta.bio}");
    print("Website : ${flutterInsta.website}");
    print("Profile Image : ${flutterInsta.imgurl}");
    print("Feed images:${flutterInsta.feedImagesUrl}");
  }*//*


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Instagram App')),
      body: Obx(() => SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: instagramController.userSearchController,
            ),
            ElevatedButton(onPressed: ()async{
              instagramController.mediaList.clear();
              await instagramController.loadInstagramUserData(instagramController.userSearchController.text);
            }, child: Text('Search user')),
            instagramController.mediaList.isNotEmpty ?
            */
/*LazyLoadScrollView(
              isLoading: instagramController.isLoadingData.value,
              onEndOfPage: ()async{
                await instagramController.loadInstagramUserData(instagramController.userSearchController.text);
              },
              child: ListView(
                children: [*//*

                  ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: instagramController.mediaList.length,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          height: 400,
                          width: 400,
                          child: Image.network(
                              '${instagramController.mediaList[index]!.mediaUrl}',fit: BoxFit.fill),
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite,color: Colors.red,),
                            // Text(instagramController.instagramDataModel!.businessDiscovery!.media!.data![index]!.likeCount.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.comment),
                            // Text(instagramController.instagramDataModel!.businessDiscovery!.media!.data![index]!.commentsCount.toString()),
                          ],
                        ),
                        SizedBox(height: 20,)
                      ],
                    );
                  })
                  */
/*instagramController.totalMedia.value ==
                      instagramController.mediaList.length
                      ? const SizedBox()
                      : instagramController.isLoadingData.value
                      ? Container(
                      color: Colors.white,
                      height: 150,
                      child: const Center(
                          child: CircularProgressIndicator()))
                      : SizedBox()
                ]),
            ) *//*
:
            SizedBox(),
          ],
        ),
      )),
    );
  }
}
*/

import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/Controller/instagram_user_controller.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final instagramController = Get.put(InstagramUserController());
   // VideoPlayerController? videoPlayerController;

  @override
  void initState() {
    super.initState();
    /*videoPlayerController = VideoPlayerController.network(instagramController.instagramReelDataModel?.graphql.shortcodeMedia.videoUrl)..initialize().then((_) {
    // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    setState(() {});
    });*/
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade300,
          title: const Text('Instagram Demo App'),
        ),
        body: Obx(() =>  Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                TextFormField(
                  controller: instagramController.userSearchController,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: ()async{
                        instagramController.userSearchController.clear();
                      },
                      child: Icon(Icons.clear),
                    )
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade300, // This is what you need!
                      ),



                      onPressed: ()async{
                    instagramController.commentCount.value = 0;
                    instagramController.likeCount.value = 0;
                    instagramController.postUrl.value = '';
                    instagramController.isVideo.value = false;
                    await instagramController.loadInstagramUserData(instagramController.userSearchController.text);
                  }, child: Text('Search')),
                ),
                instagramController.isLoadingData.value ?
                    Center(
                      child: CircularProgressIndicator(),
                    ) :
                instagramController.mediaLoaded.value ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      width: 400,
                      // color: Colors.red,
                      child: Center(
                        child:
                        // instagramController.isVideo.value ?
                        // instagramController.videoPlayerController.value.isInitialized ?
                        // VideoPlayer(instagramController.videoPlayerController) :
                        // SizedBox():
                         Image.network(instagramController.postUrl.value) ,
                      ),
                    ),
                    SizedBox(height: 20),
                    // instagramController.mediaLoaded.value ?
                    Text('Comments: ${instagramController.commentCount.value.toString()}'),
                    SizedBox(height: 10),
                    Text('Likes: ${instagramController.likeCount.value.toString()}'),
                    SizedBox(height: 10),
                    instagramController.isVideo.value ?
                    Text('Views: ${instagramController.viewsCount.value.toString()}') : SizedBox()
                  ],
                ) : Center(
                  child: SizedBox(),
                )
                // : SizedBox()
              ],
            ),
          ),
        )),
      ),
    );
  }
}
