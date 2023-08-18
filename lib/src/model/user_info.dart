class UserInfo {
  /// ID
  int id;

  /// Username
  String username;

  /// Reputation Points
  int reputationPoints;

  /// Profile Image URL
  String? profileImageUrl;

  UserInfo.fromJson(Map json)
      : id = json['ID'],
        username = json['Username'],
        reputationPoints = json['ReputationPoints'],
        profileImageUrl = json['ProfileImageURL'];
}
