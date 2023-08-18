import 'package:charge_points/src/model/address_info.dart';
import 'package:charge_points/src/model/connection_info.dart';
import 'package:charge_points/src/model/data_provider.dart';
import 'package:charge_points/src/model/media_item.dart';
import 'package:charge_points/src/model/operator_info.dart';
import 'package:charge_points/src/model/user_comment.dart';

class POI {
  /// The OCM reference ID for this POI (Point of Interest).
  int id;

  /// A universally unique identifier used as surrogate key. ID and UUID must be preserved when submitting POI update information.
  String uuid;

  /// A list of user comments or check-ins for this site
  List<UserComment> userComments;

  /// A list of user submitted photos for this site
  List<MediaItem> mediaItems;

  /// A dynamically computed value indicating of any recently confirmation activity has taken place for this site (positive check-ins etc)
  bool isRecentlyVerified;

  /// A dynamically computed value, the date and time (UTC, ISO 8601) this POI was last confirmed by a user edit or related user comment
  DateTime dateLastVerified;

  /// If present, this data in this POI supercedes information in another POI. Generally not relevant to consumers.
  int? parentChargePointId;

  /// The reference ID for the Data Provider of this POI
  int dataProviderId;

  /// If present, this is the Data Providers own key for this POI within their source data set
  String? dataProvidersReference;

  /// The reference ID of the equipment network operator or owner
  int? operatorId;

  /// The network operators own reference for this site (may be a site reference or a single equipment reference)
  String? operatorsReference;

  /// The reference ID for the site Usage Type, 0 == Unknown
  int? usageTypeId;

  /// Free text description of likely usage costs associated with this site. Generally relates to parking charges whether network operates this site as Free
  String? usageCost;

  /// Geographic position for site and (nearest) address component information.
  AddressInfo addressInfo;

  /// List of equipment summary information for this site
  List<ConnectionInfo> connections;

  /// The number of bays or discreet stations available overall at this site. This indicates the limiting for number of simultaneous site users.
  int? numberOfPoints;

  /// General additional factual information for the POI. Users are discouraged from using this field for opinions on site quality etc.
  String? generalComments;

  /// The date and time (UTC, ISO 8601) this POI is or was planned for commissioning. In general planned POIs should not be presented to end users until confirmed operational.
  DateTime? datePlanned;

  /// The date and time (UTC, ISO 8601) this POI was last confirmed according to the data provider or a user. See DateLastVerified for a dynamically computed date based on multiple signals.
  DateTime? dateLastConfirmed;

  /// The overall operational status type reference ID for this POI (i.e. Operational etc). 0 == Unknown
  int? statusTypeId;

  /// The date and time (UTC, ISO 8601) this POI or directly related child properties were updated.
  DateTime dateLastStatusUpdate;

  /// Optional array of metadata values. Generally used to indicate data attribution but is also intended for future use to indicate surrounding amenties, links or foreign key values into other data sets.
  List? metadataValues;

  /// A metric applied during imports to indicate a quality level based on available information detail (5 == best). Largely unused currently.
  int? dataQualityLevel;

  /// The date and time (UTC, ISO 8601) this POI was added to the Open Charge Map database
  DateTime dateCreated;

  /// The reference ID for the submission status type which applied to this POI.
  int? submissionStatusTypeId;

  /// A Data Provider is the controller of the source data set used to construct the details for this POI. Data has been transformed and interpreted from it's original form. Each Data Provider provides data either by an explicit license or agreement.
  DataProvider dataProvider;

  /// An Operator is the public organisation which controls a network of charging points.
  OperatorInfo? operatorInfo;

  /// The Usage Type of a site indicates the general restrictions on usage.
  UsageType? usageType;

  /// The Status Type of a site or equipment item indicates whether it is generally operational.
  StatusType? statusType;

  /// Submission Status object, detailing the POI listing status
  SubmissionStatus submissionStatus;

  POI.fromJson(Map json)
      : id = json['ID'],
        uuid = json['UUID'],
        userComments = UserComments.fromJson(json['UserComments']),
        mediaItems = MediaItems.fromJson(json['MediaItems']),
        isRecentlyVerified = json['IsRecentlyVerified'],
        dateLastVerified = DateTime.parse(json['DateLastVerified']),
        parentChargePointId = json['ParentChargePointID'],
        dataProviderId = json['DataProviderID'],
        dataProvidersReference = json['DataProvidersReference'],
        operatorId = json['OperatorID'],
        operatorsReference = json['OperatorsReference'],
        usageTypeId = json['UsageTypeID'],
        usageCost = json['UsageCost'],
        addressInfo = AddressInfo.fromJson(json['AddressInfo']),
        connections = Connections.fromJson(json['Connections']),
        numberOfPoints = json['NumberOfPoints'],
        generalComments = json['GeneralComments'],
        datePlanned = json['DatePlanned'] == null
            ? null
            : DateTime.parse(json['DatePlanned']),
        dateLastConfirmed = json['DateLastConfirmed'] == null
            ? null
            : DateTime.parse(json['DateLastConfirmed']),
        statusTypeId = json['StatusTypeId'],
        dateLastStatusUpdate = DateTime.parse(json['DateLastStatusUpdate']),
        metadataValues = json['MetadataValues'],
        dataQualityLevel = json['DataQualityLevel'],
        dateCreated = DateTime.parse(json['DateCreated']),
        submissionStatusTypeId = json['SubmissionStatusTypeId'],
        dataProvider = DataProvider.fromJson(json['DataProvider']),
        operatorInfo = json['OperatorInfo'] == null
            ? null
            : OperatorInfo.fromJson(json['OperatorInfo']),
        usageType = json['UsageType'] == null
            ? null
            : UsageType.fromJson(json['UsageType']),
        statusType = json['StatusType'] == null
            ? null
            : StatusType.fromJson(json['StatusType']),
        submissionStatus = SubmissionStatus.fromJson(json['SubmissionStatus']);
}

class UsageType {
  /// If true, usage requires paying at location
  bool? isPayAtLocation;

  /// If true, this usage type requires registration or membership with a service.
  bool? isMembershipRequired;

  /// If true this usage required a physical access key
  bool? isAccessKeyRequired;

  /// ID
  int id;

  /// Title
  String title;

  UsageType.fromJson(Map json)
      : isPayAtLocation = json['IsPayAtLocation'],
        isMembershipRequired = json['IsMembershipRequired'],
        isAccessKeyRequired = json['IsAccessKeyRequired'],
        id = json['ID'],
        title = json['Title'];
}

class SubmissionStatus {
  /// Submission Status Type reference ID
  int id;

  /// Title
  String title;

  /// If true, POI listing is live (not draft or de-listed)
  bool? isLive;

  SubmissionStatus.fromJson(Map json)
      : id = json['ID'],
        title = json['Title'],
        isLive = json['isLive'];
}
