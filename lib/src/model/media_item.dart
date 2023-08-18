import 'dart:convert';

import 'package:charge_points/src/model/user_info.dart';

class MediaItems {
  static List<MediaItem> fromJson(dynamic json) {
    if (json.runtimeType == Null) return [];
    final data = json is Iterable ? json : jsonDecode(json) as Iterable;
    return data.map((e) => MediaItem.fromJson(e)).toList();
  }
}

class MediaItem {
  /// ID
  int id;

  /// Charge Point ID
  int chargePointId;

  /// Item URL
  String itemURL;

  /// Item Thumbnail URL
  String itemThumbnailURL;

  /// Comment
  String comment;

  /// Check if is Enabled
  bool isEnabled;

  /// Check if is Video
  bool isVideo;

  /// Check if is a Featured Item
  bool isFeaturedItem;

  /// Check if is External Resource
  bool isExternalResource;

  /// Short public summary profile for a specific Open Charge Map user
  UserInfo user;

  /// Date Created
  DateTime dateCreated;

  MediaItem.fromJson(Map json)
      : id = json['ID'],
        chargePointId = json['ChargePointID'],
        itemURL = json['ItemURL'],
        itemThumbnailURL = json['ItemThumbnailURL'],
        comment = json['Comment'],
        isEnabled = json['IsEnabled'],
        isVideo = json['IsVideo'],
        isFeaturedItem = json['IsFeaturedItem'],
        isExternalResource = json['IsExternalResource'],
        user = UserInfo.fromJson(json['User']),
        dateCreated = DateTime.parse(json['DateCreated']);
}
