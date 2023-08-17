import 'package:charge_points/src/model/user_info.dart';

class MediaItem {
  int id;
  String chargePointId;
  String itemURL;
  String itemThumbnailURL;
  String comment;
  bool isEnabled;
  bool isVideo;
  bool isFeaturedItem;
  bool isExternalResource;
  UserInfo user;
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
        dateCreated = json['DateCreated'];
}
