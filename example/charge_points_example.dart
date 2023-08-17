import 'package:charge_points/charge_points.dart';

void main() async {
  final String key = '<your-key>';
  final ChargePointsClient client = ChargePointsClient(key);
  final RetivePoiParams params = RetivePoiParams();
  final List<POI> list = await client.retrievePoiList(
    params.boundingBox,
    params.countryCode,
    params.countryID,
  );
  print(list);
}

class RetivePoiParams {
  final BoundingBox boundingBox;
  final String countryCode;
  final List<String> countryID;

  RetivePoiParams()
      : boundingBox = _setUpBoundingBox(),
        countryCode = 'IT',
        countryID = ['IT', 'US'];

  static _setUpBoundingBox() {
    final Corner topLeft = Corner(90, -180);
    final Corner bottomRight = Corner(-90, 180);
    return BoundingBox(topLeft, bottomRight);
  }
}
