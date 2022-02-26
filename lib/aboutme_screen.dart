import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 4 / 5,
            child: Column(
              children: [
                AboutHeaderWidget(),
                AboutWidget(),
                InfoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 500,
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 4)),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      color: Colors.red,
                      child: Image.asset(
                        'images/deling.jpg',
                        width: 400,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Firstname',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(color: Colors.white.withOpacity(0.7)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Delaram',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Lastname',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(color: Colors.white.withOpacity(0.7)),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Sabonchi',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Nationality',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(color: Colors.white.withOpacity(0.7)),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Iran',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Experience',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(color: Colors.white.withOpacity(0.7)),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            '11 years',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 40,
                            width: 60,
                          ),
                        ],
                      ),
                    ])
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Phone Number',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white.withOpacity(0.7)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '+905528021392',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Email',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white.withOpacity(0.7)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'dsabonchi@gmail.com',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Skype',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white.withOpacity(0.7)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'delarams',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Dribbble',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white.withOpacity(0.7)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'delarams',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.download,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 6,
                ),
                Text("DOWNLOAD MY CV",
                    style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xffff0387)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(34.0),
                side: BorderSide(color: Color(0xffff0387)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: Divider(
            color: Colors.white.withOpacity(0.7),
            height: 50,
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experiences',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2021',
                      endYear: 'present',
                      title: 'Freelance UI-UX Designer',
                      place: 'Delarams,Izmir-Turkey',
                      desc:
                          '• inallmyyearsofwork,IalsoworkedonprojectsButIt’sbeenawhileI’mworkingcompletelyasafreelancer,Throughoutthistime,Iworked with several B2B AND B2C projects from Canada, the United States, and Turkey in which I gained work experience for users of different cultures'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2020',
                      endYear: '2021',
                      title: 'Game/UI-UX Designer',
                      place: 'Ela Game,Izmir-Turkey',
                      desc:
                          '• I worked for an international company in Turkey that designed and built hyper-casual games. In this company, I worked on user interface design, user experience, and character and icon design for hyper-casual games'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2019',
                      endYear: '2020',
                      title: 'Senior UI-UX Designer',
                      place: 'Inpin App,Tehran-Iran',
                      desc:
                          '• It was a real estate start-up company renting and selling homes with new and exciting ideas in the real estate industry. In this startup, we worked on the edge of technology I gained a lot of experience in this company in the field of technology and virtual reality (AR)'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2018',
                      endYear: '2019',
                      title: 'Senior UI-UX Designer',
                      place: 'Iran Talent,Tehran-iran',
                      desc:
                          '• Iwasthefirstpersoninthisstartuptojointheteamandmytaskwastomakeanewproductfromthebeginning.Ididallthestepsoftheuser experience and user interface alone The startup was about transferring fresh graduates to work'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2016',
                      endYear: '2018',
                      title: 'Senior UI-UX Designer',
                      place: 'Sahab Prdaz,Tehran-Iran',
                      desc:
                          '• One of my first jobs in UX was working at SAHABPARDAZ,and it was a really great opportunity because I had the chance to work throughthe whole UX pipeline in different projects.'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2015',
                      endYear: '2016',
                      title: 'UI Designer',
                      place: 'Avita DT,Tehran-Iran',
                      desc:
                          '• My first work experience as auser interface designer was formed in this company.I had the chance to work through the whole UI–all the way from doing research all the way to launching the product.'),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 90,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(child: UIUXColumn()),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: SoftSkillsColumn()),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: ToolsColumn()),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Education',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2013',
                      endYear: '2015',
                      title: 'FACE PAINTING DIPLOMA OF DISCONTINUOUS BACHELOR',
                      place: 'Tehran',
                      desc: 'University of Applied Science and Technology'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2010',
                      endYear: '2012',
                      title:
                          'MAKEUP AND MASK DIPLOMA OF DISCONTINUOUS ASSOCIATE',
                      place: 'Tehran',
                      desc: 'University of Applied Science and Technology'),
                  SizedBox(
                    height: 40,
                  ),
                  ExperienceWidget(
                      isExperience: true,
                      startYear: '2009',
                      endYear: '',
                      title: 'Senior UI-UX Designer',
                      place: 'GRAPHIC DIPLOMA OF SENIOR HIGH SCHOOL',
                      desc: 'Masomiye High School'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SoftSkillsColumn extends StatelessWidget {
  const SoftSkillsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Soft Skills',
          style: Theme.of(context).textTheme.headline1!.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 25,
        ),
        AutoSizeText('Design Thinking',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Problem-Solving',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Communication',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Collaboration',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Flexibility',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Empathy',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Teamwork',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Curiosity',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class UIUXColumn extends StatelessWidget {
  const UIUXColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'UI/UX',
          style: Theme.of(context).textTheme.headline1!.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 25,
        ),
        AutoSizeText('User Research',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Information Architecture',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Competitive Analysis',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('User Personas',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Prototyping',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Design Systems',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Responsive Design',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Usability Testing',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class ToolsColumn extends StatelessWidget {
  const ToolsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tools',
          style: Theme.of(context).textTheme.headline1!.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 25,
        ),
        AutoSizeText('Sketch',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Figma',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Adobe XD',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Adobe Ai',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Adobe Ps',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Blender',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Invision',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
        AutoSizeText('Miro',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class AboutHeaderWidget extends StatelessWidget {
  const AboutHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ABOUT', style: Theme.of(context).textTheme.headline5!),
              SizedBox(width: 10),
              Text(
                'ME',
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
                'I DESIGN BEAUTIFUL THINGS, AND I LOVE WHAT I DO.',
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
      ],
    );
  }
}
