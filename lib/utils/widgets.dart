import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:resume_app/utils/constants.dart';
import 'package:resume_app/screens/portfolio_page.dart';

//Widget containing my BioData
class BioData extends StatelessWidget {
  const BioData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'John Galadima',
            style: kNameTextStyle,
          ),
          kSpacing,
          const Text(
            'Flutter Mobile Developer',
            style: kJobTextStyle,
          ),
          kSpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.place_outlined),
              Text(
                'Abuja, Nigeria',
                style: kLocationTextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}



class Tile extends StatelessWidget {
  final String location;
  const Tile({
    Key? key, required this.location
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.push(context, PageTransition(
          type: PageTransitionType.rightToLeftWithFade,
          child: const PortfolioPage(),
          reverseDuration: const Duration(milliseconds: 950),
          duration: const Duration(milliseconds: 950)));
    },child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height: 90, width: 90, child: Image.asset(location),),
    ));
  }
}



