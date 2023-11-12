class Connections {
  static List<ConnectionInfo> fromJson(dynamic json) {
    if (json.runtimeType == Null) return [];
    final data = json as Iterable;
    return data.map((e) => ConnectionInfo.fromJson(e)).toList();
  }
}

class ConnectionInfo {
  /// ID
  int id;

  /// Connection Type ID
  int connectionTypeId;

  /// The type of end-user connection an EVSE supports.
  ConnectionType connectionType;

  /// Optional operators reference for this connection/port
  String? reference;

  /// Status Type reference ID. 0 = Unknown
  int? statusTypeId;

  /// The Status Type of a site or equipment item indicates whether it is generally operational.
  StatusType? statusType;

  /// A general category for power capability. Depreceated in favour of documenting specific equipment power in kW.
  int? levelId;

  /// A general category for equipment power capability. Deprecated for general use. Currently computed automatically based on equipment power.
  Level? level;

  /// EVSE supply max current in Amps
  int? amps;

  /// EVSE supply voltage
  int? voltage;

  /// Peak available power in kW
  double? powerKw;

  /// The supply type reference ID (e.g. DC etc)
  int? currentTypeId;

  /// Indicates the EVSE power supply type e.g. DC (Direct Current), AC (Single Phase), AC (3 Phase).
  CurrentType? currentType;

  /// Optional summary number of equipment items available with this specification
  int? quantity;

  /// Comments
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
        powerKw = json['PowerKW'] == nul ? null: json['PowerKW'].toDouble(),
        currentTypeId = json['CurrentTypeID'],
        currentType = json['CurrentType'] == null
            ? null
            : CurrentType.fromJson(json['CurrentType']),
        quantity = json['Quantity'],
        comments = json['Comments'];
}

class ConnectionType {
  /// Formal (standard) name for this connection type
  String? formalName;

  /// If true, this is an discontinued but used connection type
  bool? isDiscontinued;

  /// If true, this is an obsolete connection type and is unlikely top be present in modern infrastructure
  bool? isObsolete;

  /// ID
  int id;

  /// Title
  String title;

  ConnectionType.fromJson(Map json)
      : formalName = json['FormalName'],
        isDiscontinued = json['IsDiscontinued'],
        isObsolete = json['IsObsolete'],
        id = json['ID'],
        title = json['Title'];
}

class StatusType {
  /// Tell if is operational
  bool? isOperational;

  /// Tell if is user selectable
  bool isUserSelectable;

  /// ID
  int id;

  /// Title
  String title;

  StatusType.fromJson(Map json)
      : isOperational = json['IsOperational'],
        isUserSelectable = json['IsUserSelectable'],
        id = json['ID'],
        title = json['Title'];
}

class Level {
  /// ID
  int id;

  /// Title
  String title;

  /// Comments
  String comments;

  /// If true, this level is considered 'fast' charging, relative to other levels.
  bool isFastChargeCapable;

  Level.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'],
        comments = json['Comments'],
        isFastChargeCapable = json['IsFastChargeCapable'];
}

class CurrentType {
  /// ID
  int id;

  /// Title
  String title;

  CurrentType.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'];
}
