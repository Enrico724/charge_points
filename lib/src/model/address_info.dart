class AddressInfo {
  /// ID
  int id;

  /// First line of nearby street address
  String? addressLine1;

  /// Second line of nearby street address
  String? addressLine2;

  /// Town or City
  String? town;

  /// State or Province
  String? stateOrProvince;

  /// Postal code or Zipcode
  String? postcode;

  /// The reference ID for the Country
  int countryId;

  /// Country details
  Country country;

  /// Site latitude coordinate in decimal degrees
  double latitude;

  /// Site longitude coordinate in decimal degrees
  double longitude;

  /// Primary contact number
  String? contactTelephone1;

  /// Secondary contact number
  String? contactTelephone2;

  /// Primary contact email
  String? contactEmail;

  /// Guidance for users to use or find the equipment
  String? accessComments;

  /// Optional website for more information
  String? relatedUrl;

  /// Distance from search location, if search is around a point
  double? distance;

  /// Unit used for distance, 1= Miles, 2 = KM
  int distanceUnit;

  /// General title for this location to aid user
  String title;

  AddressInfo.fromJson(Map json)
      : id = json['ID'],
        addressLine1 = json['AddressLine1'],
        addressLine2 = json['AddressLine2'],
        town = json['Town'],
        stateOrProvince = json['StateOrProvince'],
        postcode = json['Postcode'],
        countryId = json['CountryID'],
        country = Country.fromJson(json['Country']),
        latitude = json['Latitude'],
        longitude = json['Longitude'],
        contactTelephone1 = json['ContactTelephone1'],
        contactTelephone2 = json['ContactTelephone2'],
        contactEmail = json['ContactEmail'],
        accessComments = json['AccessComments'],
        relatedUrl = json['RelatedURL'],
        distance = json['Distance'],
        distanceUnit = json['DistanceUnit'],
        title = json['Title'];
}

class Country {
  /// The Id Schema
  int id;

  /// The Isocode Schema
  String isoCode;

  /// The Continentcode Schema
  String continentCode;

  /// The Title Schema
  String title;

  Country.fromJson(Map json)
      : id = json['ID'],
        isoCode = json['ISOCode'],
        continentCode = json['ContinentCode'],
        title = json['Title'];
}
