// To parse this JSON data, do
//
//     final titleserver = titleserverFromJson(jsonString);

import 'dart:convert';

Titleserver titleserverFromJson(String titleServerRespone) =>
    Titleserver.fromJson(json.decode(titleServerRespone));

class Titleserver {
  Titleserver({
    this.created,
    this.d1,
    this.d2,
    this.dir,
    this.files,
    this.filesCount,
    this.itemLastUpdated,
    this.itemSize,
    this.metadata,
    this.reviews,
    this.server,
    this.uniq,
    this.workableServers,
  });

  int? created;
  String? d1;
  String? d2;
  String? dir;
  List<FileElement>? files;
  int? filesCount;
  int? itemLastUpdated;
  int? itemSize;
  Metadata? metadata;
  List<Review>? reviews;
  String? server;
  int? uniq;
  List<String>? workableServers;

  factory Titleserver.fromJson(Map<String, dynamic> json) => Titleserver(
        created: json["created"] == null ? null : json["created"],
        d1: json["d1"] == null ? null : json["d1"],
        d2: json["d2"] == null ? null : json["d2"],
        dir: json["dir"] == null ? null : json["dir"],
        files: json["files"] == null
            ? null
            : List<FileElement>.from(
                json["files"].map((x) => FileElement.fromJson(x))),
        filesCount: json["files_count"] == null ? null : json["files_count"],
        itemLastUpdated: json["item_last_updated"] == null
            ? null
            : json["item_last_updated"],
        itemSize: json["item_size"] == null ? null : json["item_size"],
        metadata: json["metadata"] == null
            ? null
            : Metadata.fromJson(json["metadata"]),
        reviews: json["reviews"] == null
            ? null
            : List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
        server: json["server"] == null ? null : json["server"],
        uniq: json["uniq"] == null ? null : json["uniq"],
        workableServers: json["workable_servers"] == null
            ? null
            : List<String>.from(json["workable_servers"].map((x) => x)),
      );
}

class FileElement {
  FileElement({
    this.name,
    this.source,
    this.format,
    this.original,
    this.mtime,
    this.size,
    this.md5,
    this.crc32,
    this.sha1,
    this.btih,
    this.summation,
    this.rotation,
  });

  String? name;
  String? source;
  String? format;
  String? original;
  String? mtime;
  String? size;
  String? md5;
  String? crc32;
  String? sha1;
  String? btih;
  String? summation;
  String? rotation;

  factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
        name: json["name"] == null ? null : json["name"],
        source: json["source"] == null ? null : json["source"],
        format: json["format"] == null ? null : json["format"],
        original: json["original"] == null ? null : json["original"],
        mtime: json["mtime"] == null ? null : json["mtime"],
        size: json["size"] == null ? null : json["size"],
        md5: json["md5"] == null ? null : json["md5"],
        crc32: json["crc32"] == null ? null : json["crc32"],
        sha1: json["sha1"] == null ? null : json["sha1"],
        btih: json["btih"] == null ? null : json["btih"],
        summation: json["summation"] == null ? null : json["summation"],
        rotation: json["rotation"] == null ? null : json["rotation"],
      );
}

class Metadata {
  Metadata({
    this.identifier,
    this.mediatype,
    this.description,
    this.language,
    this.scanner,
    this.title,
    this.publicdate,
    this.uploader,
    this.addeddate,
    this.identifierAccess,
    this.identifierArk,
    this.ppi,
    this.ocr,
    this.repubState,
    this.creator,
    this.subject,
    this.curation,
    this.collection,
    this.backupLocation,
    this.openlibraryEdition,
    this.openlibraryWork,
  });

  String? identifier;
  String? mediatype;
  String? description;
  String? language;
  String? scanner;
  String? title;
  String? publicdate;
  String? uploader;
  String? addeddate;
  String? identifierAccess;
  String? identifierArk;
  String? ppi;
  String? ocr;
  String? repubState;
  String? creator;
  List<String>? subject;
  String? curation;
  List<String>? collection;
  String? backupLocation;
  String? openlibraryEdition;
  String? openlibraryWork;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        identifier: json["identifier"] == null ? null : json["identifier"],
        mediatype: json["mediatype"] == null ? null : json["mediatype"],
        description: json["description"] == null ? null : json["description"],
        language: json["language"] == null ? null : json["language"],
        scanner: json["scanner"] == null ? null : json["scanner"],
        title: json["title"] == null ? null : json["title"],
        publicdate: json["publicdate"] == null ? null : json["publicdate"],
        uploader: json["uploader"] == null ? null : json["uploader"],
        addeddate: json["addeddate"] == null ? null : json["addeddate"],
        identifierAccess: json["identifier-access"] == null
            ? null
            : json["identifier-access"],
        identifierArk:
            json["identifier-ark"] == null ? null : json["identifier-ark"],
        ppi: json["ppi"] == null ? null : json["ppi"],
        ocr: json["ocr"] == null ? null : json["ocr"],
        repubState: json["repub_state"] == null ? null : json["repub_state"],
        creator: json["creator"] == null ? null : json["creator"],
        subject: json["subject"] == null
            ? null
            : List<String>.from(json["subject"].map((x) => x)),
        curation: json["curation"] == null ? null : json["curation"],
        collection: json["collection"] == null
            ? null
            : List<String>.from(json["collection"].map((x) => x)),
        backupLocation:
            json["backup_location"] == null ? null : json["backup_location"],
        openlibraryEdition: json["openlibrary_edition"] == null
            ? null
            : json["openlibrary_edition"],
        openlibraryWork:
            json["openlibrary_work"] == null ? null : json["openlibrary_work"],
      );
}

class Review {
  Review({
    this.reviewtitle,
    this.reviewbody,
    this.stars,
    this.reviewer,
    this.reviewdate,
    this.createdate,
    this.reviewerItemname,
  });

  String? reviewtitle;
  String? reviewbody;
  String? stars;
  String? reviewer;
  String? reviewdate;
  String? createdate;
  String? reviewerItemname;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        reviewtitle: json["reviewtitle"] == null ? null : json["reviewtitle"],
        reviewbody: json["reviewbody"] == null ? null : json["reviewbody"],
        stars: json["stars"] == null ? null : json["stars"],
        reviewer: json["reviewer"] == null ? null : json["reviewer"],
        reviewdate: json["reviewdate"] == null ? null : json["reviewdate"],
        createdate: json["createdate"] == null ? null : json["createdate"],
        reviewerItemname: json["reviewer_itemname"] == null
            ? null
            : json["reviewer_itemname"],
      );
}
