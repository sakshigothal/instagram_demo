// To parse this JSON data, do
//
//     final instagramReelDataModel = instagramReelDataModelFromJson(jsonString);

import 'dart:convert';

InstagramReelDataModel instagramReelDataModelFromJson(String str) => InstagramReelDataModel.fromJson(json.decode(str));

String instagramReelDataModelToJson(InstagramReelDataModel data) => json.encode(data.toJson());

class InstagramReelDataModel {
  InstagramReelDataModel({
    required this.items,
    required this.numResults,
    required this.moreAvailable,
    required this.autoLoadMoreEnabled,
    required this.showQrModal,
  });

  List<Item> items;
  int numResults;
  bool moreAvailable;
  bool autoLoadMoreEnabled;
  bool showQrModal;

  factory InstagramReelDataModel.fromJson(Map<String, dynamic> json) => InstagramReelDataModel(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    numResults: json["num_results"],
    moreAvailable: json["more_available"],
    autoLoadMoreEnabled: json["auto_load_more_enabled"],
    showQrModal: json["showQRModal"],
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "num_results": numResults,
    "more_available": moreAvailable,
    "auto_load_more_enabled": autoLoadMoreEnabled,
    "showQRModal": showQrModal,
  };
}

class Item {
  Item({
    required this.takenAt,
    required this.pk,
    required this.id,
    required this.deviceTimestamp,
    required this.mediaType,
    required this.code,
    required this.clientCacheKey,
    required this.filterType,
    required this.isUnifiedVideo,
    required this.shouldRequestAds,
    required this.originalMediaHasVisualReplyMedia,
    required this.captionIsEdited,
    required this.likeAndViewCountsDisabled,
    required this.commercialityStatus,
    required this.isPaidPartnership,
    required this.isVisualReplyCommenterNoticeEnabled,
    required this.clipsTabPinnedUserIds,
    required this.hasDelayedMetadata,
    required this.commentLikesEnabled,
    required this.commentThreadingEnabled,
    required this.maxNumVisiblePreviewComments,
    required this.hasMoreComments,
    required this.previewComments,
    required this.photoOfYou,
    required this.usertags,
    required this.isOrganicProductTaggingEligible,
    required this.canSeeInsightsAsBrand,
    required this.user,
    required this.canViewerReshare,
    required this.likeCount,
    required this.hasLiked,
    required this.topLikers,
    required this.facepileTopLikers,
    required this.imageVersions2,
    required this.originalWidth,
    required this.originalHeight,
    required this.caption,
    required this.commentInformTreatment,
    required this.sharingFrictionInfo,
    required this.isDashEligible,
    required this.videoCodec,
    required this.numberOfQualities,
    required this.videoVersions,
    required this.hasAudio,
    required this.videoDuration,
    required this.canViewerSave,
    required this.isInProfileGrid,
    required this.profileGridControlEnabled,
    required this.viewCount,
    required this.playCount,
    required this.organicTrackingToken,
    required this.hasSharedToFb,
    required this.productType,
    required this.deletedReason,
    required this.integrityReviewDecision,
    this.commerceIntegrityReviewDecision,
    this.musicMetadata,
    required this.isArtistPick,
    required this.canViewMorePreviewComments,
    required this.comments,
    required this.hideViewAllCommentEntrypoint,
    required this.inlineComposerDisplayCondition,
    required this.commentCount,
    required this.clipsMetadata,
    required this.mediaCroppingInfo,
  });

  int takenAt;
  double pk;
  String id;
  int deviceTimestamp;
  int mediaType;
  String code;
  String clientCacheKey;
  int filterType;
  bool isUnifiedVideo;
  bool shouldRequestAds;
  bool originalMediaHasVisualReplyMedia;
  bool captionIsEdited;
  bool likeAndViewCountsDisabled;
  String commercialityStatus;
  bool isPaidPartnership;
  bool isVisualReplyCommenterNoticeEnabled;
  List<dynamic> clipsTabPinnedUserIds;
  bool hasDelayedMetadata;
  bool commentLikesEnabled;
  bool commentThreadingEnabled;
  int maxNumVisiblePreviewComments;
  bool hasMoreComments;
  List<dynamic> previewComments;
  bool photoOfYou;
  Usertags usertags;
  bool isOrganicProductTaggingEligible;
  bool canSeeInsightsAsBrand;
  ItemUser user;
  bool canViewerReshare;
  int likeCount;
  bool hasLiked;
  List<dynamic> topLikers;
  List<dynamic> facepileTopLikers;
  ImageVersions2 imageVersions2;
  int originalWidth;
  int originalHeight;
  Caption caption;
  CommentInformTreatment commentInformTreatment;
  SharingFrictionInfo sharingFrictionInfo;
  int isDashEligible;
  String videoCodec;
  int numberOfQualities;
  List<VideoVersion> videoVersions;
  bool hasAudio;
  double videoDuration;
  bool canViewerSave;
  bool isInProfileGrid;
  bool profileGridControlEnabled;
  int viewCount;
  int playCount;
  String organicTrackingToken;
  int hasSharedToFb;
  String productType;
  int deletedReason;
  String integrityReviewDecision;
  dynamic commerceIntegrityReviewDecision;
  dynamic musicMetadata;
  bool isArtistPick;
  bool canViewMorePreviewComments;
  List<dynamic> comments;
  bool hideViewAllCommentEntrypoint;
  String inlineComposerDisplayCondition;
  int commentCount;
  ClipsMetadata clipsMetadata;
  MediaCroppingInfo mediaCroppingInfo;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    takenAt: json["taken_at"],
    pk: json["pk"]?.toDouble(),
    id: json["id"],
    deviceTimestamp: json["device_timestamp"],
    mediaType: json["media_type"],
    code: json["code"],
    clientCacheKey: json["client_cache_key"],
    filterType: json["filter_type"],
    isUnifiedVideo: json["is_unified_video"],
    shouldRequestAds: json["should_request_ads"],
    originalMediaHasVisualReplyMedia: json["original_media_has_visual_reply_media"],
    captionIsEdited: json["caption_is_edited"],
    likeAndViewCountsDisabled: json["like_and_view_counts_disabled"],
    commercialityStatus: json["commerciality_status"],
    isPaidPartnership: json["is_paid_partnership"],
    isVisualReplyCommenterNoticeEnabled: json["is_visual_reply_commenter_notice_enabled"],
    clipsTabPinnedUserIds: List<dynamic>.from(json["clips_tab_pinned_user_ids"].map((x) => x)),
    hasDelayedMetadata: json["has_delayed_metadata"],
    commentLikesEnabled: json["comment_likes_enabled"],
    commentThreadingEnabled: json["comment_threading_enabled"],
    maxNumVisiblePreviewComments: json["max_num_visible_preview_comments"],
    hasMoreComments: json["has_more_comments"],
    previewComments: List<dynamic>.from(json["preview_comments"].map((x) => x)),
    photoOfYou: json["photo_of_you"],
    usertags: Usertags.fromJson(json["usertags"]),
    isOrganicProductTaggingEligible: json["is_organic_product_tagging_eligible"],
    canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
    user: ItemUser.fromJson(json["user"]),
    canViewerReshare: json["can_viewer_reshare"],
    likeCount: json["like_count"],
    hasLiked: json["has_liked"],
    topLikers: List<dynamic>.from(json["top_likers"].map((x) => x)),
    facepileTopLikers: List<dynamic>.from(json["facepile_top_likers"].map((x) => x)),
    imageVersions2: ImageVersions2.fromJson(json["image_versions2"]),
    originalWidth: json["original_width"],
    originalHeight: json["original_height"],
    caption: Caption.fromJson(json["caption"]),
    commentInformTreatment: CommentInformTreatment.fromJson(json["comment_inform_treatment"]),
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    isDashEligible: json["is_dash_eligible"],
    videoCodec: json["video_codec"],
    numberOfQualities: json["number_of_qualities"],
    videoVersions: List<VideoVersion>.from(json["video_versions"].map((x) => VideoVersion.fromJson(x))),
    hasAudio: json["has_audio"],
    videoDuration: json["video_duration"]?.toDouble(),
    canViewerSave: json["can_viewer_save"],
    isInProfileGrid: json["is_in_profile_grid"],
    profileGridControlEnabled: json["profile_grid_control_enabled"],
    viewCount: json["view_count"],
    playCount: json["play_count"],
    organicTrackingToken: json["organic_tracking_token"],
    hasSharedToFb: json["has_shared_to_fb"],
    productType: json["product_type"],
    deletedReason: json["deleted_reason"],
    integrityReviewDecision: json["integrity_review_decision"],
    commerceIntegrityReviewDecision: json["commerce_integrity_review_decision"],
    musicMetadata: json["music_metadata"],
    isArtistPick: json["is_artist_pick"],
    canViewMorePreviewComments: json["can_view_more_preview_comments"],
    comments: List<dynamic>.from(json["comments"].map((x) => x)),
    hideViewAllCommentEntrypoint: json["hide_view_all_comment_entrypoint"],
    inlineComposerDisplayCondition: json["inline_composer_display_condition"],
    commentCount: json["comment_count"],
    clipsMetadata: ClipsMetadata.fromJson(json["clips_metadata"]),
    mediaCroppingInfo: MediaCroppingInfo.fromJson(json["media_cropping_info"]),
  );

  Map<String, dynamic> toJson() => {
    "taken_at": takenAt,
    "pk": pk,
    "id": id,
    "device_timestamp": deviceTimestamp,
    "media_type": mediaType,
    "code": code,
    "client_cache_key": clientCacheKey,
    "filter_type": filterType,
    "is_unified_video": isUnifiedVideo,
    "should_request_ads": shouldRequestAds,
    "original_media_has_visual_reply_media": originalMediaHasVisualReplyMedia,
    "caption_is_edited": captionIsEdited,
    "like_and_view_counts_disabled": likeAndViewCountsDisabled,
    "commerciality_status": commercialityStatus,
    "is_paid_partnership": isPaidPartnership,
    "is_visual_reply_commenter_notice_enabled": isVisualReplyCommenterNoticeEnabled,
    "clips_tab_pinned_user_ids": List<dynamic>.from(clipsTabPinnedUserIds.map((x) => x)),
    "has_delayed_metadata": hasDelayedMetadata,
    "comment_likes_enabled": commentLikesEnabled,
    "comment_threading_enabled": commentThreadingEnabled,
    "max_num_visible_preview_comments": maxNumVisiblePreviewComments,
    "has_more_comments": hasMoreComments,
    "preview_comments": List<dynamic>.from(previewComments.map((x) => x)),
    "photo_of_you": photoOfYou,
    "usertags": usertags.toJson(),
    "is_organic_product_tagging_eligible": isOrganicProductTaggingEligible,
    "can_see_insights_as_brand": canSeeInsightsAsBrand,
    "user": user.toJson(),
    "can_viewer_reshare": canViewerReshare,
    "like_count": likeCount,
    "has_liked": hasLiked,
    "top_likers": List<dynamic>.from(topLikers.map((x) => x)),
    "facepile_top_likers": List<dynamic>.from(facepileTopLikers.map((x) => x)),
    "image_versions2": imageVersions2.toJson(),
    "original_width": originalWidth,
    "original_height": originalHeight,
    "caption": caption.toJson(),
    "comment_inform_treatment": commentInformTreatment.toJson(),
    "sharing_friction_info": sharingFrictionInfo.toJson(),
    "is_dash_eligible": isDashEligible,
    "video_codec": videoCodec,
    "number_of_qualities": numberOfQualities,
    "video_versions": List<dynamic>.from(videoVersions.map((x) => x.toJson())),
    "has_audio": hasAudio,
    "video_duration": videoDuration,
    "can_viewer_save": canViewerSave,
    "is_in_profile_grid": isInProfileGrid,
    "profile_grid_control_enabled": profileGridControlEnabled,
    "view_count": viewCount,
    "play_count": playCount,
    "organic_tracking_token": organicTrackingToken,
    "has_shared_to_fb": hasSharedToFb,
    "product_type": productType,
    "deleted_reason": deletedReason,
    "integrity_review_decision": integrityReviewDecision,
    "commerce_integrity_review_decision": commerceIntegrityReviewDecision,
    "music_metadata": musicMetadata,
    "is_artist_pick": isArtistPick,
    "can_view_more_preview_comments": canViewMorePreviewComments,
    "comments": List<dynamic>.from(comments.map((x) => x)),
    "hide_view_all_comment_entrypoint": hideViewAllCommentEntrypoint,
    "inline_composer_display_condition": inlineComposerDisplayCondition,
    "comment_count": commentCount,
    "clips_metadata": clipsMetadata.toJson(),
    "media_cropping_info": mediaCroppingInfo.toJson(),
  };
}

class Caption {
  Caption({
    required this.pk,
    required this.userId,
    required this.text,
    required this.type,
    required this.createdAt,
    required this.createdAtUtc,
    required this.contentType,
    required this.status,
    required this.bitFlags,
    required this.didReportAsSpam,
    required this.shareEnabled,
    required this.user,
    required this.isCovered,
    required this.isRankedComment,
    required this.mediaId,
    required this.privateReplyStatus,
  });

  double pk;
  int userId;
  String text;
  int type;
  int createdAt;
  int createdAtUtc;
  String contentType;
  String status;
  int bitFlags;
  bool didReportAsSpam;
  bool shareEnabled;
  IgArtistClass user;
  bool isCovered;
  bool isRankedComment;
  double mediaId;
  int privateReplyStatus;

  factory Caption.fromJson(Map<String, dynamic> json) => Caption(
    pk: json["pk"]?.toDouble(),
    userId: json["user_id"],
    text: json["text"],
    type: json["type"],
    createdAt: json["created_at"],
    createdAtUtc: json["created_at_utc"],
    contentType: json["content_type"],
    status: json["status"],
    bitFlags: json["bit_flags"],
    didReportAsSpam: json["did_report_as_spam"],
    shareEnabled: json["share_enabled"],
    user: IgArtistClass.fromJson(json["user"]),
    isCovered: json["is_covered"],
    isRankedComment: json["is_ranked_comment"],
    mediaId: json["media_id"]?.toDouble(),
    privateReplyStatus: json["private_reply_status"],
  );

  Map<String, dynamic> toJson() => {
    "pk": pk,
    "user_id": userId,
    "text": text,
    "type": type,
    "created_at": createdAt,
    "created_at_utc": createdAtUtc,
    "content_type": contentType,
    "status": status,
    "bit_flags": bitFlags,
    "did_report_as_spam": didReportAsSpam,
    "share_enabled": shareEnabled,
    "user": user.toJson(),
    "is_covered": isCovered,
    "is_ranked_comment": isRankedComment,
    "media_id": mediaId,
    "private_reply_status": privateReplyStatus,
  };
}

class IgArtistClass {
  IgArtistClass({
    required this.pk,
    required this.pkId,
    required this.username,
    this.fullName,
    required this.isPrivate,
    required this.isVerified,
    required this.profilePicId,
    required this.profilePicUrl,
    this.fbidV2,
    this.friendshipStatus,
  });

  int pk;
  String pkId;
  String username;
  String? fullName;
  bool isPrivate;
  bool isVerified;
  String profilePicId;
  String profilePicUrl;
  double? fbidV2;
  IgArtistFriendshipStatus? friendshipStatus;

  factory IgArtistClass.fromJson(Map<String, dynamic> json) => IgArtistClass(
    pk: json["pk"],
    pkId: json["pk_id"],
    username: json["username"],
    fullName: json["full_name"],
    isPrivate: json["is_private"],
    isVerified: json["is_verified"],
    profilePicId: json["profile_pic_id"],
    profilePicUrl: json["profile_pic_url"],
    fbidV2: json["fbid_v2"]?.toDouble(),
    friendshipStatus: json["friendship_status"] == null ? null : IgArtistFriendshipStatus.fromJson(json["friendship_status"]),
  );

  Map<String, dynamic> toJson() => {
    "pk": pk,
    "pk_id": pkId,
    "username": username,
    "full_name": fullName,
    "is_private": isPrivate,
    "is_verified": isVerified,
    "profile_pic_id": profilePicId,
    "profile_pic_url": profilePicUrl,
    "fbid_v2": fbidV2,
    "friendship_status": friendshipStatus?.toJson(),
  };
}

class IgArtistFriendshipStatus {
  IgArtistFriendshipStatus({
    required this.following,
    required this.followedBy,
    required this.blocking,
    required this.muting,
    required this.isPrivate,
    required this.incomingRequest,
    required this.outgoingRequest,
    required this.isBestie,
    required this.isRestricted,
    required this.isFeedFavorite,
  });

  bool following;
  bool followedBy;
  bool blocking;
  bool muting;
  bool isPrivate;
  bool incomingRequest;
  bool outgoingRequest;
  bool isBestie;
  bool isRestricted;
  bool isFeedFavorite;

  factory IgArtistFriendshipStatus.fromJson(Map<String, dynamic> json) => IgArtistFriendshipStatus(
    following: json["following"],
    followedBy: json["followed_by"],
    blocking: json["blocking"],
    muting: json["muting"],
    isPrivate: json["is_private"],
    incomingRequest: json["incoming_request"],
    outgoingRequest: json["outgoing_request"],
    isBestie: json["is_bestie"],
    isRestricted: json["is_restricted"],
    isFeedFavorite: json["is_feed_favorite"],
  );

  Map<String, dynamic> toJson() => {
    "following": following,
    "followed_by": followedBy,
    "blocking": blocking,
    "muting": muting,
    "is_private": isPrivate,
    "incoming_request": incomingRequest,
    "outgoing_request": outgoingRequest,
    "is_bestie": isBestie,
    "is_restricted": isRestricted,
    "is_feed_favorite": isFeedFavorite,
  };
}

class ClipsMetadata {
  ClipsMetadata({
    this.musicInfo,
    required this.originalSoundInfo,
    required this.audioType,
    required this.musicCanonicalId,
    this.featuredLabel,
    required this.mashupInfo,
    this.nuxInfo,
    this.viewerInteractionSettings,
    required this.brandedContentTagInfo,
    this.shoppingInfo,
    required this.additionalAudioInfo,
    required this.isSharedToFb,
    this.breakingContentInfo,
    this.challengeInfo,
    this.reelsOnTheRiseInfo,
    this.breakingCreatorInfo,
    this.assetRecommendationInfo,
    this.contextualHighlightInfo,
    required this.clipsCreationEntryPoint,
    required this.audioRankingInfo,
    this.templateInfo,
    required this.isFanClubPromoVideo,
    required this.disableUseInClipsClientCache,
    required this.contentAppreciationInfo,
    required this.achievementsInfo,
    required this.showAchievements,
    required this.showTips,
    this.merchandisingPillInfo,
    required this.isPublicChatWelcomeVideo,
    required this.professionalClipsUpsellType,
  });

  dynamic musicInfo;
  OriginalSoundInfo originalSoundInfo;
  String audioType;
  String musicCanonicalId;
  dynamic featuredLabel;
  MashupInfo mashupInfo;
  dynamic nuxInfo;
  dynamic viewerInteractionSettings;
  BrandedContentTagInfo brandedContentTagInfo;
  dynamic shoppingInfo;
  AdditionalAudioInfo additionalAudioInfo;
  bool isSharedToFb;
  dynamic breakingContentInfo;
  dynamic challengeInfo;
  dynamic reelsOnTheRiseInfo;
  dynamic breakingCreatorInfo;
  dynamic assetRecommendationInfo;
  dynamic contextualHighlightInfo;
  String clipsCreationEntryPoint;
  AudioRankingInfo audioRankingInfo;
  dynamic templateInfo;
  bool isFanClubPromoVideo;
  bool disableUseInClipsClientCache;
  ContentAppreciationInfo contentAppreciationInfo;
  AchievementsInfo achievementsInfo;
  bool showAchievements;
  bool showTips;
  dynamic merchandisingPillInfo;
  bool isPublicChatWelcomeVideo;
  int professionalClipsUpsellType;

  factory ClipsMetadata.fromJson(Map<String, dynamic> json) => ClipsMetadata(
    musicInfo: json["music_info"],
    originalSoundInfo: OriginalSoundInfo.fromJson(json["original_sound_info"]),
    audioType: json["audio_type"],
    musicCanonicalId: json["music_canonical_id"],
    featuredLabel: json["featured_label"],
    mashupInfo: MashupInfo.fromJson(json["mashup_info"]),
    nuxInfo: json["nux_info"],
    viewerInteractionSettings: json["viewer_interaction_settings"],
    brandedContentTagInfo: BrandedContentTagInfo.fromJson(json["branded_content_tag_info"]),
    shoppingInfo: json["shopping_info"],
    additionalAudioInfo: AdditionalAudioInfo.fromJson(json["additional_audio_info"]),
    isSharedToFb: json["is_shared_to_fb"],
    breakingContentInfo: json["breaking_content_info"],
    challengeInfo: json["challenge_info"],
    reelsOnTheRiseInfo: json["reels_on_the_rise_info"],
    breakingCreatorInfo: json["breaking_creator_info"],
    assetRecommendationInfo: json["asset_recommendation_info"],
    contextualHighlightInfo: json["contextual_highlight_info"],
    clipsCreationEntryPoint: json["clips_creation_entry_point"],
    audioRankingInfo: AudioRankingInfo.fromJson(json["audio_ranking_info"]),
    templateInfo: json["template_info"],
    isFanClubPromoVideo: json["is_fan_club_promo_video"],
    disableUseInClipsClientCache: json["disable_use_in_clips_client_cache"],
    contentAppreciationInfo: ContentAppreciationInfo.fromJson(json["content_appreciation_info"]),
    achievementsInfo: AchievementsInfo.fromJson(json["achievements_info"]),
    showAchievements: json["show_achievements"],
    showTips: json["show_tips"],
    merchandisingPillInfo: json["merchandising_pill_info"],
    isPublicChatWelcomeVideo: json["is_public_chat_welcome_video"],
    professionalClipsUpsellType: json["professional_clips_upsell_type"],
  );

  Map<String, dynamic> toJson() => {
    "music_info": musicInfo,
    "original_sound_info": originalSoundInfo.toJson(),
    "audio_type": audioType,
    "music_canonical_id": musicCanonicalId,
    "featured_label": featuredLabel,
    "mashup_info": mashupInfo.toJson(),
    "nux_info": nuxInfo,
    "viewer_interaction_settings": viewerInteractionSettings,
    "branded_content_tag_info": brandedContentTagInfo.toJson(),
    "shopping_info": shoppingInfo,
    "additional_audio_info": additionalAudioInfo.toJson(),
    "is_shared_to_fb": isSharedToFb,
    "breaking_content_info": breakingContentInfo,
    "challenge_info": challengeInfo,
    "reels_on_the_rise_info": reelsOnTheRiseInfo,
    "breaking_creator_info": breakingCreatorInfo,
    "asset_recommendation_info": assetRecommendationInfo,
    "contextual_highlight_info": contextualHighlightInfo,
    "clips_creation_entry_point": clipsCreationEntryPoint,
    "audio_ranking_info": audioRankingInfo.toJson(),
    "template_info": templateInfo,
    "is_fan_club_promo_video": isFanClubPromoVideo,
    "disable_use_in_clips_client_cache": disableUseInClipsClientCache,
    "content_appreciation_info": contentAppreciationInfo.toJson(),
    "achievements_info": achievementsInfo.toJson(),
    "show_achievements": showAchievements,
    "show_tips": showTips,
    "merchandising_pill_info": merchandisingPillInfo,
    "is_public_chat_welcome_video": isPublicChatWelcomeVideo,
    "professional_clips_upsell_type": professionalClipsUpsellType,
  };
}

class AchievementsInfo {
  AchievementsInfo({
    required this.showAchievements,
    this.numEarnedAchievements,
  });

  bool showAchievements;
  dynamic numEarnedAchievements;

  factory AchievementsInfo.fromJson(Map<String, dynamic> json) => AchievementsInfo(
    showAchievements: json["show_achievements"],
    numEarnedAchievements: json["num_earned_achievements"],
  );

  Map<String, dynamic> toJson() => {
    "show_achievements": showAchievements,
    "num_earned_achievements": numEarnedAchievements,
  };
}

class AdditionalAudioInfo {
  AdditionalAudioInfo({
    this.additionalAudioUsername,
    required this.audioReattributionInfo,
  });

  dynamic additionalAudioUsername;
  AudioReattributionInfo audioReattributionInfo;

  factory AdditionalAudioInfo.fromJson(Map<String, dynamic> json) => AdditionalAudioInfo(
    additionalAudioUsername: json["additional_audio_username"],
    audioReattributionInfo: AudioReattributionInfo.fromJson(json["audio_reattribution_info"]),
  );

  Map<String, dynamic> toJson() => {
    "additional_audio_username": additionalAudioUsername,
    "audio_reattribution_info": audioReattributionInfo.toJson(),
  };
}

class AudioReattributionInfo {
  AudioReattributionInfo({
    required this.shouldAllowRestore,
  });

  bool shouldAllowRestore;

  factory AudioReattributionInfo.fromJson(Map<String, dynamic> json) => AudioReattributionInfo(
    shouldAllowRestore: json["should_allow_restore"],
  );

  Map<String, dynamic> toJson() => {
    "should_allow_restore": shouldAllowRestore,
  };
}

class AudioRankingInfo {
  AudioRankingInfo({
    required this.bestAudioClusterId,
  });

  String bestAudioClusterId;

  factory AudioRankingInfo.fromJson(Map<String, dynamic> json) => AudioRankingInfo(
    bestAudioClusterId: json["best_audio_cluster_id"],
  );

  Map<String, dynamic> toJson() => {
    "best_audio_cluster_id": bestAudioClusterId,
  };
}

class BrandedContentTagInfo {
  BrandedContentTagInfo({
    required this.canAddTag,
  });

  bool canAddTag;

  factory BrandedContentTagInfo.fromJson(Map<String, dynamic> json) => BrandedContentTagInfo(
    canAddTag: json["can_add_tag"],
  );

  Map<String, dynamic> toJson() => {
    "can_add_tag": canAddTag,
  };
}

class ContentAppreciationInfo {
  ContentAppreciationInfo({
    required this.enabled,
  });

  bool enabled;

  factory ContentAppreciationInfo.fromJson(Map<String, dynamic> json) => ContentAppreciationInfo(
    enabled: json["enabled"],
  );

  Map<String, dynamic> toJson() => {
    "enabled": enabled,
  };
}

class MashupInfo {
  MashupInfo({
    required this.mashupsAllowed,
    required this.canToggleMashupsAllowed,
    required this.hasBeenMashedUp,
    this.formattedMashupsCount,
    this.originalMedia,
    this.privacyFilteredMashupsMediaCount,
    this.nonPrivacyFilteredMashupsMediaCount,
    this.mashupType,
    required this.isCreatorRequestingMashup,
    required this.hasNonmimicableAdditionalAudio,
  });

  bool mashupsAllowed;
  bool canToggleMashupsAllowed;
  bool hasBeenMashedUp;
  dynamic formattedMashupsCount;
  dynamic originalMedia;
  dynamic privacyFilteredMashupsMediaCount;
  dynamic nonPrivacyFilteredMashupsMediaCount;
  dynamic mashupType;
  bool isCreatorRequestingMashup;
  bool hasNonmimicableAdditionalAudio;

  factory MashupInfo.fromJson(Map<String, dynamic> json) => MashupInfo(
    mashupsAllowed: json["mashups_allowed"],
    canToggleMashupsAllowed: json["can_toggle_mashups_allowed"],
    hasBeenMashedUp: json["has_been_mashed_up"],
    formattedMashupsCount: json["formatted_mashups_count"],
    originalMedia: json["original_media"],
    privacyFilteredMashupsMediaCount: json["privacy_filtered_mashups_media_count"],
    nonPrivacyFilteredMashupsMediaCount: json["non_privacy_filtered_mashups_media_count"],
    mashupType: json["mashup_type"],
    isCreatorRequestingMashup: json["is_creator_requesting_mashup"],
    hasNonmimicableAdditionalAudio: json["has_nonmimicable_additional_audio"],
  );

  Map<String, dynamic> toJson() => {
    "mashups_allowed": mashupsAllowed,
    "can_toggle_mashups_allowed": canToggleMashupsAllowed,
    "has_been_mashed_up": hasBeenMashedUp,
    "formatted_mashups_count": formattedMashupsCount,
    "original_media": originalMedia,
    "privacy_filtered_mashups_media_count": privacyFilteredMashupsMediaCount,
    "non_privacy_filtered_mashups_media_count": nonPrivacyFilteredMashupsMediaCount,
    "mashup_type": mashupType,
    "is_creator_requesting_mashup": isCreatorRequestingMashup,
    "has_nonmimicable_additional_audio": hasNonmimicableAdditionalAudio,
  };
}

class OriginalSoundInfo {
  OriginalSoundInfo({
    required this.audioAssetId,
    this.musicCanonicalId,
    required this.progressiveDownloadUrl,
    required this.durationInMs,
    required this.igArtist,
    required this.shouldMuteAudio,
    required this.hideRemixing,
    required this.originalMediaId,
    required this.timeCreated,
    required this.originalAudioTitle,
    required this.consumptionInfo,
    required this.canRemixBeSharedToFb,
    this.formattedClipsMediaCount,
    required this.allowCreatorToRename,
    required this.audioParts,
    required this.isExplicit,
    required this.originalAudioSubtype,
    required this.isAudioAutomaticallyAttributed,
    required this.isReuseDisabled,
    required this.isXpostFromFb,
    this.xpostFbCreatorInfo,
  });

  int audioAssetId;
  dynamic musicCanonicalId;
  String progressiveDownloadUrl;
  int durationInMs;
  IgArtistClass igArtist;
  bool shouldMuteAudio;
  bool hideRemixing;
  double originalMediaId;
  int timeCreated;
  String originalAudioTitle;
  ConsumptionInfo consumptionInfo;
  bool canRemixBeSharedToFb;
  dynamic formattedClipsMediaCount;
  bool allowCreatorToRename;
  List<dynamic> audioParts;
  bool isExplicit;
  String originalAudioSubtype;
  bool isAudioAutomaticallyAttributed;
  bool isReuseDisabled;
  bool isXpostFromFb;
  dynamic xpostFbCreatorInfo;

  factory OriginalSoundInfo.fromJson(Map<String, dynamic> json) => OriginalSoundInfo(
    audioAssetId: json["audio_asset_id"],
    musicCanonicalId: json["music_canonical_id"],
    progressiveDownloadUrl: json["progressive_download_url"],
    durationInMs: json["duration_in_ms"],
    igArtist: IgArtistClass.fromJson(json["ig_artist"]),
    shouldMuteAudio: json["should_mute_audio"],
    hideRemixing: json["hide_remixing"],
    originalMediaId: json["original_media_id"]?.toDouble(),
    timeCreated: json["time_created"],
    originalAudioTitle: json["original_audio_title"],
    consumptionInfo: ConsumptionInfo.fromJson(json["consumption_info"]),
    canRemixBeSharedToFb: json["can_remix_be_shared_to_fb"],
    formattedClipsMediaCount: json["formatted_clips_media_count"],
    allowCreatorToRename: json["allow_creator_to_rename"],
    audioParts: List<dynamic>.from(json["audio_parts"].map((x) => x)),
    isExplicit: json["is_explicit"],
    originalAudioSubtype: json["original_audio_subtype"],
    isAudioAutomaticallyAttributed: json["is_audio_automatically_attributed"],
    isReuseDisabled: json["is_reuse_disabled"],
    isXpostFromFb: json["is_xpost_from_fb"],
    xpostFbCreatorInfo: json["xpost_fb_creator_info"],
  );

  Map<String, dynamic> toJson() => {
    "audio_asset_id": audioAssetId,
    "music_canonical_id": musicCanonicalId,
    "progressive_download_url": progressiveDownloadUrl,
    "duration_in_ms": durationInMs,
    "ig_artist": igArtist.toJson(),
    "should_mute_audio": shouldMuteAudio,
    "hide_remixing": hideRemixing,
    "original_media_id": originalMediaId,
    "time_created": timeCreated,
    "original_audio_title": originalAudioTitle,
    "consumption_info": consumptionInfo.toJson(),
    "can_remix_be_shared_to_fb": canRemixBeSharedToFb,
    "formatted_clips_media_count": formattedClipsMediaCount,
    "allow_creator_to_rename": allowCreatorToRename,
    "audio_parts": List<dynamic>.from(audioParts.map((x) => x)),
    "is_explicit": isExplicit,
    "original_audio_subtype": originalAudioSubtype,
    "is_audio_automatically_attributed": isAudioAutomaticallyAttributed,
    "is_reuse_disabled": isReuseDisabled,
    "is_xpost_from_fb": isXpostFromFb,
    "xpost_fb_creator_info": xpostFbCreatorInfo,
  };
}

class ConsumptionInfo {
  ConsumptionInfo({
    required this.isBookmarked,
    required this.shouldMuteAudioReason,
    required this.isTrendingInClips,
    this.shouldMuteAudioReasonType,
    this.displayMediaId,
  });

  bool isBookmarked;
  String shouldMuteAudioReason;
  bool isTrendingInClips;
  dynamic shouldMuteAudioReasonType;
  dynamic displayMediaId;

  factory ConsumptionInfo.fromJson(Map<String, dynamic> json) => ConsumptionInfo(
    isBookmarked: json["is_bookmarked"],
    shouldMuteAudioReason: json["should_mute_audio_reason"],
    isTrendingInClips: json["is_trending_in_clips"],
    shouldMuteAudioReasonType: json["should_mute_audio_reason_type"],
    displayMediaId: json["display_media_id"],
  );

  Map<String, dynamic> toJson() => {
    "is_bookmarked": isBookmarked,
    "should_mute_audio_reason": shouldMuteAudioReason,
    "is_trending_in_clips": isTrendingInClips,
    "should_mute_audio_reason_type": shouldMuteAudioReasonType,
    "display_media_id": displayMediaId,
  };
}

class CommentInformTreatment {
  CommentInformTreatment({
    required this.shouldHaveInformTreatment,
    required this.text,
    this.url,
    this.actionType,
  });

  bool shouldHaveInformTreatment;
  String text;
  dynamic url;
  dynamic actionType;

  factory CommentInformTreatment.fromJson(Map<String, dynamic> json) => CommentInformTreatment(
    shouldHaveInformTreatment: json["should_have_inform_treatment"],
    text: json["text"],
    url: json["url"],
    actionType: json["action_type"],
  );

  Map<String, dynamic> toJson() => {
    "should_have_inform_treatment": shouldHaveInformTreatment,
    "text": text,
    "url": url,
    "action_type": actionType,
  };
}

class ImageVersions2 {
  ImageVersions2({
    required this.candidates,
    required this.additionalCandidates,
    required this.smartThumbnailEnabled,
  });

  List<FirstFrame> candidates;
  AdditionalCandidates additionalCandidates;
  bool smartThumbnailEnabled;

  factory ImageVersions2.fromJson(Map<String, dynamic> json) => ImageVersions2(
    candidates: List<FirstFrame>.from(json["candidates"].map((x) => FirstFrame.fromJson(x))),
    additionalCandidates: AdditionalCandidates.fromJson(json["additional_candidates"]),
    smartThumbnailEnabled: json["smart_thumbnail_enabled"],
  );

  Map<String, dynamic> toJson() => {
    "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
    "additional_candidates": additionalCandidates.toJson(),
    "smart_thumbnail_enabled": smartThumbnailEnabled,
  };
}

class AdditionalCandidates {
  AdditionalCandidates({
    required this.igtvFirstFrame,
    required this.firstFrame,
    this.smartFrame,
  });

  FirstFrame igtvFirstFrame;
  FirstFrame firstFrame;
  dynamic smartFrame;

  factory AdditionalCandidates.fromJson(Map<String, dynamic> json) => AdditionalCandidates(
    igtvFirstFrame: FirstFrame.fromJson(json["igtv_first_frame"]),
    firstFrame: FirstFrame.fromJson(json["first_frame"]),
    smartFrame: json["smart_frame"],
  );

  Map<String, dynamic> toJson() => {
    "igtv_first_frame": igtvFirstFrame.toJson(),
    "first_frame": firstFrame.toJson(),
    "smart_frame": smartFrame,
  };
}

class FirstFrame {
  FirstFrame({
    required this.width,
    required this.height,
    required this.url,
  });

  int width;
  int height;
  String url;

  factory FirstFrame.fromJson(Map<String, dynamic> json) => FirstFrame(
    width: json["width"],
    height: json["height"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "width": width,
    "height": height,
    "url": url,
  };
}

class MediaCroppingInfo {
  MediaCroppingInfo({
    this.feedPreviewCrop,
    required this.squareCrop,
    this.threeByFourPreviewCrop,
  });

  dynamic feedPreviewCrop;
  SquareCrop squareCrop;
  dynamic threeByFourPreviewCrop;

  factory MediaCroppingInfo.fromJson(Map<String, dynamic> json) => MediaCroppingInfo(
    feedPreviewCrop: json["feed_preview_crop"],
    squareCrop: SquareCrop.fromJson(json["square_crop"]),
    threeByFourPreviewCrop: json["three_by_four_preview_crop"],
  );

  Map<String, dynamic> toJson() => {
    "feed_preview_crop": feedPreviewCrop,
    "square_crop": squareCrop.toJson(),
    "three_by_four_preview_crop": threeByFourPreviewCrop,
  };
}

class SquareCrop {
  SquareCrop({
    required this.cropBottom,
    required this.cropLeft,
    required this.cropRight,
    required this.cropTop,
  });

  double cropBottom;
  int cropLeft;
  int cropRight;
  double cropTop;

  factory SquareCrop.fromJson(Map<String, dynamic> json) => SquareCrop(
    cropBottom: json["crop_bottom"]?.toDouble(),
    cropLeft: json["crop_left"],
    cropRight: json["crop_right"],
    cropTop: json["crop_top"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "crop_bottom": cropBottom,
    "crop_left": cropLeft,
    "crop_right": cropRight,
    "crop_top": cropTop,
  };
}

class SharingFrictionInfo {
  SharingFrictionInfo({
    required this.shouldHaveSharingFriction,
    this.bloksAppUrl,
    this.sharingFrictionPayload,
  });

  bool shouldHaveSharingFriction;
  dynamic bloksAppUrl;
  dynamic sharingFrictionPayload;

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) => SharingFrictionInfo(
    shouldHaveSharingFriction: json["should_have_sharing_friction"],
    bloksAppUrl: json["bloks_app_url"],
    sharingFrictionPayload: json["sharing_friction_payload"],
  );

  Map<String, dynamic> toJson() => {
    "should_have_sharing_friction": shouldHaveSharingFriction,
    "bloks_app_url": bloksAppUrl,
    "sharing_friction_payload": sharingFrictionPayload,
  };
}

class ItemUser {
  ItemUser({
    required this.pk,
    required this.pkId,
    required this.username,
    required this.fullName,
    required this.isPrivate,
    required this.isVerified,
    required this.friendshipStatus,
    required this.profilePicId,
    required this.profilePicUrl,
    required this.hasAnonymousProfilePicture,
    required this.fanClubInfo,
    required this.transparencyProductEnabled,
    required this.latestReelMedia,
    required this.isFavorite,
    required this.isUnpublished,
    required this.accountBadges,
  });

  int pk;
  String pkId;
  String username;
  String fullName;
  bool isPrivate;
  bool isVerified;
  PurpleFriendshipStatus friendshipStatus;
  String profilePicId;
  String profilePicUrl;
  bool hasAnonymousProfilePicture;
  FanClubInfo fanClubInfo;
  bool transparencyProductEnabled;
  int latestReelMedia;
  bool isFavorite;
  bool isUnpublished;
  List<dynamic> accountBadges;

  factory ItemUser.fromJson(Map<String, dynamic> json) => ItemUser(
    pk: json["pk"],
    pkId: json["pk_id"],
    username: json["username"],
    fullName: json["full_name"],
    isPrivate: json["is_private"],
    isVerified: json["is_verified"],
    friendshipStatus: PurpleFriendshipStatus.fromJson(json["friendship_status"]),
    profilePicId: json["profile_pic_id"],
    profilePicUrl: json["profile_pic_url"],
    hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
    fanClubInfo: FanClubInfo.fromJson(json["fan_club_info"]),
    transparencyProductEnabled: json["transparency_product_enabled"],
    latestReelMedia: json["latest_reel_media"],
    isFavorite: json["is_favorite"],
    isUnpublished: json["is_unpublished"],
    accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "pk": pk,
    "pk_id": pkId,
    "username": username,
    "full_name": fullName,
    "is_private": isPrivate,
    "is_verified": isVerified,
    "friendship_status": friendshipStatus.toJson(),
    "profile_pic_id": profilePicId,
    "profile_pic_url": profilePicUrl,
    "has_anonymous_profile_picture": hasAnonymousProfilePicture,
    "fan_club_info": fanClubInfo.toJson(),
    "transparency_product_enabled": transparencyProductEnabled,
    "latest_reel_media": latestReelMedia,
    "is_favorite": isFavorite,
    "is_unpublished": isUnpublished,
    "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
  };
}

class FanClubInfo {
  FanClubInfo({
    this.fanClubId,
    this.fanClubName,
    this.isFanClubReferralEligible,
    this.fanConsiderationPageRevampEligiblity,
    this.isFanClubGiftingEligible,
  });

  dynamic fanClubId;
  dynamic fanClubName;
  dynamic isFanClubReferralEligible;
  dynamic fanConsiderationPageRevampEligiblity;
  dynamic isFanClubGiftingEligible;

  factory FanClubInfo.fromJson(Map<String, dynamic> json) => FanClubInfo(
    fanClubId: json["fan_club_id"],
    fanClubName: json["fan_club_name"],
    isFanClubReferralEligible: json["is_fan_club_referral_eligible"],
    fanConsiderationPageRevampEligiblity: json["fan_consideration_page_revamp_eligiblity"],
    isFanClubGiftingEligible: json["is_fan_club_gifting_eligible"],
  );

  Map<String, dynamic> toJson() => {
    "fan_club_id": fanClubId,
    "fan_club_name": fanClubName,
    "is_fan_club_referral_eligible": isFanClubReferralEligible,
    "fan_consideration_page_revamp_eligiblity": fanConsiderationPageRevampEligiblity,
    "is_fan_club_gifting_eligible": isFanClubGiftingEligible,
  };
}

class PurpleFriendshipStatus {
  PurpleFriendshipStatus({
    required this.following,
    required this.outgoingRequest,
    required this.isBestie,
    required this.isRestricted,
    required this.isFeedFavorite,
  });

  bool following;
  bool outgoingRequest;
  bool isBestie;
  bool isRestricted;
  bool isFeedFavorite;

  factory PurpleFriendshipStatus.fromJson(Map<String, dynamic> json) => PurpleFriendshipStatus(
    following: json["following"],
    outgoingRequest: json["outgoing_request"],
    isBestie: json["is_bestie"],
    isRestricted: json["is_restricted"],
    isFeedFavorite: json["is_feed_favorite"],
  );

  Map<String, dynamic> toJson() => {
    "following": following,
    "outgoing_request": outgoingRequest,
    "is_bestie": isBestie,
    "is_restricted": isRestricted,
    "is_feed_favorite": isFeedFavorite,
  };
}

class Usertags {
  Usertags({
    required this.usertagsIn,
  });

  List<In> usertagsIn;

  factory Usertags.fromJson(Map<String, dynamic> json) => Usertags(
    usertagsIn: List<In>.from(json["in"].map((x) => In.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "in": List<dynamic>.from(usertagsIn.map((x) => x.toJson())),
  };
}

class In {
  In({
    required this.user,
    required this.position,
    this.startTimeInVideoInSec,
    this.durationInVideoInSec,
  });

  IgArtistClass user;
  List<int> position;
  dynamic startTimeInVideoInSec;
  dynamic durationInVideoInSec;

  factory In.fromJson(Map<String, dynamic> json) => In(
    user: IgArtistClass.fromJson(json["user"]),
    position: List<int>.from(json["position"].map((x) => x)),
    startTimeInVideoInSec: json["start_time_in_video_in_sec"],
    durationInVideoInSec: json["duration_in_video_in_sec"],
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "position": List<dynamic>.from(position.map((x) => x)),
    "start_time_in_video_in_sec": startTimeInVideoInSec,
    "duration_in_video_in_sec": durationInVideoInSec,
  };
}

class VideoVersion {
  VideoVersion({
    required this.type,
    required this.width,
    required this.height,
    required this.url,
    required this.id,
  });

  int type;
  int width;
  int height;
  String url;
  String id;

  factory VideoVersion.fromJson(Map<String, dynamic> json) => VideoVersion(
    type: json["type"],
    width: json["width"],
    height: json["height"],
    url: json["url"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "width": width,
    "height": height,
    "url": url,
    "id": id,
  };
}
