import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_uri=Uri.parse('https://www.facebook.com');
final Uri Instagram_uri=Uri.parse('https://www.instagram.com');

Future<void> _launchUrl() async {
  if (!await launchUrl(Facebook_uri)) {
    throw 'Could not launch $Facebook_uri';
  }
}

Future<void> _launchUrl_instagram() async {
  if (!await launchUrl(Instagram_uri)) {
    throw 'Could not launch $Instagram_uri';
  }
}
class urlModele extends StatefulWidget {
  const urlModele({Key? key}) : super(key: key);

  @override
  State<urlModele> createState() => _urlModeleState();
}

class _urlModeleState extends State<urlModele> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [ GestureDetector(
        onTap: _launchUrl,
        child: ListTile(
          title: Text("Facebook"),
          subtitle: Text("Connect Facebook account"),
          leading: Icon(
            Icons.facebook,
            color: Colors.blue,
          ),
        )),
         GestureDetector(
        onTap: _launchUrl_instagram,
        child: ListTile(
          title: Text("instagram"),
          subtitle: Text("Connect Instagram account"),
          leading: Icon(
            Icons.facebook,
            color: Colors.blue,
          ),
        ))],);
  }
}
