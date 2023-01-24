/*
// To parse this JSON data, do
//
//     final instagramDataModel = instagramDataModelFromJson(jsonString);

import 'dart:convert';

InstagramDataModel? instagramDataModelFromJson(String str) => InstagramDataModel.fromJson(json.decode(str));

String instagramDataModelToJson(InstagramDataModel? data) => json.encode(data!.toJson());

class InstagramDataModel {
  InstagramDataModel({
    this.followsCount,
    this.mediaCount,
    this.businessDiscovery,
    this.id,
  });

  int? followsCount;
  int? mediaCount;
  BusinessDiscovery? businessDiscovery;
  String? id;

  factory InstagramDataModel.fromJson(Map<String, dynamic> json) => InstagramDataModel(
    followsCount: json["follows_count"],
    mediaCount: json["media_count"],
    businessDiscovery: BusinessDiscovery.fromJson(json["business_discovery"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "follows_count": followsCount,
    "media_count": mediaCount,
    "business_discovery": businessDiscovery!.toJson(),
    "id": id,
  };
}

class BusinessDiscovery {
  BusinessDiscovery({
    this.followersCount,
    this.mediaCount,
    this.media,
    this.id,
  });

  int? followersCount;
  int? mediaCount;
  Media? media;
  String? id;

  factory BusinessDiscovery.fromJson(Map<String, dynamic> json) => BusinessDiscovery(
    followersCount: json["followers_count"],
    mediaCount: json["media_count"],
    media: Media.fromJson(json["media"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "followers_count": followersCount,
    "media_count": mediaCount,
    "media": media!.toJson(),
    "id": id,
  };
}

class Media {
  Media({
    this.data,
    this.paging,
  });

  List<Datum?>? data;
  Paging? paging;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    data: json["data"] == null ? [] : List<Datum?>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    paging: Paging.fromJson(json["paging"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())),
    "paging": paging!.toJson(),
  };
}

class Datum {
  Datum({
    this.mediaUrl,
    this.likeCount,
    this.commentsCount,
    this.mediaType,
    this.id,
  });

  String? mediaUrl;
  int? likeCount;
  int? commentsCount;
  MediaType? mediaType;
  String? id;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    mediaUrl: json["media_url"],
    likeCount: json["like_count"],
    commentsCount: json["comments_count"],
    mediaType: mediaTypeValues.map[json["media_type"]],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "media_url": mediaUrl,
    "like_count": likeCount,
    "comments_count": commentsCount,
    "media_type": mediaTypeValues.reverse![mediaType],
    "id": id,
  };
}

enum MediaType { VIDEO, CAROUSEL_ALBUM, IMAGE }

final mediaTypeValues = EnumValues({
  "CAROUSEL_ALBUM": MediaType.CAROUSEL_ALBUM,
  "IMAGE": MediaType.IMAGE,
  "VIDEO": MediaType.VIDEO
});

class Paging {
  Paging({
    this.cursors,
  });

  Cursors? cursors;

  factory Paging.fromJson(Map<String, dynamic> json) => Paging(
    cursors: Cursors.fromJson(json["cursors"]),
  );

  Map<String, dynamic> toJson() => {
    "cursors": cursors!.toJson(),
  };
}

class Cursors {
  Cursors({
    this.after,
  });

  String? after;

  factory Cursors.fromJson(Map<String, dynamic> json) => Cursors(
    after: json["after"],
  );

  Map<String, dynamic> toJson() => {
    "after": after,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
*/



// To parse this JSON data, do
//
//     final instagramDataModel = instagramDataModelFromJson(jsonString);

import 'dart:convert';

InstagramDataModel instagramDataModelFromJson(String str) => InstagramDataModel.fromJson(json.decode(str));

String instagramDataModelToJson(InstagramDataModel data) => json.encode(data.toJson());

class InstagramDataModel {
  InstagramDataModel({
    required this.graphql,
    required this.showQrModal,
  });

  Graphql graphql;
  bool showQrModal;

  factory InstagramDataModel.fromJson(Map<String, dynamic> json) => InstagramDataModel(
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
    required this.mediaPreview,
    required this.displayUrl,
    required this.displayResources,
    this.accessibilityCaption,
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
    required this.edgeRelatedProfiles,
    required this.viewCount
  });

  Typename typename;
  dynamic id;
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
  dynamic takenAtTimestamp;
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
  ShortcodeMediaOwner owner;
  bool isAd;
  EdgeMediaToCaptionClass edgeWebMediaToRelatedMedia;
  List<dynamic> coauthorProducers;
  List<dynamic> pinnedForUsers;
  EdgeRelatedProfiles edgeRelatedProfiles;
  dynamic viewCount;

  factory ShortcodeMedia.fromJson(Map<String, dynamic> json) => ShortcodeMedia(
    typename: typenameValues.map[json["__typename"]]!,
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
    owner: ShortcodeMediaOwner.fromJson(json["owner"]),
    isAd: json["is_ad"],
    edgeWebMediaToRelatedMedia: EdgeMediaToCaptionClass.fromJson(json["edge_web_media_to_related_media"]),
    coauthorProducers: List<dynamic>.from(json["coauthor_producers"].map((x) => x)),
    pinnedForUsers: List<dynamic>.from(json["pinned_for_users"].map((x) => x)),
    edgeRelatedProfiles: EdgeRelatedProfiles.fromJson(json["edge_related_profiles"]),
    viewCount: json["view_count"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typenameValues.reverse[typename],
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
    "coauthor_producers": List<dynamic>.from(coauthorProducers.map((x) => x)),
    "pinned_for_users": List<dynamic>.from(pinnedForUsers.map((x) => x)),
    "edge_related_profiles": edgeRelatedProfiles.toJson(),
    'view_count' :viewCount
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

  dynamic count;
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

  dynamic count;
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
  PurpleOwner owner;
  bool viewerHasLiked;
  EdgeFollowedByClass edgeLikedBy;
  bool isRestrictedPending;
  EdgeMediaToParentCommentClass? edgeThreadedComments;

  factory PurpleNode.fromJson(Map<String, dynamic> json) => PurpleNode(
    id: json["id"],
    text: json["text"],
    createdAt: json["created_at"],
    didReportAsSpam: json["did_report_as_spam"],
    owner: PurpleOwner.fromJson(json["owner"]),
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

  dynamic count;

  factory EdgeFollowedByClass.fromJson(Map<String, dynamic> json) => EdgeFollowedByClass(
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
  };
}

class PurpleOwner {
  PurpleOwner({
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  dynamic id;
  bool isVerified;
  dynamic profilePicUrl;
  dynamic username;

  factory PurpleOwner.fromJson(Map<String, dynamic> json) => PurpleOwner(
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
  double x;
  double y;

  factory TentacledNode.fromJson(Map<String, dynamic> json) => TentacledNode(
    user: User.fromJson(json["user"]),
    x: json["x"]?.toDouble(),
    y: json["y"]?.toDouble(),
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

class EdgeRelatedProfiles {
  EdgeRelatedProfiles({
    required this.edges,
  });

  List<EdgeRelatedProfilesEdge> edges;

  factory EdgeRelatedProfiles.fromJson(Map<String, dynamic> json) => EdgeRelatedProfiles(
    edges: List<EdgeRelatedProfilesEdge>.from(json["edges"].map((x) => EdgeRelatedProfilesEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeRelatedProfilesEdge {
  EdgeRelatedProfilesEdge({
    required this.node,
  });

  StickyNode node;

  factory EdgeRelatedProfilesEdge.fromJson(Map<String, dynamic> json) => EdgeRelatedProfilesEdge(
    node: StickyNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class StickyNode {
  StickyNode({
    required this.id,
    required this.fullName,
    required this.isPrivate,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
    required this.edgeFollowedBy,
    required this.edgeOwnerToTimelineMedia,
  });

  dynamic id;
  dynamic fullName;
  bool isPrivate;
  bool isVerified;
  dynamic profilePicUrl;
  dynamic username;
  EdgeFollowedByClass edgeFollowedBy;
  EdgeOwnerToTimelineMedia edgeOwnerToTimelineMedia;

  factory StickyNode.fromJson(Map<String, dynamic> json) => StickyNode(
    id: json["id"],
    fullName: json["full_name"],
    isPrivate: json["is_private"],
    isVerified: json["is_verified"],
    profilePicUrl: json["profile_pic_url"],
    username: json["username"],
    edgeFollowedBy: EdgeFollowedByClass.fromJson(json["edge_followed_by"]),
    edgeOwnerToTimelineMedia: EdgeOwnerToTimelineMedia.fromJson(json["edge_owner_to_timeline_media"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "full_name": fullName,
    "is_private": isPrivate,
    "is_verified": isVerified,
    "profile_pic_url": profilePicUrl,
    "username": username,
    "edge_followed_by": edgeFollowedBy.toJson(),
    "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia.toJson(),
  };
}

class EdgeOwnerToTimelineMedia {
  EdgeOwnerToTimelineMedia({
    required this.count,
    required this.edges,
  });

  int count;
  List<EdgeOwnerToTimelineMediaEdge> edges;

  factory EdgeOwnerToTimelineMedia.fromJson(Map<String, dynamic> json) => EdgeOwnerToTimelineMedia(
    count: json["count"],
    edges: List<EdgeOwnerToTimelineMediaEdge>.from(json["edges"].map((x) => EdgeOwnerToTimelineMediaEdge.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
  };
}

class EdgeOwnerToTimelineMediaEdge {
  EdgeOwnerToTimelineMediaEdge({
    required this.node,
  });

  IndigoNode node;

  factory EdgeOwnerToTimelineMediaEdge.fromJson(Map<String, dynamic> json) => EdgeOwnerToTimelineMediaEdge(
    node: IndigoNode.fromJson(json["node"]),
  );

  Map<String, dynamic> toJson() => {
    "node": node.toJson(),
  };
}

class IndigoNode {
  IndigoNode({
    required this.typename,
    required this.id,
    required this.shortcode,
    required this.edgeMediaPreviewLike,
    required this.edgeMediaPreviewComment,
    required this.thumbnailSrc,
    required this.owner,
    this.gatingInfo,
    required this.sharingFrictionInfo,
    this.mediaOverlayInfo,
    required this.isVideo,
    this.accessibilityCaption,
  });

  Typename typename;
  dynamic id;
  dynamic shortcode;
  EdgeFollowedByClass edgeMediaPreviewLike;
  EdgeFollowedByClass edgeMediaPreviewComment;
  dynamic thumbnailSrc;
  FluffyOwner owner;
  dynamic gatingInfo;
  SharingFrictionInfo sharingFrictionInfo;
  dynamic mediaOverlayInfo;
  bool isVideo;
  dynamic accessibilityCaption;

  factory IndigoNode.fromJson(Map<String, dynamic> json) => IndigoNode(
    typename: typenameValues.map[json["__typename"]]!,
    id: json["id"],
    shortcode: json["shortcode"],
    edgeMediaPreviewLike: EdgeFollowedByClass.fromJson(json["edge_media_preview_like"]),
    edgeMediaPreviewComment: EdgeFollowedByClass.fromJson(json["edge_media_preview_comment"]),
    thumbnailSrc: json["thumbnail_src"],
    owner: FluffyOwner.fromJson(json["owner"]),
    gatingInfo: json["gating_info"],
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    mediaOverlayInfo: json["media_overlay_info"],
    isVideo: json["is_video"],
    accessibilityCaption: json["accessibility_caption"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typenameValues.reverse[typename],
    "id": id,
    "shortcode": shortcode,
    "edge_media_preview_like": edgeMediaPreviewLike.toJson(),
    "edge_media_preview_comment": edgeMediaPreviewComment.toJson(),
    "thumbnail_src": thumbnailSrc,
    "owner": owner.toJson(),
    "gating_info": gatingInfo,
    "sharing_friction_info": sharingFrictionInfo.toJson(),
    "media_overlay_info": mediaOverlayInfo,
    "is_video": isVideo,
    "accessibility_caption": accessibilityCaption,
  };
}

class FluffyOwner {
  FluffyOwner({
    required this.id,
    required this.username,
  });

  dynamic id;
  dynamic username;

  factory FluffyOwner.fromJson(Map<String, dynamic> json) => FluffyOwner(
    id: json["id"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
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

enum Typename { GRAPH_SIDECAR, GRAPH_IMAGE, GRAPH_VIDEO }

final typenameValues = EnumValues({
  "GraphImage": Typename.GRAPH_IMAGE,
  "GraphSidecar": Typename.GRAPH_SIDECAR,
  "GraphVideo": Typename.GRAPH_VIDEO
});

class ShortcodeMediaOwner {
  ShortcodeMediaOwner({
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

  factory ShortcodeMediaOwner.fromJson(Map<String, dynamic> json) => ShortcodeMediaOwner(
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

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}


// To parse this JSON data, do
//
//     final instagramDataModel = instagramDataModelFromJson(jsonString);

/*
import 'dart:convert';

InstagramDataModel instagramDataModelFromJson(String str) => InstagramDataModel.fromJson(json.decode(str));

String instagramDataModelToJson(InstagramDataModel data) => json.encode(data.toJson());

class InstagramDataModel {
  InstagramDataModel({
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

  factory InstagramDataModel.fromJson(Map<String, dynamic> json) => InstagramDataModel(
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
    required this.nextMaxId,
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
    required this.canViewerSave,
    required this.isInProfileGrid,
    required this.profileGridControlEnabled,
    required this.organicTrackingToken,
    required this.hasSharedToFb,
    required this.productType,
    required this.deletedReason,
    required this.integrityReviewDecision,
    this.commerceIntegrityReviewDecision,
    required this.musicMetadata,
    required this.isArtistPick,
    required this.canViewMorePreviewComments,
    required this.hideViewAllCommentEntrypoint,
    required this.inlineComposerDisplayCondition,
    required this.commentCount,
    required this.comments,
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
  double nextMaxId;
  List<Caption> previewComments;
  bool photoOfYou;
  Usertags usertags;
  bool isOrganicProductTaggingEligible;
  bool canSeeInsightsAsBrand;
  ItemUser user;
  bool canViewerReshare;
  int likeCount;
  bool hasLiked;
  List<String> topLikers;
  List<dynamic> facepileTopLikers;
  ImageVersions2 imageVersions2;
  int originalWidth;
  int originalHeight;
  Caption caption;
  CommentInformTreatment commentInformTreatment;
  SharingFrictionInfo sharingFrictionInfo;
  bool canViewerSave;
  bool isInProfileGrid;
  bool profileGridControlEnabled;
  String organicTrackingToken;
  int hasSharedToFb;
  String productType;
  int deletedReason;
  String integrityReviewDecision;
  dynamic commerceIntegrityReviewDecision;
  MusicMetadata musicMetadata;
  bool isArtistPick;
  bool canViewMorePreviewComments;
  bool hideViewAllCommentEntrypoint;
  String inlineComposerDisplayCondition;
  int commentCount;
  List<Caption> comments;

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
    nextMaxId: json["next_max_id"]?.toDouble(),
    previewComments: List<Caption>.from(json["preview_comments"].map((x) => Caption.fromJson(x))),
    photoOfYou: json["photo_of_you"],
    usertags: Usertags.fromJson(json["usertags"]),
    isOrganicProductTaggingEligible: json["is_organic_product_tagging_eligible"],
    canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
    user: ItemUser.fromJson(json["user"]),
    canViewerReshare: json["can_viewer_reshare"],
    likeCount: json["like_count"],
    hasLiked: json["has_liked"],
    topLikers: List<String>.from(json["top_likers"].map((x) => x)),
    facepileTopLikers: List<dynamic>.from(json["facepile_top_likers"].map((x) => x)),
    imageVersions2: ImageVersions2.fromJson(json["image_versions2"]),
    originalWidth: json["original_width"],
    originalHeight: json["original_height"],
    caption: Caption.fromJson(json["caption"]),
    commentInformTreatment: CommentInformTreatment.fromJson(json["comment_inform_treatment"]),
    sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
    canViewerSave: json["can_viewer_save"],
    isInProfileGrid: json["is_in_profile_grid"],
    profileGridControlEnabled: json["profile_grid_control_enabled"],
    organicTrackingToken: json["organic_tracking_token"],
    hasSharedToFb: json["has_shared_to_fb"],
    productType: json["product_type"],
    deletedReason: json["deleted_reason"],
    integrityReviewDecision: json["integrity_review_decision"],
    commerceIntegrityReviewDecision: json["commerce_integrity_review_decision"],
    musicMetadata: MusicMetadata.fromJson(json["music_metadata"]),
    isArtistPick: json["is_artist_pick"],
    canViewMorePreviewComments: json["can_view_more_preview_comments"],
    hideViewAllCommentEntrypoint: json["hide_view_all_comment_entrypoint"],
    inlineComposerDisplayCondition: json["inline_composer_display_condition"],
    commentCount: json["comment_count"],
    comments: List<Caption>.from(json["comments"].map((x) => Caption.fromJson(x))),
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
    "next_max_id": nextMaxId,
    "preview_comments": List<dynamic>.from(previewComments.map((x) => x.toJson())),
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
    "can_viewer_save": canViewerSave,
    "is_in_profile_grid": isInProfileGrid,
    "profile_grid_control_enabled": profileGridControlEnabled,
    "organic_tracking_token": organicTrackingToken,
    "has_shared_to_fb": hasSharedToFb,
    "product_type": productType,
    "deleted_reason": deletedReason,
    "integrity_review_decision": integrityReviewDecision,
    "commerce_integrity_review_decision": commerceIntegrityReviewDecision,
    "music_metadata": musicMetadata.toJson(),
    "is_artist_pick": isArtistPick,
    "can_view_more_preview_comments": canViewMorePreviewComments,
    "hide_view_all_comment_entrypoint": hideViewAllCommentEntrypoint,
    "inline_composer_display_condition": inlineComposerDisplayCondition,
    "comment_count": commentCount,
    "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
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
    this.hasLikedComment,
    this.commentLikeCount,
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
  CaptionUser user;
  bool isCovered;
  bool isRankedComment;
  double mediaId;
  int privateReplyStatus;
  bool? hasLikedComment;
  int? commentLikeCount;

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
    user: CaptionUser.fromJson(json["user"]),
    isCovered: json["is_covered"],
    isRankedComment: json["is_ranked_comment"],
    mediaId: json["media_id"]?.toDouble(),
    privateReplyStatus: json["private_reply_status"],
    hasLikedComment: json["has_liked_comment"],
    commentLikeCount: json["comment_like_count"],
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
    "has_liked_comment": hasLikedComment,
    "comment_like_count": commentLikeCount,
  };
}

class CaptionUser {
  CaptionUser({
    required this.pk,
    required this.pkId,
    required this.username,
    required this.fullName,
    required this.isPrivate,
    required this.isVerified,
    required this.profilePicId,
    required this.profilePicUrl,
    this.fbidV2,
  });

  int pk;
  String pkId;
  String username;
  String fullName;
  bool isPrivate;
  bool isVerified;
  String profilePicId;
  String profilePicUrl;
  double? fbidV2;

  factory CaptionUser.fromJson(Map<String, dynamic> json) => CaptionUser(
    pk: json["pk"],
    pkId: json["pk_id"],
    username: json["username"],
    fullName: json["full_name"],
    isPrivate: json["is_private"],
    isVerified: json["is_verified"],
    profilePicId: json["profile_pic_id"],
    profilePicUrl: json["profile_pic_url"],
    fbidV2: json["fbid_v2"]?.toDouble(),
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
  });

  List<Candidate> candidates;

  factory ImageVersions2.fromJson(Map<String, dynamic> json) => ImageVersions2(
    candidates: List<Candidate>.from(json["candidates"].map((x) => Candidate.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
  };
}

class Candidate {
  Candidate({
    required this.width,
    required this.height,
    required this.url,
  });

  int width;
  int height;
  String url;

  factory Candidate.fromJson(Map<String, dynamic> json) => Candidate(
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

class MusicMetadata {
  MusicMetadata({
    required this.musicCanonicalId,
    required this.audioType,
    required this.musicInfo,
    this.originalSoundInfo,
    required this.pinnedMediaIds,
  });

  String musicCanonicalId;
  String audioType;
  MusicInfo musicInfo;
  dynamic originalSoundInfo;
  List<dynamic> pinnedMediaIds;

  factory MusicMetadata.fromJson(Map<String, dynamic> json) => MusicMetadata(
    musicCanonicalId: json["music_canonical_id"],
    audioType: json["audio_type"],
    musicInfo: MusicInfo.fromJson(json["music_info"]),
    originalSoundInfo: json["original_sound_info"],
    pinnedMediaIds: List<dynamic>.from(json["pinned_media_ids"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "music_canonical_id": musicCanonicalId,
    "audio_type": audioType,
    "music_info": musicInfo.toJson(),
    "original_sound_info": originalSoundInfo,
    "pinned_media_ids": List<dynamic>.from(pinnedMediaIds.map((x) => x)),
  };
}

class MusicInfo {
  MusicInfo({
    required this.musicAssetInfo,
    required this.musicConsumptionInfo,
    this.musicCanonicalId,
  });

  MusicAssetInfo musicAssetInfo;
  MusicConsumptionInfo musicConsumptionInfo;
  dynamic musicCanonicalId;

  factory MusicInfo.fromJson(Map<String, dynamic> json) => MusicInfo(
    musicAssetInfo: MusicAssetInfo.fromJson(json["music_asset_info"]),
    musicConsumptionInfo: MusicConsumptionInfo.fromJson(json["music_consumption_info"]),
    musicCanonicalId: json["music_canonical_id"],
  );

  Map<String, dynamic> toJson() => {
    "music_asset_info": musicAssetInfo.toJson(),
    "music_consumption_info": musicConsumptionInfo.toJson(),
    "music_canonical_id": musicCanonicalId,
  };
}

class MusicAssetInfo {
  MusicAssetInfo({
    required this.audioClusterId,
    required this.id,
    required this.title,
    this.sanitizedTitle,
    required this.subtitle,
    required this.displayArtist,
    required this.artistId,
    required this.coverArtworkUri,
    required this.coverArtworkThumbnailUri,
    required this.progressiveDownloadUrl,
    this.reactiveAudioDownloadUrl,
    required this.fastStartProgressiveDownloadUrl,
    required this.web30SPreviewDownloadUrl,
    required this.highlightStartTimesInMs,
    required this.isExplicit,
    this.dashManifest,
    required this.hasLyrics,
    required this.audioAssetId,
    required this.durationInMs,
    this.darkMessage,
    required this.allowsSaving,
    required this.territoryValidityPeriods,
    this.igUsername,
  });

  String audioClusterId;
  String id;
  String title;
  dynamic sanitizedTitle;
  String subtitle;
  String displayArtist;
  String artistId;
  String coverArtworkUri;
  String coverArtworkThumbnailUri;
  String progressiveDownloadUrl;
  dynamic reactiveAudioDownloadUrl;
  String fastStartProgressiveDownloadUrl;
  String web30SPreviewDownloadUrl;
  List<int> highlightStartTimesInMs;
  bool isExplicit;
  dynamic dashManifest;
  bool hasLyrics;
  String audioAssetId;
  int durationInMs;
  dynamic darkMessage;
  bool allowsSaving;
  TerritoryValidityPeriods territoryValidityPeriods;
  dynamic igUsername;

  factory MusicAssetInfo.fromJson(Map<String, dynamic> json) => MusicAssetInfo(
    audioClusterId: json["audio_cluster_id"],
    id: json["id"],
    title: json["title"],
    sanitizedTitle: json["sanitized_title"],
    subtitle: json["subtitle"],
    displayArtist: json["display_artist"],
    artistId: json["artist_id"],
    coverArtworkUri: json["cover_artwork_uri"],
    coverArtworkThumbnailUri: json["cover_artwork_thumbnail_uri"],
    progressiveDownloadUrl: json["progressive_download_url"],
    reactiveAudioDownloadUrl: json["reactive_audio_download_url"],
    fastStartProgressiveDownloadUrl: json["fast_start_progressive_download_url"],
    web30SPreviewDownloadUrl: json["web_30s_preview_download_url"],
    highlightStartTimesInMs: List<int>.from(json["highlight_start_times_in_ms"].map((x) => x)),
    isExplicit: json["is_explicit"],
    dashManifest: json["dash_manifest"],
    hasLyrics: json["has_lyrics"],
    audioAssetId: json["audio_asset_id"],
    durationInMs: json["duration_in_ms"],
    darkMessage: json["dark_message"],
    allowsSaving: json["allows_saving"],
    territoryValidityPeriods: TerritoryValidityPeriods.fromJson(json["territory_validity_periods"]),
    igUsername: json["ig_username"],
  );

  Map<String, dynamic> toJson() => {
    "audio_cluster_id": audioClusterId,
    "id": id,
    "title": title,
    "sanitized_title": sanitizedTitle,
    "subtitle": subtitle,
    "display_artist": displayArtist,
    "artist_id": artistId,
    "cover_artwork_uri": coverArtworkUri,
    "cover_artwork_thumbnail_uri": coverArtworkThumbnailUri,
    "progressive_download_url": progressiveDownloadUrl,
    "reactive_audio_download_url": reactiveAudioDownloadUrl,
    "fast_start_progressive_download_url": fastStartProgressiveDownloadUrl,
    "web_30s_preview_download_url": web30SPreviewDownloadUrl,
    "highlight_start_times_in_ms": List<dynamic>.from(highlightStartTimesInMs.map((x) => x)),
    "is_explicit": isExplicit,
    "dash_manifest": dashManifest,
    "has_lyrics": hasLyrics,
    "audio_asset_id": audioAssetId,
    "duration_in_ms": durationInMs,
    "dark_message": darkMessage,
    "allows_saving": allowsSaving,
    "territory_validity_periods": territoryValidityPeriods.toJson(),
    "ig_username": igUsername,
  };
}

class TerritoryValidityPeriods {
  TerritoryValidityPeriods();

  factory TerritoryValidityPeriods.fromJson(Map<String, dynamic> json) => TerritoryValidityPeriods(
  );

  Map<String, dynamic> toJson() => {
  };
}

class MusicConsumptionInfo {
  MusicConsumptionInfo({
    this.igArtist,
    required this.placeholderProfilePicUrl,
    required this.shouldMuteAudio,
    required this.shouldMuteAudioReason,
    this.shouldMuteAudioReasonType,
    required this.isBookmarked,
    required this.overlapDurationInMs,
    required this.audioAssetStartTimeInMs,
    required this.allowMediaCreationWithMusic,
    required this.isTrendingInClips,
    this.formattedClipsMediaCount,
    this.streamingServices,
    this.displayLabels,
    required this.shouldAllowMusicEditing,
  });

  dynamic igArtist;
  String placeholderProfilePicUrl;
  bool shouldMuteAudio;
  String shouldMuteAudioReason;
  dynamic shouldMuteAudioReasonType;
  bool isBookmarked;
  int overlapDurationInMs;
  int audioAssetStartTimeInMs;
  bool allowMediaCreationWithMusic;
  bool isTrendingInClips;
  dynamic formattedClipsMediaCount;
  dynamic streamingServices;
  dynamic displayLabels;
  bool shouldAllowMusicEditing;

  factory MusicConsumptionInfo.fromJson(Map<String, dynamic> json) => MusicConsumptionInfo(
    igArtist: json["ig_artist"],
    placeholderProfilePicUrl: json["placeholder_profile_pic_url"],
    shouldMuteAudio: json["should_mute_audio"],
    shouldMuteAudioReason: json["should_mute_audio_reason"],
    shouldMuteAudioReasonType: json["should_mute_audio_reason_type"],
    isBookmarked: json["is_bookmarked"],
    overlapDurationInMs: json["overlap_duration_in_ms"],
    audioAssetStartTimeInMs: json["audio_asset_start_time_in_ms"],
    allowMediaCreationWithMusic: json["allow_media_creation_with_music"],
    isTrendingInClips: json["is_trending_in_clips"],
    formattedClipsMediaCount: json["formatted_clips_media_count"],
    streamingServices: json["streaming_services"],
    displayLabels: json["display_labels"],
    shouldAllowMusicEditing: json["should_allow_music_editing"],
  );

  Map<String, dynamic> toJson() => {
    "ig_artist": igArtist,
    "placeholder_profile_pic_url": placeholderProfilePicUrl,
    "should_mute_audio": shouldMuteAudio,
    "should_mute_audio_reason": shouldMuteAudioReason,
    "should_mute_audio_reason_type": shouldMuteAudioReasonType,
    "is_bookmarked": isBookmarked,
    "overlap_duration_in_ms": overlapDurationInMs,
    "audio_asset_start_time_in_ms": audioAssetStartTimeInMs,
    "allow_media_creation_with_music": allowMediaCreationWithMusic,
    "is_trending_in_clips": isTrendingInClips,
    "formatted_clips_media_count": formattedClipsMediaCount,
    "streaming_services": streamingServices,
    "display_labels": displayLabels,
    "should_allow_music_editing": shouldAllowMusicEditing,
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
  bool isPrivate;
  bool isVerified;
  FriendshipStatus friendshipStatus;
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
    isPrivate: json["is_private"],
    isVerified: json["is_verified"],
    friendshipStatus: FriendshipStatus.fromJson(json["friendship_status"]),
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

class FriendshipStatus {
  FriendshipStatus({
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

  factory FriendshipStatus.fromJson(Map<String, dynamic> json) => FriendshipStatus(
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

  CaptionUser user;
  List<double> position;
  dynamic startTimeInVideoInSec;
  dynamic durationInVideoInSec;

  factory In.fromJson(Map<String, dynamic> json) => In(
    user: CaptionUser.fromJson(json["user"]),
    position: List<double>.from(json["position"].map((x) => x?.toDouble())),
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

*/
