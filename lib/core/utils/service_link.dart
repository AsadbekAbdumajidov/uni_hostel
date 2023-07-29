// ignore_for_file: deprecated_member_use
import 'package:url_launcher/url_launcher.dart';

class ServiceUrl {
  static void launchURL(text) async {
    String url = text;
    if (!await launch(url)) throw 'Could not launch $url';
  }

  static void launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw Exception('Could not launch $url');
    }
  }

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
