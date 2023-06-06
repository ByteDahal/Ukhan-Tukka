import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ukhantukka/Data/firstletter.dart';

import 'package:ukhantukka/Data/data.dart';
import 'package:ukhantukka/screen/drawer.dart';
import 'package:page_transition/page_transition.dart';
import 'listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  changeNumber() {
    setState(() {
      number = Random().nextInt(ukhanData.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('नेपाली उखान टुक्का')),
      ),

      // child: Padding(
      //   padding: const EdgeInsets.only(top: 20),
      //   child: ListView(
      //     children: [
      //       const Card(
      //         margin: EdgeInsets.all(10),
      //         child: SizedBox(
      //           height: 40,
      //           child: Center(
      //             child: Text(
      //               'नेपाली उखान टुक्का',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('Home'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.policy),
      //         title: const Text('Privacy Policy'),
      //         onTap: () {
      //           launchUrlString("https://booksbazaar.com.np/privacypolicy/");
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.info),
      //         title: const Text('About Us'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const AboutUsScreen()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.messenger_outlined),
      //         title: const Text('Feedback'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const FeedBack()),
      //           );
      //         },
      //       ),
      //       const Divider(
      //         color: Colors.black,
      //         thickness: 0.5,
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.logout),
      //         title: const Text('Exit'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      body: Stack(
        children: [
          Container(
            color: Colors.white60,
          ),
          SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Card(
                    color: const Color.fromRGBO(241, 224, 172, 0.8),
                    child: Center(
                      child: Text(
                        ukhanData[number],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      side: const BorderSide(
                        color: Color.fromRGBO(241, 224, 172, 1),
                        width: 2,
                      )),
                  child: const Text(
                    'अर्को ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    changeNumber();
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 9,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: first.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.teal,
                      child: TextButton(
                        child: Text(
                          first[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) =>
                          //         Listview(text: first[index])));
                          Navigator.push(
                              context,
                              PageTransition(
                                child: Listview(text: first[index]),
                                duration: const Duration(milliseconds: 500),
                                type: PageTransitionType.size,
                                alignment: Alignment.center,
                              ));
                        },
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
      drawer: const Newdrawer(),
    );
  }
}
