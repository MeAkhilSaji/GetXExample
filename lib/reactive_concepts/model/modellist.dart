part of '../reactive_concepts.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String greeting;
  int data;

  Welcome({
    required this.greeting,
    required this.data,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        greeting: json["greeting"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "data": data,
      };
}
