import 'package:flutter/material.dart';
import 'package:resume_app/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);
  final String githubUrl = 'https://github.com/Galadima3';
  final String twitterUrl = 'https://twitter.com/3rdGaladima';
  final String hashnodeUrl = 'https://hashnode.com/@Mylez';
  final String _phoneNumber = '+2348108130598';
  final String emailAddress = 'abrahamgaladima300@gmail.com';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contact'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  final call = 'tel:$_phoneNumber';
                  if(await canLaunch(call)){
                      await launch(call);
                  }
                },
                child: const ContactWidget(
                  description: '+234 8108130598',
                  imageLocation: 'assets/images/phone.png',
                ),
              ),
              ContactWidget(
                  description: emailAddress,
                  imageLocation: 'assets/images/email.png'),
              GestureDetector(
                onTap: () async{
                  if(await canLaunchUrl(Uri.parse(twitterUrl))){
                    await launchUrl(Uri.parse(twitterUrl));
                  }

                },
                child: const ContactWidget(
                    description: '@3rdGaladima',
                    imageLocation: 'assets/images/twitter.png'),
              ),
              GestureDetector(
                onTap: () async{
                  if(await canLaunchUrl(Uri.parse(githubUrl))){
                    await launchUrl(Uri.parse(githubUrl));
                  }

                },
                 child: ContactWidget(
                    description: githubUrl,
                    imageLocation: 'assets/images/github_transparent.png'),
              ),
              GestureDetector(
                onTap: () async{
                  if(await canLaunchUrl(Uri.parse(hashnodeUrl))){
                    await launchUrl(Uri.parse(hashnodeUrl));
                  }

                },
                child: ContactWidget(
                    description: hashnodeUrl,
                    imageLocation: 'assets/images/hashnode.png'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final String description;
  final String imageLocation;
  const ContactWidget({
    Key? key,
    required this.description,
    required this.imageLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue.shade400,
        ),
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Image.asset(
                  imageLocation,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: kContactTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
