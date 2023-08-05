import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'utils/textstyle.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
//    final size = MediaQuery.of(context).size;
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    List<String> image = [
      "assets/chat.png",
      "assets/order.png",
      "assets/profile.png",
      "assets/map.png",
      "assets/review.png",
    ];
    return isScreenWide
        ? Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "ClowdStores\n",
                              style: headTextStyel(context)),
                          TextSpan(
                              text:
                                  "is location-based shopping Marketplace\nfor local stores that connect ",
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
                              text: "Search , Order , Form the Nearest Store\n",
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
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Clowdstores Feautres\n",
                        style: headTextStyel(context)),
                    Text("write reviews\n", style: bodyTextStyel(context)),
                    Text("send text messages\n", style: bodyTextStyel(context)),
                    Text("Find location of the brand\n",
                        style: bodyTextStyel(context))
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
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "ClowdStores\n", style: headTextStyel(context)),
                    TextSpan(
                        text:
                            "is location-based shopping Marketplace\nfor local stores that connect ",
                        style: bodyTextStyel(context)),
                    TextSpan(
                        text: "people to their\nfavorite local businesses ",
                        style: bodyTextStyel(context)),
                    TextSpan(
                        text:
                            "and find the right\nproduct,and the right price form the nearest\nstore\n",
                        style: bodyTextStyel(context)),
                    TextSpan(
                        text: "Search , Order , Form the Nearest Store\n",
                        style: bodyTextStyel(context))
                  ],
                ),
              ),
              Text("Clowdstores offers to the local barnd\n",
                  style: headTextStyel(context)),
              Text("1-exposure and visibility\n",
                  style: bodyTextStyel(context)),
              Text("2-attract more customers to their businesses online \n",
                  style: bodyTextStyel(context)),
              Text(
                  "3-clowd makes it easy to reach and connect with customers\n",
                  style: bodyTextStyel(context)),
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
                      Text("write reviews\n", style: bodyTextStyel(context)),
                      Text("send text messages\n",
                          style: bodyTextStyel(context)),
                      Text("Find location of the brand\n",
                          style: bodyTextStyel(context)),
                    ],
                  ),
                  Expanded(
                    child: CarouselSlider(
                        items: image
                            .map((item) => Center(
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.fitHeight,
                                    height: 300.0,
                                    width: 300,
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                          height: 300,
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
            ],
          );
  }
}
