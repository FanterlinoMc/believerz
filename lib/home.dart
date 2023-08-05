import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:believers/utils/textstyle.dart';
import 'package:believers/work.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'ui/pages/concat.dart';
import 'ui/pages/spacecoffe.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<GlobalKey> categorias = [GlobalKey(), GlobalKey(), GlobalKey()];
  late ScrollController scrollCont;
  BuildContext? tabContext;

  @override
  void initState() {
    scrollCont = ScrollController();
    scrollCont.addListener(changeTabs);
    super.initState();
  }

  changeTabs() {
    late RenderBox box;

    for (var i = 0; i < categorias.length; i++) {
      box = categorias[i].currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      if (scrollCont.offset >= position.dy) {
        DefaultTabController.of(tabContext!).animateTo(
          i,
          duration: const Duration(milliseconds: 100),
        );
      }
    }
  }

  scrollTo(int index) async {
    scrollCont.removeListener(changeTabs);
    final categoria = categorias[index].currentContext!;
    await Scrollable.ensureVisible(
      categoria,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const Work(),
      const Spacecoffe(),
      const Textfilds(),
    ];
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;

    return Scaffold(
        backgroundColor: const Color(0xff0A1820),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xff0A1820),
              toolbarHeight: isScreenWide ? 105 : 50,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: ResponsiveValue<double>(context,
                            defaultValue: 200.0,
                            conditionalValues: [
                              const Condition.smallerThan(
                                  name: DESKTOP, value: 50.0),
                            ]).value,
                        child: Image.asset("assets/believerz.png")),
                    sizedBox(
                      context,
                      child: DefaultTextStyle(
                        style: headTextStyel1(context),
                        child: AnimatedTextKit(
                          displayFullTextOnTap: true,
                          animatedTexts: [
                            TypewriterAnimatedText(
                                ' our Dreams and Ideas are worth shearing ',
                                speed: const Duration(milliseconds: 100)),
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
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                const Spacecoffe(),
                const Textfilds(),
                const SizedBox(
                  height: 200,
                )
              ]),
            )
          ],
        )
        // ListView(children: const [

        // ]),
        );
  }
}
