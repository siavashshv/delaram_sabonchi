import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/conts_routes.dart';


class HomeScreen extends StatelessWidget {
  final VoidCallback onAboutMe;
  final VoidCallback onPortfoilo;
  const HomeScreen(
      {Key? key, required this.onAboutMe, required this.onPortfoilo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'images/delibg.jpg',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2,
          child: SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'HI THERE !',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("I'M ", style: Theme.of(context).textTheme.headline3),
                    AnimatedTextKit(
                      repeatForever: true,
                      pause: Duration(milliseconds: 2000),
                      animatedTexts: [
                        TypewriterAnimatedText("Delaram Sabonchi",
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Color(0xffff0387))),
                        TypewriterAnimatedText("UI Designer",
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Color(0xffff0387))),
                        TypewriterAnimatedText('UX Designer',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Color(0xffff0387))),
                        TypewriterAnimatedText('Graphic Designer',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Color(0xffff0387))),
                        TypewriterAnimatedText('Game Designer',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Color(0xffff0387))),
                        TypewriterAnimatedText('UI-UX Mentor',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Color(0xffff0387))),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                      "I have experience in creating empathy with users through design thinking,I'm curious to gain a better understanding of human behavior through effective communication and research methods.",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              height: 1.3)
                          .copyWith(color: Colors.white, letterSpacing: 1)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          onAboutMe();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text('MORE ABOUT ME',
                                  style: Theme.of(context).textTheme.headline4),
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffff0387)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34.0),
                              side: BorderSide(color: Color(0xffff0387)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: TextButton(
                          onPressed: () {
                            onPortfoilo();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.personal_injury,
                                  color: Color(0xffff0387),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text('PORTFOLIO',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(color: Color(0xffff0387))),
                              ],
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(34.0),
                                side: BorderSide(color: Color(0xffff0387)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
