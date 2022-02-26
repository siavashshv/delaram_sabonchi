import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';




class ExperienceWidget extends StatelessWidget {
  final bool isExperience;
  final String startYear;
  final String endYear;
  final String title;
  final String place;
  final String desc;
  const ExperienceWidget({
    Key? key,
    required this.isExperience,
    required this.startYear,
    required this.endYear,
    required this.title,
    required this.place,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff34495E),
              ),
              child: Icon(
                isExperience ? IconlyBroken.work : IconlyBroken.document,
                size: 24,
                color: Colors.white,
              ),
            ),
            Container(width: 1, height: 90, color: Color(0xff33495E))
          ],
        ),
        SizedBox(
          width: 16,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff33495E),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text('$startYear - $endYear',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 12)),
                ),
              ),
              SizedBox(height: 20),
              Text('$title',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Color(0xffff0387), fontSize: 16)),
              SizedBox(height: 12),
              Row(
                children: [
                  Text(' - ',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Color(0xffff0387))),
                  Text(
                    '$place',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text('$desc',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 15, color: Colors.white))
            ],
          ),
        )
      ],
    );
  }
}

class ContactWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final double width;
  const ContactWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 180,
      color: Color(0xff111419),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Color(0xff34495E)),
              child: Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(description, style: Theme.of(context).textTheme.subtitle1),
              ],
            )
          ],
        ),
      ),
    );
  }
}




