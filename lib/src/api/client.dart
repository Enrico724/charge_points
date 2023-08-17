import 'dart:convert';

import 'package:charge_points/src/api/endpoint.dart';
import 'package:charge_points/src/model/bounding_box.dart';
import 'package:charge_points/src/model/poi.dart';

import 'package:http/http.dart' as http;

class ChargePointsClient {
  ChargePointsClient._();
  static const key = '8b87d211-f3a3-4a52-8400-389e29bd81be';

  static Future<List<POI>> retrievePoiList(
    BoundingBox boundingBox,
    String chargepointid,
    String client,
    String countryCode,
    List<String> countryID, {
    bool compact = false,
    List<int> connectionTypeID = const [],
  }) async {
    print('boundingBox: $boundingBox');
    final params = {
      'boundingbox': boundingBox.toString(),
      'chargepointid': chargepointid,
      'client': client,
      'countrycode': countryCode,
      'countryid': countryID.toString(),
      'compact': compact.toString(),
      'connectiontypeid': connectionTypeID.toString(),
    };
    final uri = Uri.https(Endpoint.domain, Endpoint.restrivePoiList, params);
    final response = await http.get(uri, headers: {
      'X-API-Key': key,
      'Accept': 'application/json',
      'User-Agent': 'Chrome'
    });
    print(response.body);
    final Iterable data = jsonDecode(response.body);
    List<POI> list = data.map((e) => POI.fromJson(e)).toList();
    return list;
  }
}
