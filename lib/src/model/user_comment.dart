import 'dart:convert';

import 'package:charge_points/src/model/user_info.dart';

class UserComments {
  static List<UserComment> fromJson(dynamic json) {
    if (json.runtimeType == Null) return [];
    final data = json is Iterable ? json : jsonDecode(json) as Iterable;
    return data.map((e) => UserComment.fromJson(e)).toList();
  }
}

class UserComment {
  int id;
  int chargePointId;
  int commentTypeId;
  UserCommentType? userCommentType;
  String userName;
  String? comment;
  String? relatedUrl;
  DateTime dateCreated;
  UserInfo? user;
  int? checkinStatusTypeId;
  CheckinStatusType? checkinStatusType;

  UserComment.fromJson(Map json)
      : id = json['ID'],
        chargePointId = json['ChargePointID'],
        commentTypeId = json['CommentTypeID'],
        userCommentType = json['UserCommentType'] == null
            ? null
            : UserCommentType.fromJson(json['UserCommentType']),
        userName = json['UserName'],
        comment = json['Comment'],
        relatedUrl = json['RelatedURL'],
        dateCreated = DateTime.parse(json['DateCreated']),
        user = json['User'] == null ? null : UserInfo.fromJson(json['User']),
        checkinStatusTypeId = json['CheckinStatusTypeID'],
        checkinStatusType = json['CheckinStatusType'] == null
            ? null
            : CheckinStatusType.fromJson(json['CheckinStatusType']);
}

class CheckinStatusType {
  int id;
  String title;
  bool? isAutomatedCheckin;
  bool? isPositive;

  CheckinStatusType.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'],
        isAutomatedCheckin = json['IsAutomatedCheckin'],
        isPositive = json['IsPositive'];
}

class UserCommentType {
  int id;
  String title;

  UserCommentType.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'];
}
