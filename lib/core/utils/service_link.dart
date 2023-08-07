// ignore_for_file: deprecated_member_use
import 'package:url_launcher/url_launcher.dart';

class ServiceUrl {
  static void launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalNonBrowserApplication)) {
      throw Exception('Could not launch $url');
    }
  }
  static void launchInBrow(String url) async {
      if(await canLaunch(url)){
        await launch(url, forceWebView: true,forceSafariVC: true);  //forceWebView is true now
      }else {
        throw 'Could not launch $url';
      }
  }
}
