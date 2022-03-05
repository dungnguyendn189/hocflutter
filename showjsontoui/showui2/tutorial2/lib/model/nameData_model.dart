// To parse this JSON data, do
//
//     final name = nameFromJson(jsonString);

import 'dart:convert';

List<Name> nameFromJson(String nameDataRespone) => List<Name>.from(
      json.decode(nameDataRespone).map(
            (nameDataRespone) => Name.fromJson(nameDataRespone),
          ),
    );

class Name {
  Name({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  NameClass? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  CoatOfArms? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        name: json["name"] == null ? null : NameClass.fromJson(json["name"]),
        tld: json["tld"] == null
            ? null
            : List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"] == null ? null : json["cca2"],
        ccn3: json["ccn3"] == null ? null : json["ccn3"],
        cca3: json["cca3"] == null ? null : json["cca3"],
        cioc: json["cioc"] == null ? null : json["cioc"],
        independent: json["independent"] == null ? null : json["independent"],
        status: json["status"] == null ? null : json["status"],
        unMember: json["unMember"] == null ? null : json["unMember"],
        currencies: json["currencies"] == null
            ? null
            : Currencies.fromJson(json["currencies"]),
        idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
        capital: json["capital"] == null
            ? null
            : List<String>.from(json["capital"].map((x) => x)),
        altSpellings: json["altSpellings"] == null
            ? null
            : List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"] == null ? null : json["region"],
        subregion: json["subregion"] == null ? null : json["subregion"],
        languages: json["languages"] == null
            ? null
            : Languages.fromJson(json["languages"]),
        translations: json["translations"] == null
            ? null
            : Translations.fromJson(json["translations"]),
        latlng: json["latlng"] == null
            ? null
            : List<double>.from(json["latlng"].map((x) => x.toDouble())),
        landlocked: json["landlocked"] == null ? null : json["landlocked"],
        borders: json["borders"] == null
            ? null
            : List<String>.from(json["borders"].map((x) => x)),
        area: json["area"] == null ? null : json["area"].toDouble(),
        demonyms: json["demonyms"] == null
            ? null
            : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"] == null ? null : json["flag"],
        maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
        population: json["population"] == null ? null : json["population"],
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
        fifa: json["fifa"] == null ? null : json["fifa"],
        car: json["car"] == null ? null : Car.fromJson(json["car"]),
        timezones: json["timezones"] == null
            ? null
            : List<String>.from(json["timezones"].map((x) => x)),
        continents: json["continents"] == null
            ? null
            : List<String>.from(json["continents"].map((x) => x)),
        flags:
            json["flags"] == null ? null : CoatOfArms.fromJson(json["flags"]),
        coatOfArms: json["coatOfArms"] == null
            ? null
            : CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"] == null ? null : json["startOfWeek"],
        capitalInfo: json["capitalInfo"] == null
            ? null
            : CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
      );
}

class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? null
            : List<double>.from(json["latlng"].map((x) => x.toDouble())),
      );
}

class Car {
  Car({
    this.signs,
    this.side,
  });

  List<String>? signs;
  String? side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null
            ? null
            : List<String>.from(json["signs"].map((x) => x)),
        side: json["side"] == null ? null : json["side"],
      );
}

class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  String? png;
  String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"] == null ? null : json["png"],
        svg: json["svg"] == null ? null : json["svg"],
      );
}

class Currencies {
  Currencies({
    this.eur,
    this.nzd,
    this.cuc,
    this.cup,
    this.ves,
    this.usd,
    this.wst,
    this.khr,
    this.hkd,
    this.mru,
    this.yer,
    this.djf,
    this.egp,
    this.hrk,
    this.chf,
    this.kzt,
    this.dkk,
    this.xof,
    this.bmd,
    this.shp,
    this.zar,
    this.rwf,
    this.mop,
    this.bif,
    this.uah,
    this.twd,
    this.ckd,
    this.ang,
    this.isk,
    this.pyg,
    this.szl,
    this.huf,
    this.mdl,
    this.clp,
    this.aud,
    this.uyu,
    this.lkr,
    this.gtq,
    this.ghs,
    this.ils,
    this.mzn,
    this.btn,
    this.inr,
    this.kyd,
    this.kpw,
    this.bhd,
    this.fok,
    this.awg,
    this.iqd,
    this.mad,
    this.mkd,
    this.pln,
    this.sbd,
    this.brl,
    this.omr,
    this.thb,
    this.xaf,
    this.amd,
    this.hnl,
    this.zmw,
    this.nok,
    this.cop,
    this.bbd,
    this.lyd,
    this.rsd,
    this.sek,
    this.aoa,
    this.pab,
    this.mur,
    this.tzs,
    this.gel,
    this.gmd,
    this.zwl,
    this.bzd,
    this.xcd,
    this.byn,
    this.cad,
    this.ars,
    this.srd,
    this.gnf,
    this.ssp,
    this.nad,
    this.qar,
    this.mmk,
    this.fkp,
    this.stn,
    this.cdf,
    this.php,
    this.bnd,
    this.sgd,
    this.sll,
    this.mnt,
    this.dzd,
    this.sdg,
    this.etb,
    this.bam,
    this.kmf,
    this.kwd,
    this.xpf,
    this.bdt,
    this.jmd,
    this.gip,
    this.myr,
    this.gbp,
    this.mga,
    this.tvd,
    this.rub,
    this.vnd,
    this.npr,
    this.kid,
    this.lrd,
    this.sos,
    this.ron,
    this.tnd,
    this.azn,
    this.pgk,
    this.lsl,
    this.bsd,
    this.cny,
    this.aed,
    this.tmt,
    this.lak,
    this.jod,
    this.scr,
    this.uzs,
    this.nio,
    this.kes,
    this.jep,
    this.czk,
    this.ugx,
    this.crc,
    this.mxn,
    this.ern,
    this.jpy,
    this.vuv,
    this.bwp,
    this.top,
    this.fjd,
    this.all,
    this.pen,
    this.idr,
    this.ggp,
    this.kgs,
    this.bob,
    this.dop,
    this.lbp,
    this.mvr,
    this.krw,
    this.syp,
    this.afn,
    this.mwk,
    this.tjs,
    this.currenciesTry,
    this.ngn,
    this.pkr,
    this.irr,
    this.cve,
    this.bgn,
    this.htg,
    this.imp,
    this.gyd,
    this.sar,
    this.ttd,
  });

  Aed? eur;
  Aed? nzd;
  Aed? cuc;
  Aed? cup;
  Aed? ves;
  Aed? usd;
  Aed? wst;
  Aed? khr;
  Aed? hkd;
  Aed? mru;
  Aed? yer;
  Aed? djf;
  Aed? egp;
  Aed? hrk;
  Aed? chf;
  Aed? kzt;
  Aed? dkk;
  Aed? xof;
  Aed? bmd;
  Aed? shp;
  Aed? zar;
  Aed? rwf;
  Aed? mop;
  Aed? bif;
  Aed? uah;
  Aed? twd;
  Aed? ckd;
  Aed? ang;
  Aed? isk;
  Aed? pyg;
  Aed? szl;
  Aed? huf;
  Aed? mdl;
  Aed? clp;
  Aed? aud;
  Aed? uyu;
  Aed? lkr;
  Aed? gtq;
  Aed? ghs;
  Aed? ils;
  Aed? mzn;
  Aed? btn;
  Aed? inr;
  Aed? kyd;
  Aed? kpw;
  Aed? bhd;
  Aed? fok;
  Aed? awg;
  Aed? iqd;
  Aed? mad;
  Aed? mkd;
  Aed? pln;
  Aed? sbd;
  Aed? brl;
  Aed? omr;
  Aed? thb;
  Aed? xaf;
  Aed? amd;
  Aed? hnl;
  Aed? zmw;
  Aed? nok;
  Aed? cop;
  Aed? bbd;
  Aed? lyd;
  Aed? rsd;
  Aed? sek;
  Aed? aoa;
  Aed? pab;
  Aed? mur;
  Aed? tzs;
  Aed? gel;
  Aed? gmd;
  Aed? zwl;
  Aed? bzd;
  Aed? xcd;
  Aed? byn;
  Aed? cad;
  Aed? ars;
  Aed? srd;
  Aed? gnf;
  Aed? ssp;
  Aed? nad;
  Aed? qar;
  Aed? mmk;
  Aed? fkp;
  Aed? stn;
  Aed? cdf;
  Aed? php;
  Aed? bnd;
  Aed? sgd;
  Aed? sll;
  Aed? mnt;
  Aed? dzd;
  Bam? sdg;
  Aed? etb;
  Bam? bam;
  Aed? kmf;
  Aed? kwd;
  Aed? xpf;
  Aed? bdt;
  Aed? jmd;
  Aed? gip;
  Aed? myr;
  Aed? gbp;
  Aed? mga;
  Aed? tvd;
  Aed? rub;
  Aed? vnd;
  Aed? npr;
  Aed? kid;
  Aed? lrd;
  Aed? sos;
  Aed? ron;
  Aed? tnd;
  Aed? azn;
  Aed? pgk;
  Aed? lsl;
  Aed? bsd;
  Aed? cny;
  Aed? aed;
  Aed? tmt;
  Aed? lak;
  Aed? jod;
  Aed? scr;
  Aed? uzs;
  Aed? nio;
  Aed? kes;
  Aed? jep;
  Aed? czk;
  Aed? ugx;
  Aed? crc;
  Aed? mxn;
  Aed? ern;
  Aed? jpy;
  Aed? vuv;
  Aed? bwp;
  Aed? top;
  Aed? fjd;
  Aed? all;
  Aed? pen;
  Aed? idr;
  Aed? ggp;
  Aed? kgs;
  Aed? bob;
  Aed? dop;
  Aed? lbp;
  Aed? mvr;
  Aed? krw;
  Aed? syp;
  Aed? afn;
  Aed? mwk;
  Aed? tjs;
  Aed? currenciesTry;
  Aed? ngn;
  Aed? pkr;
  Aed? irr;
  Aed? cve;
  Aed? bgn;
  Aed? htg;
  Aed? imp;
  Aed? gyd;
  Aed? sar;
  Aed? ttd;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
      );
}

class Aed {
  Aed({
    this.name,
    this.symbol,
  });

  String? name;
  String? symbol;

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"] == null ? null : json["name"],
        symbol: json["symbol"] == null ? null : json["symbol"],
      );
}

class Bam {
  Bam({
    this.name,
  });

  String? name;

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
        name: json["name"] == null ? null : json["name"],
      );
}

class Demonyms {
  Demonyms({
    this.eng,
    this.fra,
  });

  Eng? eng;
  Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
      );
}

class Eng {
  Eng({
    this.f,
    this.m,
  });

  String? f;
  String? m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"] == null ? null : json["f"],
        m: json["m"] == null ? null : json["m"],
      );
}

class Gini {
  Gini({
    this.the2016,
    this.the2018,
    this.the2006,
    this.the2013,
    this.the2014,
    this.the2017,
    this.the2015,
    this.the2019,
    this.the2010,
    this.the2012,
    this.the2008,
    this.the2009,
    this.the1999,
    this.the2011,
    this.the2004,
    this.the2005,
    this.the1998,
    this.the2003,
    this.the1992,
  });

  double? the2016;
  double? the2018;
  double? the2006;
  double? the2013;
  double? the2014;
  double? the2017;
  double? the2015;
  double? the2019;
  double? the2010;
  double? the2012;
  double? the2008;
  double? the2009;
  double? the1999;
  double? the2011;
  double? the2004;
  double? the2005;
  double? the1998;
  double? the2003;
  double? the1992;

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2016: json["2016"] == null ? null : json["2016"].toDouble(),
        the2018: json["2018"] == null ? null : json["2018"].toDouble(),
        the2006: json["2006"] == null ? null : json["2006"].toDouble(),
        the2013: json["2013"] == null ? null : json["2013"].toDouble(),
        the2014: json["2014"] == null ? null : json["2014"].toDouble(),
        the2017: json["2017"] == null ? null : json["2017"].toDouble(),
        the2015: json["2015"] == null ? null : json["2015"].toDouble(),
        the2019: json["2019"] == null ? null : json["2019"].toDouble(),
        the2010: json["2010"] == null ? null : json["2010"].toDouble(),
        the2012: json["2012"] == null ? null : json["2012"].toDouble(),
        the2008: json["2008"] == null ? null : json["2008"].toDouble(),
        the2009: json["2009"] == null ? null : json["2009"].toDouble(),
        the1999: json["1999"] == null ? null : json["1999"].toDouble(),
        the2011: json["2011"] == null ? null : json["2011"].toDouble(),
        the2004: json["2004"] == null ? null : json["2004"].toDouble(),
        the2005: json["2005"] == null ? null : json["2005"].toDouble(),
        the1998: json["1998"] == null ? null : json["1998"].toDouble(),
        the2003: json["2003"] == null ? null : json["2003"].toDouble(),
        the1992: json["1992"] == null ? null : json["1992"].toDouble(),
      );
}

class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  String? root;
  List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"] == null ? null : json["root"],
        suffixes: json["suffixes"] == null
            ? null
            : List<String>.from(json["suffixes"].map((x) => x)),
      );
}

class Languages {
  Languages({
    this.cnr,
    this.eng,
    this.smo,
    this.tkl,
    this.spa,
    this.fra,
    this.ell,
    this.khm,
    this.zho,
    this.ara,
    this.hrv,
    this.deu,
    this.kaz,
    this.rus,
    this.dan,
    this.cal,
    this.cha,
    this.ita,
    this.afr,
    this.nbl,
    this.nso,
    this.sot,
    this.ssw,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zul,
    this.kin,
    this.por,
    this.run,
    this.ukr,
    this.rar,
    this.pov,
    this.nld,
    this.isl,
    this.grn,
    this.hun,
    this.ron,
    this.kal,
    this.nau,
    this.sin,
    this.tam,
    this.heb,
    this.dzo,
    this.kor,
    this.fao,
    this.pap,
    this.arc,
    this.ckb,
    this.ber,
    this.mkd,
    this.pol,
    this.slv,
    this.tha,
    this.sag,
    this.hye,
    this.nor,
    this.ltz,
    this.srp,
    this.swe,
    this.mfe,
    this.swa,
    this.kat,
    this.mlt,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.nya,
    this.sna,
    this.toi,
    this.zib,
    this.bjz,
    this.lat,
    this.bel,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.mya,
    this.gle,
    this.lit,
    this.kon,
    this.lin,
    this.lua,
    this.fil,
    this.msa,
    this.mon,
    this.mey,
    this.tet,
    this.fin,
    this.bar,
    this.amh,
    this.bos,
    this.zdj,
    this.nno,
    this.nob,
    this.smi,
    this.ben,
    this.jam,
    this.cat,
    this.mlg,
    this.gsw,
    this.roh,
    this.tvl,
    this.vie,
    this.nep,
    this.gil,
    this.som,
    this.mah,
    this.aze,
    this.hmo,
    this.tpi,
    this.tur,
    this.tuk,
    this.lao,
    this.crs,
    this.uzb,
    this.nrf,
    this.ces,
    this.slk,
    this.mri,
    this.nzs,
    this.tir,
    this.jpn,
    this.sqi,
    this.bis,
    this.pau,
    this.ton,
    this.fij,
    this.hif,
    this.niu,
    this.aym,
    this.que,
    this.ind,
    this.nfr,
    this.kir,
    this.div,
    this.pih,
    this.prs,
    this.pus,
    this.tgk,
    this.hin,
    this.urd,
    this.lav,
    this.fas,
    this.bul,
    this.est,
    this.hat,
    this.glv,
  });

  String? cnr;
  String? eng;
  String? smo;
  String? tkl;
  String? spa;
  String? fra;
  String? ell;
  String? khm;
  String? zho;
  String? ara;
  String? hrv;
  String? deu;
  String? kaz;
  String? rus;
  String? dan;
  String? cal;
  String? cha;
  String? ita;
  String? afr;
  String? nbl;
  String? nso;
  String? sot;
  String? ssw;
  String? tsn;
  String? tso;
  String? ven;
  String? xho;
  String? zul;
  String? kin;
  String? por;
  String? run;
  String? ukr;
  String? rar;
  String? pov;
  String? nld;
  String? isl;
  String? grn;
  String? hun;
  String? ron;
  String? kal;
  String? nau;
  String? sin;
  String? tam;
  String? heb;
  String? dzo;
  String? kor;
  String? fao;
  String? pap;
  String? arc;
  String? ckb;
  String? ber;
  String? mkd;
  String? pol;
  String? slv;
  String? tha;
  String? sag;
  String? hye;
  String? nor;
  String? ltz;
  String? srp;
  String? swe;
  String? mfe;
  String? swa;
  String? kat;
  String? mlt;
  String? bwg;
  String? kck;
  String? khi;
  String? ndc;
  String? nde;
  String? nya;
  String? sna;
  String? toi;
  String? zib;
  String? bjz;
  String? lat;
  String? bel;
  String? her;
  String? hgm;
  String? kwn;
  String? loz;
  String? ndo;
  String? mya;
  String? gle;
  String? lit;
  String? kon;
  String? lin;
  String? lua;
  String? fil;
  String? msa;
  String? mon;
  String? mey;
  String? tet;
  String? fin;
  String? bar;
  String? amh;
  String? bos;
  String? zdj;
  String? nno;
  String? nob;
  String? smi;
  String? ben;
  String? jam;
  String? cat;
  String? mlg;
  String? gsw;
  String? roh;
  String? tvl;
  String? vie;
  String? nep;
  String? gil;
  String? som;
  String? mah;
  String? aze;
  String? hmo;
  String? tpi;
  String? tur;
  String? tuk;
  String? lao;
  String? crs;
  String? uzb;
  String? nrf;
  String? ces;
  String? slk;
  String? mri;
  String? nzs;
  String? tir;
  String? jpn;
  String? sqi;
  String? bis;
  String? pau;
  String? ton;
  String? fij;
  String? hif;
  String? niu;
  String? aym;
  String? que;
  String? ind;
  String? nfr;
  String? kir;
  String? div;
  String? pih;
  String? prs;
  String? pus;
  String? tgk;
  String? hin;
  String? urd;
  String? lav;
  String? fas;
  String? bul;
  String? est;
  String? hat;
  String? glv;

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        cnr: json["cnr"] == null ? null : json["cnr"],
        eng: json["eng"] == null ? null : json["eng"],
        smo: json["smo"] == null ? null : json["smo"],
        tkl: json["tkl"] == null ? null : json["tkl"],
        spa: json["spa"] == null ? null : json["spa"],
        fra: json["fra"] == null ? null : json["fra"],
        ell: json["ell"] == null ? null : json["ell"],
        khm: json["khm"] == null ? null : json["khm"],
        zho: json["zho"] == null ? null : json["zho"],
        ara: json["ara"] == null ? null : json["ara"],
        hrv: json["hrv"] == null ? null : json["hrv"],
        deu: json["deu"] == null ? null : json["deu"],
        kaz: json["kaz"] == null ? null : json["kaz"],
        rus: json["rus"] == null ? null : json["rus"],
        dan: json["dan"] == null ? null : json["dan"],
        cal: json["cal"] == null ? null : json["cal"],
        cha: json["cha"] == null ? null : json["cha"],
        ita: json["ita"] == null ? null : json["ita"],
        afr: json["afr"] == null ? null : json["afr"],
        nbl: json["nbl"] == null ? null : json["nbl"],
        nso: json["nso"] == null ? null : json["nso"],
        sot: json["sot"] == null ? null : json["sot"],
        ssw: json["ssw"] == null ? null : json["ssw"],
        tsn: json["tsn"] == null ? null : json["tsn"],
        tso: json["tso"] == null ? null : json["tso"],
        ven: json["ven"] == null ? null : json["ven"],
        xho: json["xho"] == null ? null : json["xho"],
        zul: json["zul"] == null ? null : json["zul"],
        kin: json["kin"] == null ? null : json["kin"],
        por: json["por"] == null ? null : json["por"],
        run: json["run"] == null ? null : json["run"],
        ukr: json["ukr"] == null ? null : json["ukr"],
        rar: json["rar"] == null ? null : json["rar"],
        pov: json["pov"] == null ? null : json["pov"],
        nld: json["nld"] == null ? null : json["nld"],
        isl: json["isl"] == null ? null : json["isl"],
        grn: json["grn"] == null ? null : json["grn"],
        hun: json["hun"] == null ? null : json["hun"],
        ron: json["ron"] == null ? null : json["ron"],
        kal: json["kal"] == null ? null : json["kal"],
        nau: json["nau"] == null ? null : json["nau"],
        sin: json["sin"] == null ? null : json["sin"],
        tam: json["tam"] == null ? null : json["tam"],
        heb: json["heb"] == null ? null : json["heb"],
        dzo: json["dzo"] == null ? null : json["dzo"],
        kor: json["kor"] == null ? null : json["kor"],
        fao: json["fao"] == null ? null : json["fao"],
        pap: json["pap"] == null ? null : json["pap"],
        arc: json["arc"] == null ? null : json["arc"],
        ckb: json["ckb"] == null ? null : json["ckb"],
        ber: json["ber"] == null ? null : json["ber"],
        mkd: json["mkd"] == null ? null : json["mkd"],
        pol: json["pol"] == null ? null : json["pol"],
        slv: json["slv"] == null ? null : json["slv"],
        tha: json["tha"] == null ? null : json["tha"],
        sag: json["sag"] == null ? null : json["sag"],
        hye: json["hye"] == null ? null : json["hye"],
        nor: json["nor"] == null ? null : json["nor"],
        ltz: json["ltz"] == null ? null : json["ltz"],
        srp: json["srp"] == null ? null : json["srp"],
        swe: json["swe"] == null ? null : json["swe"],
        mfe: json["mfe"] == null ? null : json["mfe"],
        swa: json["swa"] == null ? null : json["swa"],
        kat: json["kat"] == null ? null : json["kat"],
        mlt: json["mlt"] == null ? null : json["mlt"],
        bwg: json["bwg"] == null ? null : json["bwg"],
        kck: json["kck"] == null ? null : json["kck"],
        khi: json["khi"] == null ? null : json["khi"],
        ndc: json["ndc"] == null ? null : json["ndc"],
        nde: json["nde"] == null ? null : json["nde"],
        nya: json["nya"] == null ? null : json["nya"],
        sna: json["sna"] == null ? null : json["sna"],
        toi: json["toi"] == null ? null : json["toi"],
        zib: json["zib"] == null ? null : json["zib"],
        bjz: json["bjz"] == null ? null : json["bjz"],
        lat: json["lat"] == null ? null : json["lat"],
        bel: json["bel"] == null ? null : json["bel"],
        her: json["her"] == null ? null : json["her"],
        hgm: json["hgm"] == null ? null : json["hgm"],
        kwn: json["kwn"] == null ? null : json["kwn"],
        loz: json["loz"] == null ? null : json["loz"],
        ndo: json["ndo"] == null ? null : json["ndo"],
        mya: json["mya"] == null ? null : json["mya"],
        gle: json["gle"] == null ? null : json["gle"],
        lit: json["lit"] == null ? null : json["lit"],
        kon: json["kon"] == null ? null : json["kon"],
        lin: json["lin"] == null ? null : json["lin"],
        lua: json["lua"] == null ? null : json["lua"],
        fil: json["fil"] == null ? null : json["fil"],
        msa: json["msa"] == null ? null : json["msa"],
        mon: json["mon"] == null ? null : json["mon"],
        mey: json["mey"] == null ? null : json["mey"],
        tet: json["tet"] == null ? null : json["tet"],
        fin: json["fin"] == null ? null : json["fin"],
        bar: json["bar"] == null ? null : json["bar"],
        amh: json["amh"] == null ? null : json["amh"],
        bos: json["bos"] == null ? null : json["bos"],
        zdj: json["zdj"] == null ? null : json["zdj"],
        nno: json["nno"] == null ? null : json["nno"],
        nob: json["nob"] == null ? null : json["nob"],
        smi: json["smi"] == null ? null : json["smi"],
        ben: json["ben"] == null ? null : json["ben"],
        jam: json["jam"] == null ? null : json["jam"],
        cat: json["cat"] == null ? null : json["cat"],
        mlg: json["mlg"] == null ? null : json["mlg"],
        gsw: json["gsw"] == null ? null : json["gsw"],
        roh: json["roh"] == null ? null : json["roh"],
        tvl: json["tvl"] == null ? null : json["tvl"],
        vie: json["vie"] == null ? null : json["vie"],
        nep: json["nep"] == null ? null : json["nep"],
        gil: json["gil"] == null ? null : json["gil"],
        som: json["som"] == null ? null : json["som"],
        mah: json["mah"] == null ? null : json["mah"],
        aze: json["aze"] == null ? null : json["aze"],
        hmo: json["hmo"] == null ? null : json["hmo"],
        tpi: json["tpi"] == null ? null : json["tpi"],
        tur: json["tur"] == null ? null : json["tur"],
        tuk: json["tuk"] == null ? null : json["tuk"],
        lao: json["lao"] == null ? null : json["lao"],
        crs: json["crs"] == null ? null : json["crs"],
        uzb: json["uzb"] == null ? null : json["uzb"],
        nrf: json["nrf"] == null ? null : json["nrf"],
        ces: json["ces"] == null ? null : json["ces"],
        slk: json["slk"] == null ? null : json["slk"],
        mri: json["mri"] == null ? null : json["mri"],
        nzs: json["nzs"] == null ? null : json["nzs"],
        tir: json["tir"] == null ? null : json["tir"],
        jpn: json["jpn"] == null ? null : json["jpn"],
        sqi: json["sqi"] == null ? null : json["sqi"],
        bis: json["bis"] == null ? null : json["bis"],
        pau: json["pau"] == null ? null : json["pau"],
        ton: json["ton"] == null ? null : json["ton"],
        fij: json["fij"] == null ? null : json["fij"],
        hif: json["hif"] == null ? null : json["hif"],
        niu: json["niu"] == null ? null : json["niu"],
        aym: json["aym"] == null ? null : json["aym"],
        que: json["que"] == null ? null : json["que"],
        ind: json["ind"] == null ? null : json["ind"],
        nfr: json["nfr"] == null ? null : json["nfr"],
        kir: json["kir"] == null ? null : json["kir"],
        div: json["div"] == null ? null : json["div"],
        pih: json["pih"] == null ? null : json["pih"],
        prs: json["prs"] == null ? null : json["prs"],
        pus: json["pus"] == null ? null : json["pus"],
        tgk: json["tgk"] == null ? null : json["tgk"],
        hin: json["hin"] == null ? null : json["hin"],
        urd: json["urd"] == null ? null : json["urd"],
        lav: json["lav"] == null ? null : json["lav"],
        fas: json["fas"] == null ? null : json["fas"],
        bul: json["bul"] == null ? null : json["bul"],
        est: json["est"] == null ? null : json["est"],
        hat: json["hat"] == null ? null : json["hat"],
        glv: json["glv"] == null ? null : json["glv"],
      );
}

class Maps {
  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  String? googleMaps;
  String? openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"] == null ? null : json["googleMaps"],
        openStreetMaps:
            json["openStreetMaps"] == null ? null : json["openStreetMaps"],
      );
}

class NameClass {
  NameClass({
    this.common,
    this.official,
    this.nativeName,
  });

  String? common;
  String? official;
  NativeName? nativeName;

  factory NameClass.fromJson(Map<String, dynamic> json) => NameClass(
        common: json["common"] == null ? null : json["common"],
        official: json["official"] == null ? null : json["official"],
        nativeName: json["nativeName"] == null
            ? null
            : NativeName.fromJson(json["nativeName"]),
      );
}

class NativeName {
  NativeName({
    this.cnr,
    this.eng,
    this.smo,
    this.tkl,
    this.spa,
    this.fra,
    this.ell,
    this.khm,
    this.zho,
    this.ara,
    this.hrv,
    this.deu,
    this.kaz,
    this.rus,
    this.dan,
    this.cal,
    this.cha,
    this.ita,
    this.afr,
    this.nbl,
    this.nso,
    this.sot,
    this.ssw,
    this.tsn,
    this.tso,
    this.ven,
    this.xho,
    this.zul,
    this.kin,
    this.por,
    this.run,
    this.ukr,
    this.rar,
    this.pov,
    this.nld,
    this.isl,
    this.grn,
    this.hun,
    this.ron,
    this.kal,
    this.nau,
    this.sin,
    this.tam,
    this.heb,
    this.dzo,
    this.kor,
    this.fao,
    this.pap,
    this.arc,
    this.ckb,
    this.ber,
    this.mkd,
    this.pol,
    this.slv,
    this.tha,
    this.sag,
    this.hye,
    this.nor,
    this.ltz,
    this.srp,
    this.swe,
    this.mfe,
    this.swa,
    this.kat,
    this.mlt,
    this.bwg,
    this.kck,
    this.khi,
    this.ndc,
    this.nde,
    this.nya,
    this.sna,
    this.toi,
    this.zib,
    this.bjz,
    this.lat,
    this.bel,
    this.her,
    this.hgm,
    this.kwn,
    this.loz,
    this.ndo,
    this.mya,
    this.gle,
    this.lit,
    this.kon,
    this.lin,
    this.lua,
    this.fil,
    this.msa,
    this.mon,
    this.mey,
    this.tet,
    this.fin,
    this.bar,
    this.amh,
    this.bos,
    this.zdj,
    this.nno,
    this.nob,
    this.smi,
    this.ben,
    this.jam,
    this.cat,
    this.mlg,
    this.gsw,
    this.roh,
    this.tvl,
    this.vie,
    this.nep,
    this.gil,
    this.som,
    this.mah,
    this.aze,
    this.hmo,
    this.tpi,
    this.tur,
    this.tuk,
    this.lao,
    this.crs,
    this.uzb,
    this.nrf,
    this.ces,
    this.slk,
    this.mri,
    this.nzs,
    this.tir,
    this.jpn,
    this.sqi,
    this.bis,
    this.pau,
    this.ton,
    this.fij,
    this.hif,
    this.niu,
    this.aym,
    this.que,
    this.ind,
    this.nfr,
    this.kir,
    this.div,
    this.pih,
    this.prs,
    this.pus,
    this.tgk,
    this.hin,
    this.urd,
    this.lav,
    this.fas,
    this.bul,
    this.est,
    this.hat,
    this.glv,
  });

  Ara? cnr;
  Ara? eng;
  Ara? smo;
  Ara? tkl;
  Ara? spa;
  Ara? fra;
  Ara? ell;
  Ara? khm;
  Ara? zho;
  Ara? ara;
  Ara? hrv;
  Ara? deu;
  Ara? kaz;
  Ara? rus;
  Ara? dan;
  Ara? cal;
  Ara? cha;
  Ara? ita;
  Ara? afr;
  Ara? nbl;
  Ara? nso;
  Ara? sot;
  Ara? ssw;
  Ara? tsn;
  Ara? tso;
  Ara? ven;
  Ara? xho;
  Ara? zul;
  Ara? kin;
  Ara? por;
  Ara? run;
  Ara? ukr;
  Ara? rar;
  Ara? pov;
  Ara? nld;
  Ara? isl;
  Ara? grn;
  Ara? hun;
  Ara? ron;
  Ara? kal;
  Ara? nau;
  Ara? sin;
  Ara? tam;
  Ara? heb;
  Ara? dzo;
  Ara? kor;
  Ara? fao;
  Ara? pap;
  Ara? arc;
  Ara? ckb;
  Ara? ber;
  Ara? mkd;
  Ara? pol;
  Ara? slv;
  Ara? tha;
  Ara? sag;
  Ara? hye;
  Ara? nor;
  Ara? ltz;
  Ara? srp;
  Ara? swe;
  Ara? mfe;
  Ara? swa;
  Ara? kat;
  Ara? mlt;
  Ara? bwg;
  Ara? kck;
  Ara? khi;
  Ara? ndc;
  Ara? nde;
  Ara? nya;
  Ara? sna;
  Ara? toi;
  Ara? zib;
  Ara? bjz;
  Ara? lat;
  Ara? bel;
  Ara? her;
  Ara? hgm;
  Ara? kwn;
  Ara? loz;
  Ara? ndo;
  Ara? mya;
  Ara? gle;
  Ara? lit;
  Ara? kon;
  Ara? lin;
  Ara? lua;
  Ara? fil;
  Ara? msa;
  Ara? mon;
  Ara? mey;
  Ara? tet;
  Ara? fin;
  Ara? bar;
  Ara? amh;
  Ara? bos;
  Ara? zdj;
  Ara? nno;
  Ara? nob;
  Ara? smi;
  Ara? ben;
  Ara? jam;
  Ara? cat;
  Ara? mlg;
  Ara? gsw;
  Ara? roh;
  Ara? tvl;
  Ara? vie;
  Ara? nep;
  Ara? gil;
  Ara? som;
  Ara? mah;
  Ara? aze;
  Ara? hmo;
  Ara? tpi;
  Ara? tur;
  Ara? tuk;
  Ara? lao;
  Ara? crs;
  Ara? uzb;
  Ara? nrf;
  Ara? ces;
  Ara? slk;
  Ara? mri;
  Ara? nzs;
  Ara? tir;
  Ara? jpn;
  Ara? sqi;
  Ara? bis;
  Ara? pau;
  Ara? ton;
  Ara? fij;
  Ara? hif;
  Ara? niu;
  Ara? aym;
  Ara? que;
  Ara? ind;
  Ara? nfr;
  Ara? kir;
  Ara? div;
  Ara? pih;
  Ara? prs;
  Ara? pus;
  Ara? tgk;
  Ara? hin;
  Ara? urd;
  Ara? lav;
  Ara? fas;
  Ara? bul;
  Ara? est;
  Ara? hat;
  Ara? glv;

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        cnr: json["cnr"] == null ? null : Ara.fromJson(json["cnr"]),
        eng: json["eng"] == null ? null : Ara.fromJson(json["eng"]),
        smo: json["smo"] == null ? null : Ara.fromJson(json["smo"]),
        tkl: json["tkl"] == null ? null : Ara.fromJson(json["tkl"]),
        spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
        fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
        ell: json["ell"] == null ? null : Ara.fromJson(json["ell"]),
        khm: json["khm"] == null ? null : Ara.fromJson(json["khm"]),
        zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
        ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
        hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
        deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
        kaz: json["kaz"] == null ? null : Ara.fromJson(json["kaz"]),
        rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
        dan: json["dan"] == null ? null : Ara.fromJson(json["dan"]),
        cal: json["cal"] == null ? null : Ara.fromJson(json["cal"]),
        cha: json["cha"] == null ? null : Ara.fromJson(json["cha"]),
        ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
        afr: json["afr"] == null ? null : Ara.fromJson(json["afr"]),
        nbl: json["nbl"] == null ? null : Ara.fromJson(json["nbl"]),
        nso: json["nso"] == null ? null : Ara.fromJson(json["nso"]),
        sot: json["sot"] == null ? null : Ara.fromJson(json["sot"]),
        ssw: json["ssw"] == null ? null : Ara.fromJson(json["ssw"]),
        tsn: json["tsn"] == null ? null : Ara.fromJson(json["tsn"]),
        tso: json["tso"] == null ? null : Ara.fromJson(json["tso"]),
        ven: json["ven"] == null ? null : Ara.fromJson(json["ven"]),
        xho: json["xho"] == null ? null : Ara.fromJson(json["xho"]),
        zul: json["zul"] == null ? null : Ara.fromJson(json["zul"]),
        kin: json["kin"] == null ? null : Ara.fromJson(json["kin"]),
        por: json["por"] == null ? null : Ara.fromJson(json["por"]),
        run: json["run"] == null ? null : Ara.fromJson(json["run"]),
        ukr: json["ukr"] == null ? null : Ara.fromJson(json["ukr"]),
        rar: json["rar"] == null ? null : Ara.fromJson(json["rar"]),
        pov: json["pov"] == null ? null : Ara.fromJson(json["pov"]),
        nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
        isl: json["isl"] == null ? null : Ara.fromJson(json["isl"]),
        grn: json["grn"] == null ? null : Ara.fromJson(json["grn"]),
        hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
        ron: json["ron"] == null ? null : Ara.fromJson(json["ron"]),
        kal: json["kal"] == null ? null : Ara.fromJson(json["kal"]),
        nau: json["nau"] == null ? null : Ara.fromJson(json["nau"]),
        sin: json["sin"] == null ? null : Ara.fromJson(json["sin"]),
        tam: json["tam"] == null ? null : Ara.fromJson(json["tam"]),
        heb: json["heb"] == null ? null : Ara.fromJson(json["heb"]),
        dzo: json["dzo"] == null ? null : Ara.fromJson(json["dzo"]),
        kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
        fao: json["fao"] == null ? null : Ara.fromJson(json["fao"]),
        pap: json["pap"] == null ? null : Ara.fromJson(json["pap"]),
        arc: json["arc"] == null ? null : Ara.fromJson(json["arc"]),
        ckb: json["ckb"] == null ? null : Ara.fromJson(json["ckb"]),
        ber: json["ber"] == null ? null : Ara.fromJson(json["ber"]),
        mkd: json["mkd"] == null ? null : Ara.fromJson(json["mkd"]),
        pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
        slv: json["slv"] == null ? null : Ara.fromJson(json["slv"]),
        tha: json["tha"] == null ? null : Ara.fromJson(json["tha"]),
        sag: json["sag"] == null ? null : Ara.fromJson(json["sag"]),
        hye: json["hye"] == null ? null : Ara.fromJson(json["hye"]),
        nor: json["nor"] == null ? null : Ara.fromJson(json["nor"]),
        ltz: json["ltz"] == null ? null : Ara.fromJson(json["ltz"]),
        srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
        swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
        mfe: json["mfe"] == null ? null : Ara.fromJson(json["mfe"]),
        swa: json["swa"] == null ? null : Ara.fromJson(json["swa"]),
        kat: json["kat"] == null ? null : Ara.fromJson(json["kat"]),
        mlt: json["mlt"] == null ? null : Ara.fromJson(json["mlt"]),
        bwg: json["bwg"] == null ? null : Ara.fromJson(json["bwg"]),
        kck: json["kck"] == null ? null : Ara.fromJson(json["kck"]),
        khi: json["khi"] == null ? null : Ara.fromJson(json["khi"]),
        ndc: json["ndc"] == null ? null : Ara.fromJson(json["ndc"]),
        nde: json["nde"] == null ? null : Ara.fromJson(json["nde"]),
        nya: json["nya"] == null ? null : Ara.fromJson(json["nya"]),
        sna: json["sna"] == null ? null : Ara.fromJson(json["sna"]),
        toi: json["toi"] == null ? null : Ara.fromJson(json["toi"]),
        zib: json["zib"] == null ? null : Ara.fromJson(json["zib"]),
        bjz: json["bjz"] == null ? null : Ara.fromJson(json["bjz"]),
        lat: json["lat"] == null ? null : Ara.fromJson(json["lat"]),
        bel: json["bel"] == null ? null : Ara.fromJson(json["bel"]),
        her: json["her"] == null ? null : Ara.fromJson(json["her"]),
        hgm: json["hgm"] == null ? null : Ara.fromJson(json["hgm"]),
        kwn: json["kwn"] == null ? null : Ara.fromJson(json["kwn"]),
        loz: json["loz"] == null ? null : Ara.fromJson(json["loz"]),
        ndo: json["ndo"] == null ? null : Ara.fromJson(json["ndo"]),
        mya: json["mya"] == null ? null : Ara.fromJson(json["mya"]),
        gle: json["gle"] == null ? null : Ara.fromJson(json["gle"]),
        lit: json["lit"] == null ? null : Ara.fromJson(json["lit"]),
        kon: json["kon"] == null ? null : Ara.fromJson(json["kon"]),
        lin: json["lin"] == null ? null : Ara.fromJson(json["lin"]),
        lua: json["lua"] == null ? null : Ara.fromJson(json["lua"]),
        fil: json["fil"] == null ? null : Ara.fromJson(json["fil"]),
        msa: json["msa"] == null ? null : Ara.fromJson(json["msa"]),
        mon: json["mon"] == null ? null : Ara.fromJson(json["mon"]),
        mey: json["mey"] == null ? null : Ara.fromJson(json["mey"]),
        tet: json["tet"] == null ? null : Ara.fromJson(json["tet"]),
        fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
        bar: json["bar"] == null ? null : Ara.fromJson(json["bar"]),
        amh: json["amh"] == null ? null : Ara.fromJson(json["amh"]),
        bos: json["bos"] == null ? null : Ara.fromJson(json["bos"]),
        zdj: json["zdj"] == null ? null : Ara.fromJson(json["zdj"]),
        nno: json["nno"] == null ? null : Ara.fromJson(json["nno"]),
        nob: json["nob"] == null ? null : Ara.fromJson(json["nob"]),
        smi: json["smi"] == null ? null : Ara.fromJson(json["smi"]),
        ben: json["ben"] == null ? null : Ara.fromJson(json["ben"]),
        jam: json["jam"] == null ? null : Ara.fromJson(json["jam"]),
        cat: json["cat"] == null ? null : Ara.fromJson(json["cat"]),
        mlg: json["mlg"] == null ? null : Ara.fromJson(json["mlg"]),
        gsw: json["gsw"] == null ? null : Ara.fromJson(json["gsw"]),
        roh: json["roh"] == null ? null : Ara.fromJson(json["roh"]),
        tvl: json["tvl"] == null ? null : Ara.fromJson(json["tvl"]),
        vie: json["vie"] == null ? null : Ara.fromJson(json["vie"]),
        nep: json["nep"] == null ? null : Ara.fromJson(json["nep"]),
        gil: json["gil"] == null ? null : Ara.fromJson(json["gil"]),
        som: json["som"] == null ? null : Ara.fromJson(json["som"]),
        mah: json["mah"] == null ? null : Ara.fromJson(json["mah"]),
        aze: json["aze"] == null ? null : Ara.fromJson(json["aze"]),
        hmo: json["hmo"] == null ? null : Ara.fromJson(json["hmo"]),
        tpi: json["tpi"] == null ? null : Ara.fromJson(json["tpi"]),
        tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
        tuk: json["tuk"] == null ? null : Ara.fromJson(json["tuk"]),
        lao: json["lao"] == null ? null : Ara.fromJson(json["lao"]),
        crs: json["crs"] == null ? null : Ara.fromJson(json["crs"]),
        uzb: json["uzb"] == null ? null : Ara.fromJson(json["uzb"]),
        nrf: json["nrf"] == null ? null : Ara.fromJson(json["nrf"]),
        ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
        slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
        mri: json["mri"] == null ? null : Ara.fromJson(json["mri"]),
        nzs: json["nzs"] == null ? null : Ara.fromJson(json["nzs"]),
        tir: json["tir"] == null ? null : Ara.fromJson(json["tir"]),
        jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
        sqi: json["sqi"] == null ? null : Ara.fromJson(json["sqi"]),
        bis: json["bis"] == null ? null : Ara.fromJson(json["bis"]),
        pau: json["pau"] == null ? null : Ara.fromJson(json["pau"]),
        ton: json["ton"] == null ? null : Ara.fromJson(json["ton"]),
        fij: json["fij"] == null ? null : Ara.fromJson(json["fij"]),
        hif: json["hif"] == null ? null : Ara.fromJson(json["hif"]),
        niu: json["niu"] == null ? null : Ara.fromJson(json["niu"]),
        aym: json["aym"] == null ? null : Ara.fromJson(json["aym"]),
        que: json["que"] == null ? null : Ara.fromJson(json["que"]),
        ind: json["ind"] == null ? null : Ara.fromJson(json["ind"]),
        nfr: json["nfr"] == null ? null : Ara.fromJson(json["nfr"]),
        kir: json["kir"] == null ? null : Ara.fromJson(json["kir"]),
        div: json["div"] == null ? null : Ara.fromJson(json["div"]),
        pih: json["pih"] == null ? null : Ara.fromJson(json["pih"]),
        prs: json["prs"] == null ? null : Ara.fromJson(json["prs"]),
        pus: json["pus"] == null ? null : Ara.fromJson(json["pus"]),
        tgk: json["tgk"] == null ? null : Ara.fromJson(json["tgk"]),
        hin: json["hin"] == null ? null : Ara.fromJson(json["hin"]),
        urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
        lav: json["lav"] == null ? null : Ara.fromJson(json["lav"]),
        fas: json["fas"] == null ? null : Ara.fromJson(json["fas"]),
        bul: json["bul"] == null ? null : Ara.fromJson(json["bul"]),
        est: json["est"] == null ? null : Ara.fromJson(json["est"]),
        hat: json["hat"] == null ? null : Ara.fromJson(json["hat"]),
        glv: json["glv"] == null ? null : Ara.fromJson(json["glv"]),
      );
}

class Ara {
  Ara({
    this.official,
    this.common,
  });

  String? official;
  String? common;

  factory Ara.fromJson(Map<String, dynamic> json) => Ara(
        official: json["official"] == null ? null : json["official"],
        common: json["common"] == null ? null : json["common"],
      );
}

class PostalCode {
  PostalCode({
    this.format,
    this.regex,
  });

  String? format;
  String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"] == null ? null : json["format"],
        regex: json["regex"] == null ? null : json["regex"],
      );
}

class Translations {
  Translations({
    this.ara,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.swe,
    this.urd,
    this.zho,
  });

  Ara? ara;
  Ara? ces;
  Ara? cym;
  Ara? deu;
  Ara? est;
  Ara? fin;
  Ara? fra;
  Ara? hrv;
  Ara? hun;
  Ara? ita;
  Ara? jpn;
  Ara? kor;
  Ara? nld;
  Ara? per;
  Ara? pol;
  Ara? por;
  Ara? rus;
  Ara? slk;
  Ara? spa;
  Ara? swe;
  Ara? urd;
  Ara? zho;

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
        ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
        cym: json["cym"] == null ? null : Ara.fromJson(json["cym"]),
        deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
        est: json["est"] == null ? null : Ara.fromJson(json["est"]),
        fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
        fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
        hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
        hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
        ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
        jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
        kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
        nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
        per: json["per"] == null ? null : Ara.fromJson(json["per"]),
        pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
        por: json["por"] == null ? null : Ara.fromJson(json["por"]),
        rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
        slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
        spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
        swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
        urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
        zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
      );
}
