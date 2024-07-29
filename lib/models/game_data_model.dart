class GameData {
  GameData({
    required this.lid,
    required this.levelName,
    required this.perTap,
    required this.perMinute,
    required this.levelUp,
  });
  late final String lid;
  late final String levelName;
  late final String perTap;
  late final String perMinute;
  late final String levelUp;
  
  GameData.fromJson(Map<String, dynamic> json){
    lid = json['lid'];
    levelName = json['level_name'];
    perTap = json['per_tap'];
    perMinute = json['per_minute'];
    levelUp = json['level_up'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lid'] = lid;
    _data['level_name'] = levelName;
    _data['per_tap'] = perTap;
    _data['per_minute'] = perMinute;
    _data['level_up'] = levelUp;
    return _data;
  }
}