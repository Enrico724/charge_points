import 'package:charge_points/src/api/client.dart';
import 'package:charge_points/src/model/bounding_box.dart';
import 'package:test/test.dart';

void main() {
  group('API Test', () {
    final ChargePointsClient client = ChargePointsClient('<your-key>');
    test('Retrive Pois Around Globe', () async {
      final topLeftCorner = Corner(90, -180);
      final bottomRightCorner = Corner(-90, 180);
      await client.retrievePoiList(
        BoundingBox(topLeftCorner, bottomRightCorner),
        '',
        [],
      );
    });
  });
}
