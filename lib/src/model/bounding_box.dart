class BoundingBox {
  /// Top Left Corner of Map
  Corner topLeftCorner;

  /// Right Left Corner of Map
  Corner bottomRightCorner;

  BoundingBox(this.topLeftCorner, this.bottomRightCorner);

  @override
  String toString() {
    return '$topLeftCorner,$bottomRightCorner';
  }
}

class Corner {
  /// Latitude
  double lat;

  /// Longitude
  double lng;

  Corner(this.lat, this.lng);

  @override
  String toString() {
    return '($lat,$lng)';
  }
}
