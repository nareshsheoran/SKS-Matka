class StandardGameApi {
 late List<StandardGame> standardGame;

  StandardGameApi({required this.standardGame});

  StandardGameApi.fromJson(Map<String, dynamic> json) {
    this.standardGame = (json["standard_game"] == null
        ? null
        : (json["standard_game"] as List)
            .map((e) => StandardGame.fromJson(e))
            .toList())!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.standardGame != null)
      data["standard_game"] =
          this.standardGame.map((e) => e.toJson()).toList();
    return data;
  }
}

class StandardGame {
late  String gameId;
late  String name;
late String createdAt;
late  String updatedAt;
late  String day;
late  String status;
late  String startTime;
late  String endTime;

  StandardGame(
      {required this.gameId,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      required this.day,
      required this.status,
      required this.startTime,
      required this.endTime});

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
