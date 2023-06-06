import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);
  static const routeName = "/feedback";
  @override
  State<FeedBack> createState() => _FeedBackState();
}

TextEditingController message = TextEditingController();

class _FeedBackState extends State<FeedBack> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Feedback',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
        child: Column(
          children: [
            const Text(
              'Contact us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              //color: const Color.fromRGBO(152, 180, 170, 0.7),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 30, left: 5, right: 5),
                child: Form(
                    key: formkey,
                    child: SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                                child: Icon(
                              Icons.email,
                              size: 30,
                            )),
                            const SizedBox(height: 15),
                            const Text('Enter email'),
                            TextFormField(
                                decoration: InputDecoration(
                                    // prefixIcon: const Icon(Icons.email_outlined),
                                    //labelText: "Enter Email",
                                    border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return "Enter Your email";
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Enter message'),
                            TextFormField(
                                controller: message,
                                minLines: 3,
                                maxLines: 10,
                                decoration: InputDecoration(
                                    //label: const Text('Enter message'),
                                    border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return "Message field can't be empty";
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: ElevatedButton.icon(
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      // ignore: deprecated_member_use
                                      launchUrlString(
                                          'mailto:info@thulotechnology.com?body= ${message.text}');
                                    }
                                  },
                                  icon: const Icon(Icons.send),
                                  label: const Text('Send')),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
