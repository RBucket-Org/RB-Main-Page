import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rb_xyz/src/widgets/buttons.dart';

import '../config/k.dart';
import '../theme/color_theme.dart';

List<Widget> _buttons = [
  //download for android
  ElasticInLeft(
    from: 500,
    delay: const Duration(milliseconds: 500),
    child: DownloadAppButton(
      icon: Icons.android,
      title: 'Download For',
      subtitle: 'Android',
      onClick: () {
        print("on click");
      },
    ),
  ),
  //download for apple
  ElasticInRight(
    from: 500,
    delay: const Duration(milliseconds: 500),
    child: DownloadAppButton(
      icon: CupertinoIcons.app,
      title: 'Download For',
      subtitle: 'Apple',
      onClick: () {
        print("on click");
      },
    ),
  ),
];

class GetApp extends StatelessWidget {
  final BoxConstraints constraints;

  const GetApp({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 350.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get App",
            style: GoogleFonts.recursive().copyWith(
              fontSize: (constraints.maxWidth / 100) * 3.5,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: ColorTheme.appPrimaryColor,
            ),
          ),
          Container(
            width: 150.0,
            height: 2.0,
            color: ColorTheme.appPrimaryColor,
          ),
          const SizedBox(
            height: 70.0,
          ),
          Flexible(
            child: Text(
              "Available in Playstore & Appstore",
              maxLines: 2,
              style: GoogleFonts.recursive().copyWith(
                fontSize: 16.0,
                fontWeight: FontWeight.w100,
                letterSpacing: 1.2,
                color: ColorTheme.primaryTextColor,
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          constraints.maxWidth > 400
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buttons,
                )
              : Column(
                  children: _buttons,
                )
        ],
      ),
    );
  }
}
