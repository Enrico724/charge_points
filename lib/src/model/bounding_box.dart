class BoundingBox {
  Corner topLeftCorner;
  Corner bottomRightCorner;

  BoundingBox(this.topLeftCorner, this.bottomRightCorner);

  @override
  String toString() {
    return '$topLeftCorner,$bottomRightCorner';
  }
}

class Corner {
  double lat;
  double lng;

  Corner(this.lat, this.lng);

  @override
  String toString() {
    return '($lat,$lng)';
  }
}
