// To parse this JSON data, do
//
//     final instagramReelDataModel = instagramReelDataModelFromJson(jsonString);

import 'dart:convert';

InstagramReelDataModel instagramReelDataModelFromJson(String str) => InstagramReelDataModel.fromJson(json.decode(str));

String instagramReelDataModelToJson(InstagramReelDataModel data) => json.encode(data.toJson());

class InstagramReelDataModel {
  InstagramReelDataModel({
    required this.graphql,
    required this.showQrModal,
  });

  Graphql graphql;
  bool showQrModal;

  factory InstagramReelDataModel.fromJson(Map<String, dynamic> json) => InstagramReelDataModel(
    graphql: Graphql.fromJson(json["graphql"]),
    showQrModal: json["showQRModal"],
  );

  Map<String, dynamic> toJson() => {
    "graphql": graphql.toJson(),
    "showQRModal": showQrModal,
  };
}

class Graphql {
  Graphql({
    required this.shortcodeMedia,
  });

  ShortcodeMedia shortcodeMedia;

  factory Graphql.fromJson(Map<String, dynamic> json) => Graphql(
    shortcodeMedia: ShortcodeMedia.fromJson(json["shortcode_media"]),
  );

  Map<String, dynamic> toJson() => {
    "shortcode_media": shortcodeMedia.toJson(),
  };
}

class ShortcodeMedia {
  ShortcodeMedia({
    required this.typename,
    required this.id,
    required this.shortcode,
    required this.dimensions,
    this.gatingInfo,
    this.factCheckOverallRating,
    this.factCheckInformation,
    this.sensitivityFrictionInfo,
    required this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    this.mediaPreview,
    required this.displayUrl,
    required this.displayResources,
    this.accessibilityCaption,
    required this.dashInfo,
    required this.hasAudio,
    required this.videoUrl,
    required this.videoViewCount,
    required this.videoPlayCount,
    required this.isVideo,
    required this.trackingToken,
    this.upcomingEvent,
    required this.edgeMediaToTaggedUser,
    required this.edgeMediaToCaption,
    required this.canSeeInsightsAsBrand,
    required this.captionIsEdited,
    required this.hasRankedComments,
    required this.likeAndViewCountsDisabled,
    required this.edgeMediaToParentComment,
    required this.edgeMediaToHoistedComment,
    required this.edgeMediaPreviewComment,
    required this.commentsDisabled,
    required this.commentingDisabledForViewer,
    required this.takenAtTimestamp,
    required this.edgeMediaPreviewLike,
    required this.edgeMediaToSponsorUser,
    required this.isAffiliate,
    required this.isPaidPartnership,
    this.location,
    this.nftAssetInfo,
    required this.viewerHasLiked,
    required this.viewerHasSaved,
    required this.viewerHasSavedToCollection,
    required this.viewerInPhotoOfYou,
    required this.viewerCanReshare,
    required this.owner,
    required this.isAd,
    required this.edgeWebMediaToRelatedMedia,
    required this.coauthorProducers,
    required this.pinnedForUsers,
    this.encodingStatus,
    required this.isPublished,
    required this.productType,
    required this.title,
    required this.videoDuration,
    required this.thumbnailSrc,
    // required this.clipsMusicAttributionInfo,
    required this.edgeRelatedProfiles,
  });

  dynamic typename;
  String id;
  dynamic shortcode;
  Dimensions dimensions;
  dynamic gatingInfo;
  dynamic factCheckOverallRating;
  dynamic factCheckInformation;
  dynamic sensitivityFrictionInfo;
  SharingFrictionInfo sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  dynamic mediaPreview;
  dynamic displayUrl;
  List<DisplayResource> displayResources;
  dynamic accessibilityCaption;
  DashInfo dashInfo;
  bool hasAudio;
  dynamic videoUrl;
  dynamic videoViewCount;
  dynamic videoPlayCount;
  bool isVideo;
  dynamic trackingToken;
  dynamic upcomingEvent;
  EdgeMediaToTaggedUser edgeMediaToTaggedUser;
  EdgeMediaToCaptionClass edgeMediaToCaption;
  bool canSeeInsightsAsBrand;
  bool captionIsEdited;
  bool hasRankedComments;
  bool likeAndViewCountsDisabled;
  EdgeMediaToParentCommentClass edgeMediaToParentComment;
  EdgeMediaToCaptionClass edgeMediaToHoistedComment;
  EdgeMediaPreview edgeMediaPreviewComment;
  bool commentsDisabled;
  bool commentingDisabledForViewer;
  int takenAtTimestamp;
  EdgeMediaPreview edgeMediaPreviewLike;
  EdgeMediaToCaptionClass edgeMediaToSponsorUser;
  bool isAffiliate;
  bool isPaidPartnership;
  dynamic location;
  dynamic nftAssetInfo;
  bool viewerHasLiked;
  bool viewerHasSaved;
  bool viewerHasSavedToCollection;
  bool viewerInPhotoOfYou;
  bool viewerCanReshare;
  Owner owner;
  bool isAd;
  EdgeMediaToCaptionClass edgeWebMediaToRelatedMedia;
  List<CoauthorProducer> coauthorProducers;
  List<dynamic> pinnedForUsers;
  dynamic encodingStatus;
  bool isPublished;
  dynamic productType;
  dynamic title;
  double videoDuration;
  String thumbnailSrc;
  // ClipsMusicAttributionInfo clipsMusicAttributionInfo;
  EdgeMediaToCaptionClass edgeRelatedProfiles;

  factory ShortcodeMedia.fromJson(Map<String, dynamic> json) => ShortcodeMedia(
    typename: json["__typename"],
    id: json["id"],
    shortcode: json["shortcode"],
    dimensions: Dimensions.fromJson(json["dimensions"]),
    gatingInfo: json["gating_info"],
    factCheckOverallRating: json["fact_check_overall_rating"],
    factCheckInformation: json["fact_check_information"],
    sensitivityFrictionInfo: json["sensitivity_friction_info"],
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    mediaOverlayInfo: json["media_overlay_info"],
    mediaPreview: json["media_preview"],
    displayUrl: json["display_url"],
    displayResources: List<DisplayResource>.from(json["display_resources"].map((x) => DisplayResource.fromJson(x))),
    accessibilityCaption: json["accessibility_caption"],
    dashInfo: DashInfo.fromJson(json["dash_info"]),
    hasAudio: json["has_audio"],
    videoUrl: json["video_url"],
    videoViewCount: json["video_view_count"],
    videoPlayCount: json["video_play_count"],
    isVideo: json["is_video"],
    trackingToken: json["tracking_token"],
    upcomingEvent: json["upcoming_event"],
    edgeMediaToTaggedUser: EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]),
    edgeMediaToCaption: EdgeMediaToCaptionClass.fromJson(json["edge_media_to_caption"]),
    canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
    captionIsEdited: json["caption_is_edited"],
    hasRankedComments: json["has_ranked_comments"],
    likeAndViewCountsDisabled: json["like_and_view_counts_disabled"],
    edgeMediaToParentComment: EdgeMediaToParentCommentClass.fromJson(json["edge_media_to_parent_comment"]),
    edgeMediaToHoistedComment: EdgeMediaToCaptionClass.fromJson(json["edge_media_to_hoisted_comment"]),
    edgeMediaPreviewComment: EdgeMediaPreview.fromJson(json["edge_media_preview_comment"]),
    commentsDisabled: json["comments_disabled"],
    commentingDisabledForViewer: json["commenting_disabled_for_viewer"],
    takenAtTimestamp: json["taken_at_timestamp"],
    edgeMediaPreviewLike: EdgeMediaPreview.fromJson(json["edge_media_preview_like"]),
    edgeMediaToSponsorUser: EdgeMediaToCaptionClass.fromJson(json["edge_media_to_sponsor_user"]),
    isAffiliate: json["is_affiliate"],
    isPaidPartnership: json["is_paid_partnership"],
    location: json["location"],
    nftAssetInfo: json["nft_asset_info"],
    viewerHasLiked: json["viewer_has_liked"],
    viewerHasSaved: json["viewer_has_saved"],
    viewerHasSavedToCollection: json["viewer_has_saved_to_collection"],
    viewerInPhotoOfYou: json["viewer_in_photo_of_you"],
    viewerCanReshare: json["viewer_can_reshare"],
    owner: Owner.fromJson(json["owner"]),
    isAd: json["is_ad"],
    edgeWebMediaToRelatedMedia: EdgeMediaToCaptionClass.fromJson(json["edge_web_media_to_related_media"]),
    coauthorProducers: List<CoauthorProducer>.from(json["coauthor_producers"].map((x) => CoauthorProducer.fromJson(x))),
    pinnedForUsers: List<dynamic>.from(json["pinned_for_users"].map((x) => x)),
    encodingStatus: json["encoding_status"],
    isPublished: json["is_published"],
    productType: json["product_type"],
    title: json["title"],
    videoDuration: json["video_duration"]?.toDouble(),
    thumbnailSrc: json["thumbnail_src"],
    // clipsMusicAttributionInfo: ClipsMusicAttributionInfo.fromJson(json["clips_music_attribution_info"]),
    edgeRelatedProfiles: EdgeMediaToCaptionClass.fromJson(json["edge_related_profiles"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "id": id,
    "shortcode": shortcode,
    "dimensions": dimensions.toJson(),
    "gating_info": gatingInfo,
    "fact_check_overall_rating": factCheckOverallRating,
    "fact_check_information": factCheckInformation,
    "sensitivity_friction_info": sensitivityFrictionInfo,
    "sharing_friction_info": sharingFrictionInfo.toJson(),
    "media_overlay_info": mediaOverlayInfo,
    "media_preview": mediaPreview,
    "display_url": displayUrl,
    "display_resources": List<dynamic>.from(displayResources.map((x) => x.toJson())),
    "accessibility_caption": accessibilityCaption,
    "dash_info": dashInfo.toJson(),
    "has_audio": hasAudio,
    "video_url": videoUrl,
    "video_view_count": videoViewCount,
    "video_play_count": videoPlayCount,
    "is_video": isVideo,
    "tracking_token": trackingToken,
    "upcoming_event": upcomingEvent,
    "edge_media_to_tagged_user": edgeMediaToTaggedUser.toJson(),
    "edge_media_to_caption": edgeMediaToCaption.toJson(),
    "can_see_insights_as_brand": canSeeInsightsAsBrand,
    "caption_is_edited": captionIsEdited,
    "has_ranked_comments": hasRankedComments,
    "like_and_view_counts_disabled": likeAndViewCountsDisabled,
    "edge_media_to_parent_comment": edgeMediaToParentComment.toJson(),
    "edge_media_to_hoisted_comment": edgeMediaToHoistedComment.toJson(),
    "edge_media_preview_comment": edgeMediaPreviewComment.toJson(),
    "comments_disabled": commentsDisabled,
    "commenting_disabled_for_viewer": commentingDisabledForViewer,
    "taken_at_timestamp": takenAtTimestamp,
    "edge_media_preview_like": edgeMediaPreviewLike.toJson(),
    "edge_media_to_sponsor_user": edgeMediaToSponsorUser.toJson(),
    "is_affiliate": isAffiliate,
    "is_paid_partnership": isPaidPartnership,
    "location": location,
    "nft_asset_info": nftAssetInfo,
    "viewer_has_liked": viewerHasLiked,
    "viewer_has_saved": viewerHasSaved,
    "viewer_has_saved_to_collection": viewerHasSavedToCollection,
    "viewer_in_photo_of_you": viewerInPhotoOfYou,
    "viewer_can_reshare": viewerCanReshare,
    "owner": owner.toJson(),
    "is_ad": isAd,
    "edge_web_media_to_related_media": edgeWebMediaToRelatedMedia.toJson(),
    "coauthor_producers": List<dynamic>.from(coauthorProducers.map((x) => x.toJson())),
    "pinned_for_users": List<dynamic>.from(pinnedForUsers.map((x) => x)),
    "encoding_status": encodingStatus,
    "is_published": isPublished,
    "product_type": productType,
    "title": title,
    "video_duration": videoDuration,
    "thumbnail_src": thumbnailSrc,
    // "clips_music_attribution_info": clipsMusicAttributionInfo.toJson(),
    "edge_related_profiles": edgeRelatedProfiles.toJson(),
  };
}

class ClipsMusicAttributionInfo {
  ClipsMusicAttributionInfo({
    required this.artistName,
    required this.songName,
    required this.usesOriginalAudio,
    required this.shouldMuteAudio,
    required this.shouldMuteAudioReason,
    required this.audioId,
  });

  dynamic artistName;
  dynamic songName;
  bool usesOriginalAudio;
  bool shouldMuteAudio;
  dynamic shouldMuteAudioReason;
  dynamic audioId;

  factory ClipsMusicAttributionInfo.fromJson(Map<String, dynamic> json) => ClipsMusicAttributionInfo(
    artistName: json["artist_name"],
    songName: json["song_name"],
    usesOriginalAudio: json["uses_original_audio"],
    shouldMuteAudio: json["should_mute_audio"],
    shouldMuteAudioReason: json["should_mute_audio_reason"],
    audioId: json["audio_id"],
  );

  Map<String, dynamic> toJson() => {
    "artist_name": artistName,
    "song_name": songName,
    "uses_original_audio": usesOriginalAudio,
    "should_mute_audio": shouldMuteAudio,
    "should_mute_audio_reason": shouldMuteAudioReason,
    "audio_id": audioId,
  };
}

class CoauthorProducer {
  CoauthorProducer({
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  dynamic id;
  bool isVerified;
  dynamic profilePicUrl;
  dynamic username;

  factory CoauthorProducer.fromJson(Map<String, dynamic> json) => CoauthorProducer(
    id: json["id"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
  };
}

class DashInfo {
  DashInfo({
    required this.isDashEligible,
    this.videoDashManifest,
    required this.numberOfQualities,
  });

  bool isDashEligible;
  dynamic videoDashManifest;
  int numberOfQualities;

  factory DashInfo.fromJson(Map<String, dynamic> json) => DashInfo(
    isDashEligible: json["is_dash_eligible"],
    videoDashManifest: json["video_dash_manifest"],
    numberOfQualities: json["number_of_qualities"],
  );

  Map<String, dynamic> toJson() => {
    "is_dash_eligible": isDashEligible,
    "video_dash_manifest": videoDashManifest,
    "number_of_qualities": numberOfQualities,
  };
}

class Dimensions {
  Dimensions({
    required this.height,
    required this.width,
  });

  dynamic height;
  dynamic width;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    height: json["height"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "width": width,
  };
}

class DisplayResource {
  DisplayResource({
    required this.src,
    required this.configWidth,
    required this.configHeight,
  });

  dynamic src;
  dynamic configWidth;
  dynamic configHeight;

  factory DisplayResource.fromJson(Map<String, dynamic> json) => DisplayResource(
    src: json["src"],
    configWidth: json["config_width"],
    configHeight: json["config_height"],
  );

  Map<String, dynamic> toJson() => {
    "src": src,
    "config_width": configWidth,
    "config_height": configHeight,
  };
}

class EdgeMediaPreview {
  EdgeMediaPreview({
    required this.count,
    required this.edges,
  });

  int count;
  List<EdgeMediaPreviewCommentEdge> edges;

  factory EdgeMediaPreview.fromJson(Map<String, dynamic> json) => EdgeMediaPreview(
    count: json["count"],
    edges: List<EdgeMediaPreviewCommentEdge>.from(json["edges"].map((x) => EdgeMediaPreviewCommentEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeMediaToParentCommentClass {
  EdgeMediaToParentCommentClass({
    required this.count,
    required this.pageInfo,
    required this.edges,
  });

  int count;
  PageInfo pageInfo;
  List<EdgeMediaPreviewCommentEdge> edges;

  factory EdgeMediaToParentCommentClass.fromJson(Map<String, dynamic> json) => EdgeMediaToParentCommentClass(
    count: json["count"],
    pageInfo: PageInfo.fromJson(json["page_info"]),
    edges: List<EdgeMediaPreviewCommentEdge>.from(json["edges"].map((x) => EdgeMediaPreviewCommentEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "page_info": pageInfo.toJson(),
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class PurpleNode {
  PurpleNode({
    required this.id,
    required this.text,
    required this.createdAt,
    required this.didReportAsSpam,
    required this.owner,
    required this.viewerHasLiked,
    required this.edgeLikedBy,
    required this.isRestrictedPending,
    this.edgeThreadedComments,
  });

  dynamic id;
  dynamic text;
  dynamic createdAt;
  bool didReportAsSpam;
  CoauthorProducer owner;
  bool viewerHasLiked;
  EdgeFollowedByClass edgeLikedBy;
  bool isRestrictedPending;
  EdgeMediaToParentCommentClass? edgeThreadedComments;

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
    id: json["id"],
    text: json["text"],
    createdAt: json["created_at"],
    didReportAsSpam: json["did_report_as_spam"],
    owner: CoauthorProducer.fromJson(json["owner"]),
    viewerHasLiked: json["viewer_has_liked"],
    edgeLikedBy: EdgeFollowedByClass.fromJson(json["edge_liked_by"]),
    isRestrictedPending: json["is_restricted_pending"],
    edgeThreadedComments: json["edge_threaded_comments"] == null ? null : EdgeMediaToParentCommentClass.fromJson(json["edge_threaded_comments"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": text,
    "created_at": createdAt,
    "did_report_as_spam": didReportAsSpam,
    "owner": owner.toJson(),
    "viewer_has_liked": viewerHasLiked,
    "edge_liked_by": edgeLikedBy.toJson(),
    "is_restricted_pending": isRestrictedPending,
    "edge_threaded_comments": edgeThreadedComments?.toJson(),
  };
}

class EdgeMediaPreviewCommentEdge {
  EdgeMediaPreviewCommentEdge({
    required this.node,
  });

  PurpleNode node;

  factory EdgeMediaPreviewCommentEdge.fromJson(Map<String, dynamic> json) => EdgeMediaPreviewCommentEdge(
    node: PurpleNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class PageInfo {
  PageInfo({
    required this.hasNextPage,
    this.endCursor,
  });

  bool hasNextPage;
  dynamic endCursor;

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
    hasNextPage: json["has_next_page"],
    endCursor: json["end_cursor"],
  );

  Map<String, dynamic> toJson() => {
    "has_next_page": hasNextPage,
    "end_cursor": endCursor,
  };
}

class EdgeFollowedByClass {
  EdgeFollowedByClass({
    required this.count,
  });

  int count;

  factory EdgeFollowedByClass.fromJson(Map<String, dynamic> json) => EdgeFollowedByClass(
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
  };
}

class EdgeMediaToCaptionClass {
  EdgeMediaToCaptionClass({
    required this.edges,
  });

  List<EdgeMediaToCaptionEdge> edges;

  factory EdgeMediaToCaptionClass.fromJson(Map<String, dynamic> json) => EdgeMediaToCaptionClass(
    edges: List<EdgeMediaToCaptionEdge>.from(json["edges"].map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeMediaToCaptionEdge {
  EdgeMediaToCaptionEdge({
    required this.node,
  });

  FluffyNode node;

  factory EdgeMediaToCaptionEdge.fromJson(Map<String, dynamic> json) => EdgeMediaToCaptionEdge(
    node: FluffyNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class FluffyNode {
  FluffyNode({
    required this.createdAt,
    required this.text,
  });

  dynamic createdAt;
  dynamic text;

  factory FluffyNode.fromJson(Map<String, dynamic> json) => FluffyNode(
    createdAt: json["created_at"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "created_at": createdAt,
    "text": text,
  };
}

class EdgeMediaToTaggedUser {
  EdgeMediaToTaggedUser({
    required this.edges,
  });

  List<EdgeMediaToTaggedUserEdge> edges;

  factory EdgeMediaToTaggedUser.fromJson(Map<String, dynamic> json) => EdgeMediaToTaggedUser(
    edges: List<EdgeMediaToTaggedUserEdge>.from(json["edges"].map((x) => EdgeMediaToTaggedUserEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeMediaToTaggedUserEdge {
  EdgeMediaToTaggedUserEdge({
    required this.node,
  });

  TentacledNode node;

  factory EdgeMediaToTaggedUserEdge.fromJson(Map<String, dynamic> json) => EdgeMediaToTaggedUserEdge(
    node: TentacledNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class TentacledNode {
  TentacledNode({
    required this.user,
    required this.x,
    required this.y,
  });

  User user;
  dynamic x;
  dynamic y;

  factory TentacledNode.fromJson(Map<String, dynamic> json) => TentacledNode(
    user: User.fromJson(json["user"]),
    x: json["x"],
    y: json["y"],
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "x": x,
    "y": y,
  };
}

class User {
  User({
    required this.fullName,
    required this.followedByViewer,
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  dynamic fullName;
  bool followedByViewer;
  dynamic id;
  bool isVerified;
  dynamic profilePicUrl;
  dynamic username;

  factory User.fromJson(Map<String, dynamic> json) => User(
    fullName: json["full_name"],
    followedByViewer: json["followed_by_viewer"],
    id: json["id"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "followed_by_viewer": followedByViewer,
    "id": id,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
  };
}

class Owner {
  Owner({
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
    required this.blockedByViewer,
    this.restrictedByViewer,
    required this.followedByViewer,
    required this.fullName,
    required this.hasBlockedViewer,
    required this.isEmbedsDisabled,
    required this.isPrivate,
    required this.isUnpublished,
    required this.requestedByViewer,
    required this.passTieringRecommendation,
    required this.edgeOwnerToTimelineMedia,
    required this.edgeFollowedBy,
  });

  dynamic id;
  bool isVerified;
  dynamic profilePicUrl;
  dynamic username;
  bool blockedByViewer;
  dynamic restrictedByViewer;
  bool followedByViewer;
  dynamic fullName;
  bool hasBlockedViewer;
  bool isEmbedsDisabled;
  bool isPrivate;
  bool isUnpublished;
  bool requestedByViewer;
  bool passTieringRecommendation;
  EdgeFollowedByClass edgeOwnerToTimelineMedia;
  EdgeFollowedByClass edgeFollowedBy;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
    id: json["id"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
    blockedByViewer: json["blocked_by_viewer"],
    restrictedByViewer: json["restricted_by_viewer"],
    followedByViewer: json["followed_by_viewer"],
    fullName: json["full_name"],
    hasBlockedViewer: json["has_blocked_viewer"],
    isEmbedsDisabled: json["is_embeds_disabled"],
    isPrivate: json["is_private"],
    isUnpublished: json["is_unpublished"],
    requestedByViewer: json["requested_by_viewer"],
    passTieringRecommendation: json["pass_tiering_recommendation"],
    edgeOwnerToTimelineMedia: EdgeFollowedByClass.fromJson(json["edge_owner_to_timeline_media"]),
    edgeFollowedBy: EdgeFollowedByClass.fromJson(json["edge_followed_by"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
    "blocked_by_viewer": blockedByViewer,
    "restricted_by_viewer": restrictedByViewer,
    "followed_by_viewer": followedByViewer,
    "full_name": fullName,
    "has_blocked_viewer": hasBlockedViewer,
    "is_embeds_disabled": isEmbedsDisabled,
    "is_private": isPrivate,
    "is_unpublished": isUnpublished,
    "requested_by_viewer": requestedByViewer,
    "pass_tiering_recommendation": passTieringRecommendation,
    "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia.toJson(),
    "edge_followed_by": edgeFollowedBy.toJson(),
  };
}

class SharingFrictionInfo {
  SharingFrictionInfo({
    required this.shouldHaveSharingFriction,
    this.bloksAppUrl,
  });

  bool shouldHaveSharingFriction;
  dynamic bloksAppUrl;

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) => SharingFrictionInfo(
    shouldHaveSharingFriction: json["should_have_sharing_friction"],
    bloksAppUrl: json["bloks_app_url"],
  );

  Map<String, dynamic> toJson() => {
    "should_have_sharing_friction": shouldHaveSharingFriction,
    "bloks_app_url": bloksAppUrl,
  };
}
