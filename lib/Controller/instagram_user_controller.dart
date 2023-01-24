import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

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
  RxInt totalMedia = 0.obs;



  @override
  void onInit() async{
    super.onInit();
    // await loadInstagramUserData(userName);
  }

  Future<void> loadInstagramUserData(String url) async {
    isLoadingData.value = true;
    final response =  await instagramBasicDisplayApi.getInstagramUserData(url);
    if (response == '') {
      print('null response');
    } else if (response is http.Response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> decodeData = jsonDecode(response.body.toString());
        if(decodeData.toString().contains('items')){
          instagramReelDataModel = instagramReelDataModelFromJson(response.body.toString());
          commentCount.value = instagramReelDataModel!.items.first.commentCount;
          likeCount.value = instagramReelDataModel!.items.first.likeCount;
          print('view count--->${instagramDataModel!.graphql.shortcodeMedia.viewCount}');
          // postUrl.value = instagramDataModel!.graphql.shortcodeMedia.displayUrl;
          mediaLoaded.value = true;
          // pageNo.value++;
          isLoadingData.value = false;

        }else{
          instagramDataModel = instagramDataModelFromJson(response.body.toString());
          commentCount.value = instagramDataModel!.graphql.shortcodeMedia.edgeMediaToParentComment.count;
          likeCount.value = instagramDataModel!.graphql.shortcodeMedia.edgeMediaPreviewLike.count;
          postUrl.value = instagramDataModel!.graphql.shortcodeMedia.displayUrl;
          print('view count--->${instagramDataModel!.graphql.shortcodeMedia.viewCount}');
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
