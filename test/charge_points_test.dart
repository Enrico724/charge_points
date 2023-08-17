import 'package:charge_points/src/api/client.dart';
import 'package:charge_points/src/model/bounding_box.dart';
import 'package:test/test.dart';

void main() {
  group('Model Test', () {
    test('Retrive Pois Around Globe', () async {
      final topLeftCorner = Corner(90, -180);
      final bottomRightCorner = Corner(-90, 180);
      await ChargePointsClient.retrievePoiList(
        BoundingBox(topLeftCorner, bottomRightCorner),
        '',
        [],
      );
    });
  });
}
