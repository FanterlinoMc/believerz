import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'ui/second.dart';
import 'utils/textstyle.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
//  late Artboard _riveArtboard;
  // late Artboard _riveArtboardX;
  // // StateMachineController? _controller;
  // // SMIInput<double>? _progress;
  // // String plantButtonText = "";

  // @override
  // void initState() {
  //   super.initState();
  //   // plantButtonText = "Plant";
  //   // Load the animation file from the bundle, note that you could also
  //   // download this. The RiveFile just expects a list of bytes.

  //   rootBundle.load('assets/toemater_timer.riv').then(
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
  //         //SimpleAnimation("start");
  //         controller.findInput("strat");
  //         //   _progress = controller.findInput('input');
  //       }
  //       setState(() => _riveArtboardX = artboard);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    List<String> image = [
      "assets/chat.png",
      "assets/order.png",
      "assets/profile.png",
      "assets/map.png",
      // "assets/review.png",
    ];
    return Stack(
      children: [
        const HomePage(),
        isScreenWide
            ? Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(
                        //   height: 50,
                        // ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "ClowdStores\n",
                                  style: headTextStyel(context)),
                              TextSpan(
                                  text:
                                      " is location-based shopping Marketplace\nfor local stores that connect ",
                                  style: bodyTextStyel(context)),
                              TextSpan(
                                  text:
                                      "people to their\nfavorite local businesses ",
                                  style: bodyTextStyel(context)),
                              TextSpan(
                                  text:
                                      "and find the right\nproduct,and the right price form the nearest\nstore\n",
                                  style: bodyTextStyel(context)),
                              TextSpan(
                                  text:
                                      "Search , Order , Form the Nearest Store\n",
                                  style: bodyTextStyel(context))
                            ],
                          ),
                        ),

                        Text("Clowdstores offers to the local barnd\n",
                            style: headTextStyel(context)),
                        Text("1-exposure and visibility\n",
                            style: bodyTextStyel(context)),
                        Text(
                            "2-attract more customers to their businesses online \n",
                            style: bodyTextStyel(context)),
                        Text(
                            "3-clowd makes it easy to reach and connect with customers\n",
                            style: bodyTextStyel(context)),
                        // Text("Find location of the brand\n",
                        //     style: bodyTextStyel(context))
                      ],
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(
                        //   height: 50,
                        // ),

                        Text("Clowdstores Feautres\n",
                            style: headTextStyel(context)),
                        Text("write reviews\n", style: bodyTextStyel(context)),
                        Text("send text messages\n",
                            style: bodyTextStyel(context)),
                        Text("Find location of the brand\n",
                            style: bodyTextStyel(context))

                        // const Text(
                        //   "is Marketplace for local stores that connect \n"
                        //   ""
                        //   "people to their favorite local businesses\n "
                        //   ""
                        //   "clowdstores feautres\n",
                        //
                        // ),
                      ],
                    ),
                    sizedBoxImage(
                      context,
                      child: CarouselSlider(
                          items: image
                              .map((item) => Center(
                                    child: Image.asset(
                                      item,
                                      fit: BoxFit.fitHeight,
                                      height: 500.0,
                                      width: 500,
                                    ),
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            // height: 500,
                            // aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            // onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                          )),
                    )
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(
                        //   height: 50,
                        // ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "ClowdStores\n",
                                  style: headTextStyel(context)),
                              TextSpan(
                                  text:
                                      " is location-based shopping Marketplace\nfor local stores that connect ",
                                  style: bodyTextStyel(context)),
                              TextSpan(
                                  text:
                                      "people to their\nfavorite local businesses ",
                                  style: bodyTextStyel(context)),
                              TextSpan(
                                  text:
                                      "and find the right\nproduct,and the right price form the nearest\nstore\n",
                                  style: bodyTextStyel(context)),
                              TextSpan(
                                  text:
                                      "Search , Order , Form the Nearest Store\n",
                                  style: bodyTextStyel(context))
                            ],
                          ),
                        ),

                        Text("Clowdstores offers to the local barnd\n",
                            style: headTextStyel(context)),
                        Text("1-exposure and visibility\n",
                            style: bodyTextStyel(context)),
                        Text(
                            "2-attract more customers to their businesses online \n",
                            style: bodyTextStyel(context)),
                        Text(
                            "3-clowd makes it easy to reach and connect with customers\n",
                            style: bodyTextStyel(context)),
                        // Text("Find location of the brand\n",
                        //     style: bodyTextStyel(context))
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const SizedBox(
                            //   height: 50,
                            // ),

                            Text("Clowdstores Feautres\n",
                                style: headTextStyel(context)),
                            Text("write reviews\n",
                                style: bodyTextStyel(context)),
                            Text("send text messages\n",
                                style: bodyTextStyel(context)),
                            Text("Find location of the brand\n",
                                style: bodyTextStyel(context)),
                          ],
                        ),
                        sizedBoxImage(
                          context,
                          child: CarouselSlider(
                              items: image
                                  .map((item) => Center(
                                        child: Image.asset(
                                          item,
                                          fit: BoxFit.fitHeight,
                                          height: 500.0,
                                          width: 500,
                                        ),
                                      ))
                                  .toList(),
                              options: CarouselOptions(
                                height: 500,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.8,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                // onPageChanged: callbackFunction,
                                scrollDirection: Axis.horizontal,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
