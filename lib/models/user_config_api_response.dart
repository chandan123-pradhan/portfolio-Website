import 'package:my_portfolio/models/boster_model.dart';
import 'package:my_portfolio/models/game_data_model.dart';
import 'package:my_portfolio/models/my_stats_model.dart';

class UserConfigApiResponse {
  UserConfigApiResponse({
    required this.isError,
    required this.message,
    required this.data,
    required this.booster,
    required this.myStats,
  });
  late final bool isError;
  late final String message;
  late final GameData data;
  late final List<Booster> booster;
  late final List<MyStats> myStats;
  
  UserConfigApiResponse.fromJson(Map<String, dynamic> json){
    isError = json['isError'];
    message = json['message'];
    data = GameData.fromJson(json['data']);
    booster = List.from(json['booster']).map((e)=>Booster.fromJson(e)).toList();
    myStats = List.from(json['my_stats']).map((e)=>MyStats.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isError'] = isError;
    _data['message'] = message;
    _data['data'] = data.toJson();
    _data['booster'] = booster.map((e)=>e.toJson()).toList();
    _data['my_stats'] = myStats.map((e)=>e.toJson()).toList();
    return _data;
  }
}


