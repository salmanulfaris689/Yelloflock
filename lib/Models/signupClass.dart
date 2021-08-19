import 'dart:convert';

Signupauth signupauthFromJson(String str) => Signupauth.fromJson(json.decode(str));

String signupauthToJson(Signupauth data) => json.encode(data.toJson());

class Signupauth {
  Signupauth({
    this.error,
    this.message,
  });

  bool error;
  String message;

  factory Signupauth.fromJson(Map<String, dynamic> json) => Signupauth(
    error: json["error"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
  };
}
