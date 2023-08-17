import 'package:charge_points/src/model/address_info.dart';

class OperatorInfo {
  String websiteUrl;
  String comments;
  String phonePrimaryContact;
  String phoneSecondaryContact;
  bool isPrivateIndividual;
  AddressInfo addressInfo;
  String bookingUrl;
  String contactEmail;
  String faultReportEmail;
  bool isRestrictedEdit;
  int id;
  String title;

  OperatorInfo.fromJson(Map json)
      : websiteUrl = json['WebsiteURL'],
        comments = json['Comments'],
        phonePrimaryContact = json['PhonePrimaryContact'],
        phoneSecondaryContact = json['PhoneSecondaryContact'],
        isPrivateIndividual = json['IsPrivateIndividual'],
        addressInfo = AddressInfo.fromJson(json['AddressInfo']),
        bookingUrl = json['BookingURL'],
        contactEmail = json['ContactEmail'],
        faultReportEmail = json['FaultReportEmail'],
        isRestrictedEdit = json['IsRestrictedEdit'],
        id = json['ID'],
        title = json['Title'];
}
