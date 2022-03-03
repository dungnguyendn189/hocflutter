// To parse this JSON data, do
//
//     final bussiness = bussinessFromJson(jsonString);

import 'dart:convert';

Bussiness bussinessFromJson(String bussinessRespone) =>
    Bussiness.fromJson(json.decode(bussinessRespone));

class Bussiness {
  Bussiness({
    this.product,
    this.init,
    this.dataseries,
  });

  String? product;
  String? init;
  List<Datasery>? dataseries;

  factory Bussiness.fromJson(Map<String, dynamic> json) => Bussiness(
        product: json["product"] == null ? null : json["product"],
        init: json["init"] == null ? null : json["init"],
        dataseries: json["dataseries"] == null
            ? null
            : List<Datasery>.from(
                json["dataseries"].map((x) => Datasery.fromJson(x))),
      );
}

class Datasery {
  Datasery({
    this.timepoint,
    this.cloudcover,
    this.seeing,
    this.transparency,
    this.liftedIndex,
    this.rh2M,
    this.wind10M,
    this.temp2M,
    this.precType,
  });

  int? timepoint;
  int? cloudcover;
  int? seeing;
  int? transparency;
  int? liftedIndex;
  int? rh2M;
  Wind10M? wind10M;
  int? temp2M;
  String? precType;

  factory Datasery.fromJson(Map<String, dynamic> json) => Datasery(
        timepoint: json["timepoint"] == null ? null : json["timepoint"],
        cloudcover: json["cloudcover"] == null ? null : json["cloudcover"],
        seeing: json["seeing"] == null ? null : json["seeing"],
        transparency:
            json["transparency"] == null ? null : json["transparency"],
        liftedIndex: json["lifted_index"] == null ? null : json["lifted_index"],
        rh2M: json["rh2m"] == null ? null : json["rh2m"],
        wind10M:
            json["wind10m"] == null ? null : Wind10M.fromJson(json["wind10m"]),
        temp2M: json["temp2m"] == null ? null : json["temp2m"],
        precType: json["prec_type"] == null ? null : json["prec_type"],
      );
}

class Wind10M {
  Wind10M({
    this.direction,
    this.speed,
  });

  String? direction;
  int? speed;

  factory Wind10M.fromJson(Map<String, dynamic> json) => Wind10M(
        direction: json["direction"] == null ? null : json["direction"],
        speed: json["speed"] == null ? null : json["speed"],
      );
}
