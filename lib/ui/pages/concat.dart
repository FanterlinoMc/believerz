import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../data/email_provider.dart';
import '../../utils/textfeilds.dart';
import '../../utils/textstyle.dart';

class Textfilds extends StatefulWidget {
  const Textfilds({Key? key}) : super(key: key);

  @override
  State<Textfilds> createState() => _TextfildsState();
}

final TextEditingController name = TextEditingController();
final TextEditingController subject = TextEditingController();
final TextEditingController message = TextEditingController();
final TextEditingController email = TextEditingController();

class _TextfildsState extends State<Textfilds> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    Size size = MediaQuery.of(context).size;
    // final uri = Uri.parse("https://forms.gle/Mgo1zVbYdRs3v5aGA");
    return SizedBox(
      height: size.height,
      child: isScreenWide
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 100, left: 12),
                  child: SizedBox(
                    width: ResponsiveValue<double>(context,
                        defaultValue: 250.0,
                        conditionalValues: [
                          const Condition.smallerThan(
                              name: DESKTOP, value: 150.0),
                        ]).value,
                    child: ElevatedButton(
                      onPressed: () {
                        sendmail(
                          userEmail: email.text,
                          message: message.text,
                          userName: name.text,
                          userSubject: subject.text,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[800],
                          side: const BorderSide()),
                      child: Text(
                        "Send",
                        style: bodyTextStyel(context),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Textfeilds(
                        type: TextInputType.name,
                        controller: name,
                        hintText: " Name",
                      ),
                      Textfeilds(
                        controller: email,
                        hintText: " email",
                        type: TextInputType.emailAddress,
                      ),
                      Textfeilds(
                        type: TextInputType.text,
                        controller: subject,
                        hintText: " subject",
                      ),
                      Textfeilds(
                        maxlength: 2000,
                        mainline: 1,
                        maxline: 100,
                        type: TextInputType.multiline,
                        controller: message,
                        hintText: " Message",
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.only(top: 150, left: 0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Textfeilds(
                    type: TextInputType.name,
                    controller: name,
                    hintText: " Name",
                  ),
                  Textfeilds(
                    controller: email,
                    hintText: " email",
                    type: TextInputType.emailAddress,
                  ),
                  Textfeilds(
                    type: TextInputType.text,
                    controller: subject,
                    hintText: " subject",
                  ),
                  Textfeilds(
                    maxlength: 1000,
                    mainline: 1,
                    maxline: 50,
                    type: TextInputType.multiline,
                    controller: message,
                    hintText: " Message",
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 12),
                      child: SizedBox(
                        width: ResponsiveValue<double>(context,
                            defaultValue: 250.0,
                            conditionalValues: [
                              const Condition.smallerThan(
                                  name: DESKTOP, value: 150.0),
                            ]).value,
                        child: ElevatedButton(
                          onPressed: () {
                            sendmail(
                              userEmail: email.text,
                              message: message.text,
                              userName: name.text,
                              userSubject: subject.text,
                            );
                            // launchUrl(uri);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[800],
                              side: const BorderSide()),
                          child: Text(
                            "Send",
                            style: bodyTextStyel(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
