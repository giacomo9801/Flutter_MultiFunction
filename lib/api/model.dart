// To parse this JSON data, do
//
//     final crypto = cryptoFromJson(jsonString);

//generata da questo sito https://app.quicktype.io/

import 'dart:convert';

List<Crypto> cryptoFromJson(String str) =>
    List<Crypto>.from(json.decode(str).map((x) => Crypto.fromJson(x)));

String cryptoToJson(List<Crypto> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Crypto {
  String id;
  String symbol;
  String name;
  Map<String, String?> platforms;

  Crypto({
    required this.id,
    required this.symbol,
    required this.name,
    required this.platforms,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) => Crypto(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        platforms: Map.from(json["platforms"])
            .map((k, v) => MapEntry<String, String?>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "platforms":
            Map.from(platforms).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
