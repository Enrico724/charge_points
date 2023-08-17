class Connections {
  static List<ConnectionInfo> fromJson(dynamic json) {
    if (json.runtimeType == Null) return [];
    final data = json as Iterable;
    return data.map((e) => ConnectionInfo.fromJson(e)).toList();
  }
}

class ConnectionInfo {
  int id;
  int connectionTypeId;
  ConnectionType connectionType;
  String? reference;
  int? statusTypeId;
  StatusType? statusType;
  int? levelId;
  Level? level;
  int? amps;
  int? voltage;
  double? powerKw;
  int? currentTypeId;
  CurrentType? currentType;
  int? quantity;
  String? comments;

  ConnectionInfo.fromJson(Map json)
      : id = json['ID'],
        connectionTypeId = json['ConnectionTypeID'],
        connectionType = ConnectionType.fromJson(json['ConnectionType']),
        reference = json['Reference'],
        statusTypeId = json['StatusTypeID'],
        statusType = json['StatusType'] == null
            ? null
            : StatusType.fromJson(json['StatusType']),
        levelId = json['LevelID'],
        level = json['Level'] == null ? null : Level.fromJson(json['Level']),
        amps = json['Amps'],
        voltage = json['Voltage'],
        powerKw = json['PowerKW'],
        currentTypeId = json['CurrentTypeID'],
        currentType = json['CurrentType'] == null
            ? null
            : CurrentType.fromJson(json['CurrentType']),
        quantity = json['Quantity'],
        comments = json['Comments'];
}

class ConnectionType {
  String? formalName;
  bool? isDiscontinued;
  bool? isObsolete;
  int id;
  String title;

  ConnectionType.fromJson(Map json)
      : formalName = json['FormalName'],
        isDiscontinued = json['IsDiscontinued'],
        isObsolete = json['IsObsolete'],
        id = json['ID'],
        title = json['Title'];
}

class StatusType {
  bool? isOperational;
  bool isUserSelectable;
  int id;
  String title;

  StatusType.fromJson(Map json)
      : isOperational = json['IsOperational'],
        isUserSelectable = json['IsUserSelectable'],
        id = json['ID'],
        title = json['Title'];
}

class Level {
  int id;
  String title;
  String comments;
  bool isFastChargeCapable;

  Level.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'],
        comments = json['Comments'],
        isFastChargeCapable = json['IsFastChargeCapable'];
}

class CurrentType {
  int id;
  String title;

  CurrentType.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'];
}
