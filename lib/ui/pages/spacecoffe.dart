import 'package:believers/utils/textstyle.dart';
import 'package:flutter/material.dart';

import '../../work.dart';
import 'second.dart';

class Spacecoffe extends StatefulWidget {
  const Spacecoffe({Key? key}) : super(key: key);

  @override
  _SpacecoffeState createState() => _SpacecoffeState();
}

class _SpacecoffeState extends State<Spacecoffe> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    return Stack(
      children: [
        const HomePage(),

        Padding(
          padding: const EdgeInsets.only(
            //   top: isScreenWide ? 20 : 0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              spaceheading(context),

              isScreenWide
                  ? sizedBox(
                      size: isScreenWide ? size.width / 1.1 : size.width,
                      context,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Web development\n",
                                        style: headTextStyel(context)),
                                    TextSpan(
                                        text:
                                            "We take your Idea and build a beautiful\nfunctional interface that’s fast and modern\n",
                                        style: bodyTextStyel(context)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: isScreenWide ? 105.0 : 0,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Mobile app development\n",
                                        style: headTextStyel(context),
                                      ),
                                      TextSpan(
                                        text:
                                            "By using the last technology we build\n"
                                            "your app once that works on any screen",
                                        style: bodyTextStyel(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          space(context),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text:
                                            "Motion Graphic and Graphic design\n",
                                        style: headTextStyel(context)),
                                    TextSpan(
                                        text:
                                            "Create Graphics and design animated videos that"
                                            "\ndescribe your business and increase user engagement",
                                        style: bodyTextStyel(context)),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Social Media\n",
                                      style: headTextStyel(context),
                                    ),
                                    TextSpan(
                                      text:
                                          "Social Media Post and targeted ads that\n"
                                          "translate to user engagement and business growth",
                                      style: bodyTextStyel(context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : sizedBox(
                      size: size.width,
                      context,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          spaceheading(context),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Web development\n",
                                    style: headTextStyel(context)),
                                TextSpan(
                                    text:
                                        "We take your Idea and build a beautiful functional interface that’s fast and modern\n",
                                    style: bodyTextStyel(context)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: isScreenWide ? 100.0 : 0,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Mobile app development\n",
                                    style: headTextStyel(context),
                                  ),
                                  TextSpan(
                                    text:
                                        "By using the last technology we build\n"
                                        "any app once and it work's on any screen",
                                    style: bodyTextStyel(context),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          space(context),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Motion Graphic and Graphic design\n",
                                    style: headTextStyel(context)),
                                TextSpan(
                                    text:
                                        "Create Graphics and design animated videos that"
                                        "describe your business and increase user engagement",
                                    style: bodyTextStyel(context)),
                              ],
                            ),
                          ),
                          space(context),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Social Media\n",
                                  style: headTextStyel(context),
                                ),
                                TextSpan(
                                  text:
                                      "Social Media Post and targeted ads that\n"
                                      "translate to user engagement and business growth",
                                  style: bodyTextStyel(context),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

              spacePage(context),
              // spaceheading(context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Showcase", style: headTextStyel1(context)),
                      ],
                    ),
                  ),
                  //  space(context),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Some of Our work",
                            style: headTextStyel(context)),
                      ],
                    ),
                  ),
                ],
              ),

              spaceheading(context),
              // // spaceheading(context),
              const Work(),
              // spaceheading(context), const
            ],
          ),
        ),
        //   ],
        // ),
        // const Work(),
      ],
    );
  }
}
