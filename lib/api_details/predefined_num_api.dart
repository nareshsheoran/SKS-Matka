
class PredefinedNumber {
  List<Numbers>? numbers;

  PredefinedNumber({this.numbers});

  PredefinedNumber.fromJson(Map<String, dynamic> json) {
    this.numbers = json["numbers"]==null ? null : (json["numbers"] as List).map((e)=>Numbers.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.numbers != null)
      data["numbers"] = this.numbers?.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Numbers {
  String? id;
  String? subGame;
  String? number;
  String? createdAt;
  String? updatedAt;

  Numbers({this.id, this.subGame, this.number, this.createdAt, this.updatedAt});

  Numbers.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.subGame = json["sub_game"];
    this.number = json["number"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["sub_game"] = this.subGame;
    data["number"] = this.number;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    return data;
  }
}