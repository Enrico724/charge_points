class DataProviderStatusType {
  /// If false, results from this data provider are not currently enabled
  bool isProviderEnabled;

  /// The reference ID for this provider status type
  int id;

  /// The Title of this status type
  String? description;

  DataProviderStatusType.fromJson(Map json)
      : isProviderEnabled = json['IsProviderEnabled'],
        id = json['ID'],
        description = json['description'];
}

class DataProvider {
  /// Website URL for this data provider
  String websiteUrl;

  /// General public comments with information about this Data Provider.
  String? comments;

  /// Status object describing whether this data provider is currently enabled and the type of source (manual entry, imported etc)
  DataProviderStatusType dataProviderStatusType;

  /// Currently not implemented. Indicates a potential editing restriction.
  bool isRestrictedEdit;

  /// If true, data provider uses an Open Data license
  bool isOpenDataLicensed;

  /// If false, data may not be imported for this provider.
  bool? isApprovedImport;

  /// Summary of the licensing which applies for this Data Provider. Each Data Provider has one specific license or agreement. Usage of the data requires acceptance of the given license.
  String? license;

  /// Date and time (UTC) the last import was performed for this data provider (if an import).
  DateTime? dateLastImported;

  /// The reference ID for this Data Provider
  int id;

  /// The Title for this Data Provider
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
