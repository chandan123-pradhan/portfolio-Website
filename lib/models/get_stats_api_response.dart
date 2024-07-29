import 'package:my_portfolio/models/stats_model.dart';

class GetStatsApiResponse {
  GetStatsApiResponse({
    required this.isError,
    required this.message,
    required this.data,
  });
  late final bool isError;
  late final String message;
  late final StatsData data;
  
  GetStatsApiResponse.fromJson(Map<String, dynamic> json){
    isError = json['isError'];
    message = json['message'];
    data = StatsData.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isError'] = isError;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}
