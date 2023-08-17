import 'package:charge_points/src/api/client.dart';
import 'package:charge_points/src/model/bounding_box.dart';
import 'package:test/test.dart';

void main() {
  group('Model Test', () {
    test('Retrive Pois', () async {
      final pois = await ChargePointsClient.retrievePoiList(
        BoundingBox(Corner(37.658505, 14.992467), Corner(37.465824, 15.140327)),
        '',
        '',
        'IT',
        ['IT'],
      );
      print(pois);
    });
  });
}
