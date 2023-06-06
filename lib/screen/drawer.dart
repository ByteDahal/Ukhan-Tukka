import 'package:flutter/material.dart';
import 'package:ukhantukka/screen/aboutus.dart';
import 'package:ukhantukka/screen/feedback.dart';
import 'package:ukhantukka/screen/homepage.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Newdrawer extends StatefulWidget {
  const Newdrawer({Key? key}) : super(key: key);

  @override
  State<Newdrawer> createState() => _NewdrawerState();
}

class _NewdrawerState extends State<Newdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text(
                  'नेपाली उखान टुक्का',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          menu(
            text: 'Home',
            icon: Icons.home,
            onclicked: () => selecteditem(context, 0),
          ),
          menu(
            text: 'Privacy policy',
            icon: Icons.policy,
            onclicked: () => selecteditem(context, 1),
          ),
          menu(
            text: 'About us',
            icon: Icons.info,
            onclicked: () => selecteditem(context, 2),
          ),
          menu(
            text: 'Feedback',
            icon: Icons.message_outlined,
            onclicked: () => selecteditem(context, 3),
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.07,
            indent: 25,
            endIndent: 50,
          ),
          menu(
            text: 'Exit',
            icon: Icons.logout,
            onclicked: () => selecteditem(context, 4),
          ),
        ],
      ),
    );
  }

  Widget menu({
    required String text,
    required IconData icon,
    VoidCallback? onclicked,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black54,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 15,
        ),
      ),
      hoverColor: const Color.fromARGB(179, 208, 199, 199),
      onTap: onclicked,
    );
  }
}

selecteditem(BuildContext context, int i) {
  switch (i) {
    case 0:
      Navigator.pushNamed(context, HomePage.routeName);
      break;
    case 1:
      launchUrlString("https://booksbazaar.com.np/privacypolicy/");
      break;
    case 2:
      Navigator.pushNamed(context, AboutUsScreen.routeName);
      break;
    case 3:
      Navigator.pushNamed(context, FeedBack.routeName);
      break;
    case 4:
      Navigator.of(context).pop();
      break;
  }
}
