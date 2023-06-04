import 'package:url_launcher/url_launcher.dart';

class URLLauncherService {
  void browse(String url) => launchUrl(Uri.parse(url));
  void call(String number) => launchUrl(Uri.parse('tel:$number'));
  void sendSms(String number) => launchUrl(Uri.parse('sms:$number'));
  void sendEmail(String email) => launchUrl(Uri.parse('mailto:$email'));
}
