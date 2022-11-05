import 'package:flutter/material.dart';
import 'package:resume_app/utils/constants.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Portfolio'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 0),
                    child: Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Experience',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const PortfolioWidget(
                  language: 'Flutter',
                  experience: '~ 1 year',
                  imageLocation: 'assets/images/flutter_image.png'),
              const PortfolioWidget(
                  language: 'Firebase',
                  experience: '1 year',
                  imageLocation: 'assets/images/firebase.png'),
              const PortfolioWidget(
                  language: 'Python',
                  experience: '~ 1 year',
                  imageLocation: 'assets/images/python.jpg'),


            ],
          ),
        ),
      ),
    );
  }
}

class PortfolioWidget extends StatelessWidget {
  final String language;
  final String experience;
  final String imageLocation;
  const PortfolioWidget({
    Key? key,
    required this.language,
    required this.experience,
    required this.imageLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
        ),
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  width: 85,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    imageLocation,
                    fit: BoxFit.fill,
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSpacing,
                Text(
                  language,
                  style: kPortfolioHeaderTextStyle,
                ),
                Text(
                  experience,
                  style: kPortfolioTextStyle,
                ),
                kSpacing,
              ],
            )
          ],
        ),
      ),
    );
  }
}
