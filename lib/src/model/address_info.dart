class AddressInfo {
  int id;
  String? addressLine1;
  String? addressLine2;
  String? town;
  String? stateOrProvince;
  String? postcode;
  int countryId;
  Country country;
  double latitude;
  double longitude;
  String? contactTelephone1;
  String? contactTelephone2;
  String? contactEmail;
  String? accessComments;
  String? relatedUrl;
  double? distance;
  int distanceUnit;
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
  int id;
  String isoCode;
  String continentCode;
  String title;

  Country.fromJson(Map json)
      : id = json['ID'],
        isoCode = json['ISOCode'],
        continentCode = json['ContinentCode'],
        title = json['Title'];
}
