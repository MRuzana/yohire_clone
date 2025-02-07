import 'package:flutter/material.dart';
import 'package:yohire/views/screens/login_screen.dart';
import 'package:yohire/views/styles/button_style.dart';
import 'package:yohire/views/styles/text_style.dart';
import 'package:yohire/views/widgets/recommd_job_card.dart';
import 'package:yohire/views/widgets/trending_job_card.dart';
import 'package:yohire/views/widgets/title_header.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), child: _appbar(context)),
      body: SafeArea(
          child: Column(
        children: [
          // on trending
          Section1(),
          // recommendations
          Expanded(child: Section2()),
        ],
      )),
    );
  }
}

Widget _appbar(BuildContext context) {
  return AppBar(
    toolbarHeight: 60,
    //  backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/yohire_logo.png',
          height: 150,
          width: 150,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LoginScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0); // Slide from right
                      const end = Offset.zero;
                      const curve = Curves.easeInOut; // Smooth animation

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ));
            },
            style: elevatedButtonStyle,
            child: Text(
              'Login/Register ',
              style: customTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ))
      ],
    ),
  );
}

// on trending

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildHeader('On Trending', 'Show All'),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return buildJobCard();
              }),
        )
      ],
    );
  }
}

// recommendations

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildHeader('Recommendations', 'Show All'),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return buildRecommendJobCard();
              }),
        )
      ],
    );
  }
}
