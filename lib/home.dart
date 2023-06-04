import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:believers/utils/textstyle.dart';
import 'package:flutter/material.dart';

import 'ui/spacecoffe.dart';
import 'work.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff192028),
      appBar: AppBar(
        elevation: 0,
        //  foregroundColor: Color.fromARGB(0, 10, 5, 17),
        backgroundColor: const Color(0xff192028),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('BELIEVERZ',
                    textStyle: headTextStyel1(context)),
              ],
            ),
            sizedBox(
              context,
              child: DefaultTextStyle(
                style: headTextStyel1(context),
                child: AnimatedTextKit(
                  displayFullTextOnTap: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        'We believe that our Dreams and Ideas are worth shearing ',
                        // 'we provide software services to help you bring your Ideas '
                        // 'to life or Grow your business by having an online presence',
                        speed: const Duration(milliseconds: 100)),
                    // TypewriterAnimatedText(
                    //     'we provide software services to help you bring your Ideas'),
                    // TypewriterAnimatedText(
                    //     'to life or Grow your business by having an online presence'),
                    // TypewriterAnimatedText(
                    //     'Do not test bugs out, design them out'),
                  ],
                  onFinished: () {},
                  onTap: () {
                    //   print("Tap Event");
                  },
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
                onPressed: () {},
                child: Text("Home", style: headTextStyel1(context))),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
                onPressed: () {},
                child: Text("About", style: headTextStyel1(context))),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
                onPressed: () {},
                child: Text("Our Work", style: headTextStyel1(context))),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
                onPressed: () {},
                child: Text("Careers", style: headTextStyel1(context))),
          ),
        ],
      ),
      body: ListView(children: const [
        Spacecoffe(),
        // spacePage(context),
        // Spacecoffe(),
        Work(),

        //const HomePage(),
      ]),
    );
  }
}
