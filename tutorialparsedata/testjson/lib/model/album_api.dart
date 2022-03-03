// To parse this JSON data, do
//
//     final album = albumFromJson(jsonString);

import 'dart:convert';

Album albumFromJson(String albumRespone) =>
    Album.fromJson(json.decode(albumRespone));

class Album {
  Album({
    this.venues,
  });

  List<Venue>? venues;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        venues: json["venues"] == null
            ? null
            : List<Venue>.from(json["venues"].map((x) => Venue.fromJson(x))),
      );
}

class Venue {
  Venue({
    this.id,
    this.lat,
    this.lon,
    this.category,
    this.name,
    this.createdOn,
    this.geolocationDegrees,
    this.promoted,
  });

  int? id;
  double? lat;
  double? lon;
  String? category;
  String? name;
  int? createdOn;
  String? geolocationDegrees;
  bool? promoted;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        id: json["id"] == null ? null : json["id"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
        category: json["category"] == null ? null : json["category"],
        name: json["name"] == null ? null : json["name"],
        createdOn: json["created_on"] == null ? null : json["created_on"],
        geolocationDegrees: json["geolocation_degrees"] == null
            ? null
            : json["geolocation_degrees"],
        promoted: json["promoted"] == null ? null : json["promoted"],
      );
}
