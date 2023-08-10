import 'dart:ui';

class TranportModel {
  String? buscode;
  String? type;
  String? route;
  Color? colorCode;

  TranportModel({
    required this.buscode,
    required this.type,
    required this.route,
    required this.colorCode,
  });

  TranportModel.fromJson(Map<String, dynamic> json) {
    buscode = json['buscode'];
    type = json['type'];
    route = json['route'];
    colorCode = json['colorCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['buscode'] = buscode;
    data['type'] = type;
    data['route'] = route;
    data['colorCode'] = colorCode;
    return data;
  }
}

final TranportModel tranform1 = TranportModel(
  buscode: "35",
  type: "Bus",
  route: "Varsak Altıayak Depolama - Meydan",
  colorCode: const Color(0xFFFF0000),
);
final TranportModel tranform2 = TranportModel(
  buscode: "45",
  type: "Bus",
  route: "Çamköy - Meydan Depolama",
  colorCode: const Color(0xFFFF0000),
);
final TranportModel tranform3 = TranportModel(
  buscode: "35",
  type: "Bus",
  route: "Varsak Altıayak Depolama - Meydan",
  colorCode: const Color(0xFFFF0000),
);

final TranportModel tranform4 = TranportModel(
  buscode: "46",
  type: "Bus",
  route: "Meydan Depolama - Altınova",
  colorCode: const Color(0xFFFF0000),
);
final TranportModel tranform5 = TranportModel(
  buscode: "104",
  type: "Bus",
  route: "Meydan Depolama - Altınova Mah.",
  colorCode: const Color(0xFFFAA61A),
);
final TranportModel tranform6 = TranportModel(
  buscode: "106",
  type: "Bus",
  route: "Kepez Kaymakamlık - Kültür",
  colorCode: const Color(0xFFFAA61A),
);
final TranportModel tranform7 = TranportModel(
  buscode: "112",
  type: "Bus",
  route: "Varsak Belediye - Kepez Devlet Has.",
  colorCode: const Color(0xFFFAA61A),
);
final TranportModel tranform8 = TranportModel(
  buscode: "188",
  type: "Bus",
  route: "Uncalı Mezarlığı - Kurşunlu Mezarlığı",
  colorCode: const Color(0xFFFAA61A),
);
final TranportModel tranform9 = TranportModel(
  buscode: "500",
  type: "Bus",
  route: "Otogar Depolama - Saklıkent",
  colorCode: const Color(0xFFFAA61A),
);
final TranportModel tranform10 = TranportModel(
  buscode: "503",
  type: "Bus",
  route: "Otogar Depolama - Aşağı Karaman",
  colorCode: const Color(0xFFFAA61A),
);
final TranportModel tranform11 = TranportModel(
  buscode: "506",
  type: "Bus",
  route: "Meydan Depolama - Yağca",
  colorCode: const Color(0xFFFAA61A),
);

final List<TranportModel> transportList = <TranportModel>[
  tranform1,
  tranform2,
  tranform3,
  tranform4,
  tranform5,
  tranform6,
  tranform7,
  tranform8,
  tranform9,
  tranform10,
  tranform11,
];
