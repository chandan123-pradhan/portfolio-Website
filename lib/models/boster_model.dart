class Booster {
  Booster({
    required this.boosterid,
    required this.title,
    required this.level,
    required this.icon,
    required this.boosterDesc,
    required this.amount,
    required this.secondDesc,
    required this.status,
    required this.type,
    required this.work,
  });
  late final String boosterid;
  late final String title;
  late final String level;
  late final String icon;
  late final String boosterDesc;
  late final String amount;
  late final String secondDesc;
  late final String status;
  late final String type;
  late final String work;
  
  Booster.fromJson(Map<String, dynamic> json){
    boosterid = json['boosterid'];
    title = json['title'];
    level = json['level'];
    icon = json['icon'];
    boosterDesc = json['booster_desc'];
    amount = json['amount'];
    secondDesc = json['second_desc'];
    status = json['status'];
    type = json['type'];
    work = json['work'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['boosterid'] = boosterid;
    _data['title'] = title;
    _data['level'] = level;
    _data['icon'] = icon;
    _data['booster_desc'] = boosterDesc;
    _data['amount'] = amount;
    _data['second_desc'] = secondDesc;
    _data['status'] = status;
    _data['type'] = type;
    _data['work'] = work;
    return _data;
  }
}
