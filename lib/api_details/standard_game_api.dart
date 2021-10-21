class StandardGameApi {
  List<StandardGame>? standardGame;

  StandardGameApi({this.standardGame});

  StandardGameApi.fromJson(Map<String, dynamic> json) {
    this.standardGame = json["standard_game"] == null
        ? null
        : (json["standard_game"] as List)
            .map((e) => StandardGame.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.standardGame != null)
      data["standard_game"] =
          this.standardGame?.map((e) => e.toJson()).toList();
    return data;
  }
}

class StandardGame {
  String? gameId;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? day;
  String? status;
  String? startTime;
  String? endTime;

  StandardGame(
      {this.gameId,
      this.name,
      this.createdAt,
      this.updatedAt,
      this.day,
      this.status,
      this.startTime,
      this.endTime});

  StandardGame.fromJson(Map<String, dynamic> json) {
    this.gameId = json["game_id"];
    this.name = json["name"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
    this.day = json["day"];
    this.status = json["status"];
    this.startTime = json["start_time"];
    this.endTime = json["end_time"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["game_id"] = this.gameId;
    data["name"] = this.name;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    data["day"] = this.day;
    data["status"] = this.status;
    data["start_time"] = this.startTime;
    data["end_time"] = this.endTime;
    return data;
  }
}
