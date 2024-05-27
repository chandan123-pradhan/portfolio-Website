import 'package:url_launcher/url_launcher.dart';

class HelperMethods{
 static  void LaunchUrl(String url)async{
    
    if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
  }
}