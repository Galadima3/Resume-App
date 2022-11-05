import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:resume_app/screens/contact_page.dart';

import 'package:resume_app/utils/widgets.dart';

import '../utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Resume App'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          curve: Curves.bounceOut,
                          type: PageTransitionType.rotate,
                          alignment: Alignment.topCenter,
                          child: const ContactPage(),
                          reverseDuration: const Duration(milliseconds: 1100),
                          duration: const Duration(milliseconds: 950)));
                },
                icon: const Hero(
                    tag: 'contact',
                    child: Icon(Icons.person_add))),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                              fit: BoxFit.fill,
                              'assets/images/picture.jpg')),
                    ),
                    const BioData()
                  ],
                ),
              ),
             const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 8, 0),
                child: Text(
                  'I am a mobile developer with experience developing beautiful apps using the Flutter framework. I offer my technical skills as a mobile developer and soft skills such as empathy, team work & dedication',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                    child: Container(
                      height: 35,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kSpacing1,
              SizedBox(
                height: 200,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: isPortrait ? 3 : 4,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  children: const [

                    Tile(location: 'assets/images/dart.png'),
                    Tile(location: 'assets/images/flutter_image.png'),
                    Tile(location: 'assets/images/firebase.png'),
                    Tile(location: 'assets/images/github.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
