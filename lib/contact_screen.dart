import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/widgets.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width - 320;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('GET', style: Theme.of(context).textTheme.headline5!),
                  SizedBox(width: 10),
                  Text(
                    'IN TOUCH',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Color(0xffff0387)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '_____',
                    style: TextStyle(
                        color: Color(0xffff0387), fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'I’M ALWAYS OPEN TO DISCUSSING PRODUCT DESIGN WORK OR PARTNERSHIPS.',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '_____',
                    style: TextStyle(
                        color: Color(0xffff0387), fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 70),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.phone_circle,
                            size: 22,
                            color: Color(0xffff0387),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+905528021392',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Email',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.mail,
                            size: 22,
                            color: Color(0xffff0387),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Dsabonchi@gmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Instagram',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.increase_indent,
                            size: 22,
                            color: Color(0xffff0387),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'delaram.sabonchi',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Dribbble',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.doc_richtext,
                            size: 22,
                            color: Color(0xffff0387),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Delaram-sabonchi',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
