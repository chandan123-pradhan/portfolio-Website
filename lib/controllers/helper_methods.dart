import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_storage/firebase_storage.dart';
class HelperMethods{
 static  void LaunchUrl(String url)async{
    
    if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
  }


Future<String> getImageUrl(String imageName) async {
  final storage = FirebaseStorage.instance;
  final reference = storage.ref().child(imageName);

  try {
    final url = await reference.getDownloadURL();
    return url;
  } catch (error) {
    // Handle errors (e.g., file not found, permission issues)
    print(error.toString());
    return ""; // Or throw an exception if you prefer
  }
}




}