class UserInfo {
  int id;
  String username;
  int reputationPoints;
  String profileImageUrl;

  UserInfo.fromJson(Map json)
      : id = json['ID'],
        username = json['Username'],
        reputationPoints = json['ReputationPoints'],
        profileImageUrl = json['ProfileImageURL'];
}
