import 'package:charge_points/src/model/user_info.dart';

class UserComment {
  String id;
  int chargePointId;
  int commentTypeId;
  UserCommentType userCommentType;
  String userName;
  String comment;
  String relatedUrl;
  DateTime dateCreated;
  UserInfo user;
  int checkinStatusTypeId;
  CheckinStatusType checkinStatusType;

  UserComment.fromJson(Map json)
      : id = json['ID'],
        chargePointId = json['ChargePointID'],
        commentTypeId = json['CommentTypeID'],
        userCommentType = UserCommentType.fromJson(json['UserCommentType']),
        userName = json['UserName'],
        comment = json['Comment'],
        relatedUrl = json['RelatedURL'],
        dateCreated = json['DateCreated'],
        user = UserInfo.fromJson(json['User']),
        checkinStatusTypeId = json['CheckinStatusTypeID'],
        checkinStatusType =
            CheckinStatusType.fromJson(json['CheckinStatusType']);
}

class CheckinStatusType {
  int id;
  String title;
  bool isAutomatedCheckin, isPositive;

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
