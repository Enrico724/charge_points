class DataProviderStatusType {
  bool isProviderEnabled;
  int id;
  String? description;

  DataProviderStatusType.fromJson(Map json)
      : isProviderEnabled = json['IsProviderEnabled'],
        id = json['ID'],
        description = json['description'];
}

class DataProvider {
  String websiteUrl;
  String? comments;
  DataProviderStatusType dataProviderStatusType;
  bool isRestrictedEdit;
  bool isOpenDataLicensed;
  bool? isApprovedImport;
  String? license;
  DateTime? dateLastImported;
  int id;
  String title;

  DataProvider.fromJson(Map json)
      : websiteUrl = json['WebsiteURL'],
        comments = json['Comments'],
        dataProviderStatusType =
            DataProviderStatusType.fromJson(json['DataProviderStatusType']),
        isRestrictedEdit = json['IsRestrictedEdit'],
        isOpenDataLicensed = json['IsOpenDataLicensed'],
        isApprovedImport = json['IsApprovedImport'],
        license = json['License'],
        dateLastImported = json['DateLastImported'] == null
            ? null
            : DateTime.parse(json['DateLastImported']),
        id = json['ID'],
        title = json['Title'];
}
