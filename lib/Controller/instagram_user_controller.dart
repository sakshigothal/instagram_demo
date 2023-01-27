import 'dart:convert';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';

import '../Model/instagram_data_model.dart';
import '../Model/instagram_reel_data_model.dart';
import '../Services/api_service.dart';




class InstagramUserController extends GetxController{
  InstagramBasicDisplayService instagramBasicDisplayApi = InstagramBasicDisplayService();
  // List<Datum?> mediaList = <Datum?>[].obs;
  InstagramDataModel? instagramDataModel;
  InstagramReelDataModel? instagramReelDataModel;
  // String userName = 'leomessi';
  TextEditingController userSearchController = TextEditingController();
  RxInt commentCount = 0.obs;
  RxInt likeCount = 0.obs;
  RxString postUrl = ''.obs;
  RxInt pageNo = 1.obs;
  final limit = 10;
  RxBool isLoadingData = false.obs;
  RxBool mediaLoaded = false.obs;
  RxInt viewsCount = 0.obs;
  // late VideoPlayerController videoPlayerController;
  // ChewieController? chewieController;
  RxString videoUrl = ''.obs;
  RxBool isVideo = false.obs;




  @override
  void onInit() async{
    super.onInit();
    // if(isVideo.value){
    //   initializePlayer();
    // }
    /*videoPlayerController = VideoPlayerController.network(instagramReelDataModel?.graphql.shortcodeMedia.videoUrl)..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      update();
    });*/
    // await loadInstagramUserData(userName);
  }

  // Future<void> initializePlayer()async{
  //   videoPlayerController = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
  //   await Future.wait([videoPlayerController.initialize()]);
  //   chewieController = ChewieController(videoPlayerController: videoPlayerController,
  //   autoPlay: true,looping: true,
  //   // placeholder: Container(color: Colors.pink,),
  //   /*autoInitialize: true*/);
  //   update();
  // }


  // @override
  // void onClose() {
  //   videoPlayerController.dispose();
  //   chewieController!.dispose();
  // }

  Future<void> loadInstagramUserData(String url) async {
    isLoadingData.value = true;
    print('url ------> is ---->$url');
    final response =  await instagramBasicDisplayApi.getInstagramUserData(url);
    if (response == '') {
      print('null response');
    } else if (response is http.Response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> decodeData = jsonDecode(response.body.toString());
        print('object------>${decodeData['graphql']['shortcode_media']['is_video']}');
        if(decodeData['graphql']['shortcode_media']['is_video']== true){
          isVideo.value = true;
          instagramReelDataModel = instagramReelDataModelFromJson(response.body.toString());
          commentCount.value = instagramReelDataModel!.graphql.shortcodeMedia.edgeMediaToParentComment.count;
          likeCount.value = instagramReelDataModel!.graphql.shortcodeMedia.edgeMediaPreviewLike.count;
          viewsCount.value = instagramReelDataModel!.graphql.shortcodeMedia.videoViewCount;
          postUrl.value = instagramReelDataModel!.graphql.shortcodeMedia.displayUrl;
          // videoPlayerController = VideoPlayerController.network('https://instagram.fbom26-2.fna.fbcdn.net/v/t66.30100-16/52560758_597759488856292_3251625903020451809_n.mp4?_nc_ht=instagram.fbom26 -2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=IJ_kDov3MoEAX8k2Lwt&edm=APfKNqwBAAAA&ccb=7-5&oh=00_AfDyq6tA7Yp_WmN105FNxTUNAt5fTBU-cekWiE7SCrpdaQ&oe=63D1268E&_nc_sid=74f7ba');
          // videoUrl.value = instagramReelDataModel!.graphql.shortcodeMedia.videoUrl;
          print('view count--->${videoUrl.value}');

          // postUrl.value = instagramDataModel!.graphql.shortcodeMedia.displayUrl;
          mediaLoaded.value = true;
          // pageNo.value++;
          isLoadingData.value = false;

        }else{
          instagramDataModel = instagramDataModelFromJson(response.body.toString());
          commentCount.value = instagramDataModel!.graphql.shortcodeMedia.edgeMediaToParentComment.count;
          likeCount.value = instagramDataModel!.graphql.shortcodeMedia.edgeMediaPreviewLike.count;
          postUrl.value = instagramDataModel!.graphql.shortcodeMedia.displayUrl;
          // viewsCount.value = instagramReelDataModel!.graphql.shortcodeMedia.videoViewCount;
          print('view count--->**********${instagramDataModel!.graphql.shortcodeMedia.viewCount}');
          mediaLoaded.value = true;
          // pageNo.value++;
          isLoadingData.value = false;
        }

        // mediaList.addAll(instagramDataModel!.businessDiscovery!.media!.data!);
        // totalMedia.value = instagramDataModel!.mediaCount!;
        // print('media list--->${mediaList[1]!.likeCount}');

        // print('media list--->${mediaList[1]!.likeCount}');
      }else{
        print('in else condition');
        mediaLoaded.value = true;
        isLoadingData.value = false;
      }
    }
  }
}
