import 'package:charge_points/src/model/address_info.dart';

class OperatorInfo {
  /// Website for more information about this network
  String? websiteUrl;

  /// Comments
  String? comments;

  /// Primary contact number for network users
  String? phonePrimaryContact;

  /// Secondary contact number
  String? phoneSecondaryContact;

  /// If true, this operator represents a private individual
  bool? isPrivateIndividual;

  /// Geographic position for site and (nearest) address component information.
  AddressInfo? addressInfo;

  /// Booking URL
  String? bookingUrl;

  /// Contact Email
  String? contactEmail;

  /// Used to send automated notification to network operator if a user submits a fault report comment/check-in
  String? faultReportEmail;

  /// If true, this network restricts community edits for OCM data
  bool? isRestrictedEdit;

  /// ID
  int id;

  /// Title
  String title;

  OperatorInfo.fromJson(Map json)
      : websiteUrl = json['WebsiteURL'],
        comments = json['Comments'],
        phonePrimaryContact = json['PhonePrimaryContact'],
        phoneSecondaryContact = json['PhoneSecondaryContact'],
        isPrivateIndividual = json['IsPrivateIndividual'],
        addressInfo = json['AddressInfo'] == null
            ? null
            : AddressInfo.fromJson(json['AddressInfo']),
        bookingUrl = json['BookingURL'],
        contactEmail = json['ContactEmail'],
        faultReportEmail = json['FaultReportEmail'],
        isRestrictedEdit = json['IsRestrictedEdit'],
        id = json['ID'],
        title = json['Title'];
}
