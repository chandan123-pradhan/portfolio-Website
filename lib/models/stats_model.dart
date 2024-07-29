
class StatsData {
  StatsData({
    required this.totalBalance,
    required this.totalTouches,
    required this.totalPlayer,
    required this.dailyUser,
    required this.onlinePlayer,
  });
  late final int totalBalance;
  late final int totalTouches;
  late final int totalPlayer;
  late final int dailyUser;
  late final int onlinePlayer;
  
  StatsData.fromJson(Map<String, dynamic> json){
    totalBalance = json['total_balance'];
    totalTouches = json['total_touches'];
    totalPlayer = json['total_player'];
    dailyUser = json['daily_user'];
    onlinePlayer = json['online_player'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['total_balance'] = totalBalance;
    _data['total_touches'] = totalTouches;
    _data['total_player'] = totalPlayer;
    _data['daily_user'] = dailyUser;
    _data['online_player'] = onlinePlayer;
    return _data;
  }
}