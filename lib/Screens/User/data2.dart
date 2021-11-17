// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.name,
        required this.imageUrl,
        required this.stocks,
        required this.contactNo,
    });

    String name;
    String imageUrl;
    List<dynamic> stocks;
    String contactNo;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        name: json["name"],
        imageUrl: json["imageUrl"],
        stocks: List<dynamic>.from(json["stocks"].map((x) => x)),
        contactNo: json["contactNo"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "stocks": List<dynamic>.from(stocks.map((x) => x)),
        "contactNo": contactNo,
    };
}
