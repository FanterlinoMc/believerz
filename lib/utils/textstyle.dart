import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// const headTextStyel = TextStyle(fontSize: 20);
// const bodyTextStyel = TextStyle(fontSize: 20);
headTextStyel(BuildContext context) => TextStyle(
      color: Colors.red[800],
      //color: Colors.white.withOpacity(.7),
      //fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      wordSpacing: 4,
      fontSize: ResponsiveValue<double>(context,
          defaultValue: 22,
          conditionalValues: [
            const Condition.smallerThan(name: DESKTOP, value: 10.0),
            // const Condition.smallerThan(name: DESKTOP, value: 15.0),
            // const Condition.equals(name: MOBILE, value: 12),
            // const Condition.between(start: 800, end: 1100, value: 17),
//         // const Condition.between(start: 1000, end: 1200, value: 20),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
    );
headTextStyel1(BuildContext context) => TextStyle(
      color: Colors.white.withOpacity(.7),
      //  fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      wordSpacing: 4,
      fontSize: ResponsiveValue<double>(context,
          defaultValue: 22,
          conditionalValues: [
            const Condition.smallerThan(name: DESKTOP, value: 10.0),
            // const Condition.smallerThan(name: DESKTOP, value: 15.0),
            // const Condition.equals(name: MOBILE, value: 12),
            // const Condition.between(start: 800, end: 1100, value: 17),
//         // const Condition.between(start: 1000, end: 1200, value: 20),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
    );
bodyTextStyel(BuildContext context) => TextStyle(
      color: Colors.white.withOpacity(.8),
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      //wordSpacing: 1,
      fontSize: ResponsiveValue<double>(context,
          defaultValue: 17,
          conditionalValues: [
            // const Condition.equals(name: MOBILE, value: 10),
            const Condition.smallerThan(name: DESKTOP, value: 10.0),
            // const Condition.smallerThan(name: DESKTOP, value: 15.0),
            // const Condition.between(start: 800, end: 1100, value: 17),
            // // const Condition.between(start: 1000, end: 1200, value: 20),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
    );

sizedBox(BuildContext context, {Widget? child}) => SizedBox(
      width: ResponsiveValue<double>(context,
          defaultValue: 700.0,
          conditionalValues: [
            // const Condition.equals(name: MOBILE, value: 160),
            const Condition.smallerThan(name: DESKTOP, value: 220.0),
            // const Condition.smallerThan(name: DESKTOP, value: 300.0),
            // const Condition.between(start: 400, end: 1100, value: 300),
            // const Condition.between(start: 1200, end: 1500, value: 400),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
      child: child,
    );

sizedBoxImage(BuildContext context, {Widget? child}) => SizedBox(
      width: ResponsiveValue<double>(context,
          defaultValue: 400.0,
          conditionalValues: [
            // const Condition.equals(name: MOBILE, value: 160),
            const Condition.smallerThan(name: DESKTOP, value: 210.0),
            // const Condition.smallerThan(name: DESKTOP, value: 300.0),
            // const Condition.between(start: 400, end: 1100, value: 300),
            // const Condition.between(start: 1200, end: 1500, value: 400),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
      height: ResponsiveValue<double>(context,
          defaultValue: 400.0,
          conditionalValues: [
            // const Condition.equals(name: MOBILE, value: 160),
            const Condition.smallerThan(name: DESKTOP, value: 220.0),
            // const Condition.smallerThan(name: DESKTOP, value: 300.0),
            // const Condition.between(start: 400, end: 1100, value: 300),
            // const Condition.between(start: 1200, end: 1500, value: 400),
            // There are no conditions for width over 1200
            // because the `maxWidth` is set to 1200 via the MaxWidthBox.
          ]).value,
      child: child,
    );

spaceheading(
  BuildContext context,
) =>
    SizedBox(
      height: ResponsiveValue(context, defaultValue: 100.0, conditionalValues: [
        const Condition.smallerThan(name: DESKTOP, value: 50.0),
        // const Condition.smallerThan(name: DESKTOP, value: 30.0),
        // There are no conditions for width over 1200
        // because the `maxWidth` is set to 1200 via the MaxWidthBox.
      ]).value,
    );

spacePage(
  BuildContext context,
) =>
    SizedBox(
      height: ResponsiveValue(context, defaultValue: 150.0, conditionalValues: [
        const Condition.smallerThan(name: DESKTOP, value: 50.0),
        // const Condition.smallerThan(name: DESKTOP, value: 30.0),
        // There are no conditions for width over 1200
        // because the `maxWidth` is set to 1200 via the MaxWidthBox.
      ]).value,
    );
space(
  BuildContext context,
) =>
    SizedBox(
      height: ResponsiveValue(context, defaultValue: 20.0, conditionalValues: [
        const Condition.smallerThan(name: DESKTOP, value: 10.0),
        // const Condition.smallerThan(name: DESKTOP, value: 20.0),
        // There are no conditions for width over 1200
        // because the `maxWidth` is set to 1200 via the MaxWidthBox.
      ]).value,
    );

// class Textstyle extends StatelessWidget {
//   const Textstyle({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//         );
//     const bodyTextStyel = TextStyle(fontSize: 20);
//     return Container();
//   }
// }
