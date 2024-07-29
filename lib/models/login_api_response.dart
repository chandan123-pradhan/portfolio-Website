import 'package:my_portfolio/models/user_model.dart';

class LoginApiResponse {
  LoginApiResponse({
    required this.isError,
    required this.message,
    required this.data,
  });
  late final bool isError;
  late final String message;
  late final Usermodel data;
  
  LoginApiResponse.fromJson(Map<String, dynamic> json){
    isError = json['isError'];
    message = json['message'];
    data = Usermodel.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isError'] = isError;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}
