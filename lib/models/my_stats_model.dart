

class MyStats {
  MyStats({
    required this.id,
    required this.userToken,
    required this.date,
    required this.boosterid,
    required this.status,
    required this.type,
  });
  late final String id;
  late final String userToken;
  late final String date;
  late final String boosterid;
  late final String status;
  late final String type;
  
  MyStats.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userToken = json['userToken'];
    date = json['date'];
    boosterid = json['boosterid'];
    status = json['status'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['userToken'] = userToken;
    _data['date'] = date;
    _data['boosterid'] = boosterid;
    _data['status'] = status;
    _data['type'] = type;
    return _data;
  }
}