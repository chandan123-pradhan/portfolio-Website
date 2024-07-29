
class Usermodel {
  Usermodel({
    required this.userid,
    required this.userToken,
    required this.name,
    required this.balance,
    required this.touches,
    required this.createAt,
    required this.liveAt,
  });
  late final String userid;
  late final String userToken;
  late final String name;
  late final String balance;
  late final String touches;
  late final String createAt;
  late final String liveAt;
  
  Usermodel.fromJson(Map<String, dynamic> json){
    userid = json['userid'];
    userToken = json['userToken'];
    name = json['name'];
    balance = json['balance'];
    touches = json['touches'];
    createAt = json['create_at'];
    liveAt = json['live_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userid'] = userid;
    _data['userToken'] = userToken;
    _data['name'] = name;
    _data['balance'] = balance;
    _data['touches'] = touches;
    _data['create_at'] = createAt;
    _data['live_at'] = liveAt;
    return _data;
  }
}