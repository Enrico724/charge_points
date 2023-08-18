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
  /// ID
  int id;

  /// Charge Point ID
  int chargePointId;

  /// Comment Type ID
  int commentTypeId;

  /// Category for a user comment, e.g. General Comment, Fault Report (Notice To Users And Operator)
  UserCommentType? userCommentType;

  /// User Name
  String userName;

  /// Comment
  String? comment;

  /// Related URL
  String? relatedUrl;

  /// Date Created
  DateTime dateCreated;

  /// Short public summary profile for a specific Open Charge Map user
  UserInfo? user;

  /// Checkin Status Type ID
  int? checkinStatusTypeId;

  /// Classification for the users comment or experience using a specific charging location.
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
  /// ID
  int id;

  /// Title
  String title;

  /// If true, checkin or comment was provided by an automated system.
  bool? isAutomatedCheckin;

  /// If true, this type of checkin/comment is considered positive.
  bool? isPositive;

  CheckinStatusType.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'],
        isAutomatedCheckin = json['IsAutomatedCheckin'],
        isPositive = json['IsPositive'];
}

class UserCommentType {
  /// ID
  int id;

  /// Title
  String title;

  UserCommentType.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'];
}
