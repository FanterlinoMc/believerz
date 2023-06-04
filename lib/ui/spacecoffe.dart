import 'package:believers/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'second.dart';

class Spacecoffe extends StatefulWidget {
  const Spacecoffe({Key? key}) : super(key: key);

  @override
  _SpacecoffeState createState() => _SpacecoffeState();
}

class _SpacecoffeState extends State<Spacecoffe> {
  // //late Artboard _riveArtboard;
  // // late Artboard _riveArtboardX;
  // // StateMachineController? _controller;
  // // SMIInput<double>? _progress;
  // // String plantButtonText = "";

  // @override
  // void initState() {
  //   super.initState();
  //   // plantButtonText = "Plant";
  //   // Load the animation file from the bundle, note that you could also
  //   // download this. The RiveFile just expects a list of bytes.
  //   rootBundle.load('assets/space_coffee.riv').then(
  //     (data) async {
  //       // Load the RiveFile from the binary data.
  //       final file = RiveFile.import(data);

  //       // The artboard is the root of the animation and gets drawn in the
  //       // Rive widget.
  //       final artboard = file.mainArtboard;
  //       var controller =
  //           StateMachineController.fromArtboard(artboard, 'State Machine 1');
  //       if (controller != null) {
  //         artboard.addController(controller);
  //         //   _progress = controller.findInput('input');
  //       }
  //       setState(() => _riveArtboard = artboard);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    return Stack(
      children: [
        const HomePage(),
        // SizedBox(

        //     // ResponsiveScaledBox renders its child with a FittedBox set to the `width` value.
        //     // Set the fixed width value based on the active breakpoint.
        //     width: size.width,
        //     child: const RiveAnimation.asset(
        //       'assets/space_coffee.riv',
        //       artboard: "New Artboard",
        //     )

        //     // Rive(
        //     //   useArtboardSize: true,
        //     //   fit: BoxFit.fitWidth,
        //     //   alignment: Alignment.topCenter,
        //     //   artboard: _riveArtboard,
        //     // ),
        //     ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: ResponsiveValue<double>(context,
                  defaultValue: 200.0,
                  conditionalValues: [
                    // const Condition.equals(name: MOBILE, value: 160),
                    const Condition.smallerThan(name: DESKTOP, value: 120.0),
                    // const Condition.smallerThan(name: DESKTOP, value: 300.0),
                    // const Condition.between(start: 400, end: 1100, value: 300),
                    // const Condition.between(start: 1200, end: 1500, value: 400),
                    // There are no conditions for width over 1200
                    // because the `maxWidth` is set to 1200 via the MaxWidthBox.
                  ]).value,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[800], side: const BorderSide()),
                child: Text(
                  "Get in Touch",
                  style: bodyTextStyel(context),
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spaceheading(context),

              sizedBox(
                context,
                child: Text(
                    // "we believe that our Dreams and Ideas are worth shearing\n"
                    // ""
                    "We provide software services to help you bring your Ideas\n "
                    ""
                    "to life or Grow your business by having an online presence\n",
                    style: bodyTextStyel(context)),
              ),
              //  space(context),

              sizedBox(
                context,
                child: isScreenWide
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " Mobile applications & Website\n",
                                  style: headTextStyel(context),
                                ),
                                TextSpan(
                                  text: "Designing Building \n"
                                      "maintenance Software",
                                  style: bodyTextStyel(context),
                                ),
                              ],
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Carphic Design\n",
                                    style: headTextStyel(context)),
                                TextSpan(
                                    text: "Designing Building\n"
                                        " maintenance Software",
                                    style: bodyTextStyel(context)),
                              ],
                            ),
                          ),

                          // const Text(
                          //   "Carphic Design",
                          //   style: TextStyle(
                          //       color: Colors.greenAccent, fontSize: 20),
                          // ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " Mobile applications & Website\n",
                                  style: headTextStyel(context),
                                ),
                                TextSpan(
                                  text:
                                      "Designing Building & maintenance Software\n",
                                  style: bodyTextStyel(context),
                                ),
                              ],
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Carphic Design\n",
                                    style: headTextStyel(context)),
                                TextSpan(
                                    text:
                                        "Designing Building & maintenance Software\n",
                                    style: bodyTextStyel(context)),
                              ],
                            ),
                          ),

                          // const Text(
                          //   "Carphic Design",
                          //   style: TextStyle(
                          //       color: Colors.greenAccent, fontSize: 20),
                          // ),
                        ],
                      ),
              ),
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
