import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rb_xyz/src/theme/color_theme.dart';
import 'package:rb_xyz/src/widgets/box_layout.dart';

import '../config/k.dart';

class Header extends StatefulWidget {
  final BoxConstraints constraints;

  const Header({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return widget.constraints.maxWidth >= K.kTableteWidth
        ? WideHeaderLayout(
            constraints: widget.constraints,
            child1: ElasticInLeft(
              from: 500,
              delay: const Duration(milliseconds: 500),
              child: Image.asset(
                "assets/images/mobile572x974.png",
                fit: BoxFit.contain,
              ),
            ),
            child2: ElasticInRight(
              from: 500,
              delay: const Duration(milliseconds: 500),
              child: HeaderText(
                constraints: widget.constraints,
              ),
            ),
          )
        : NarrowHeaderLayout(
            constraints: widget.constraints,
            child1: ElasticInLeft(
              from: 500,
              delay: const Duration(milliseconds: 500),
              child: Image.asset(
                "assets/images/mobile458x659.png",
                fit: BoxFit.contain,
              ),
            ),
            child2: ElasticInRight(
              from: 500,
              delay: const Duration(milliseconds: 500),
              child: HeaderText(
                constraints: widget.constraints,
              ),
            ),
          );
  }
}

//header text
class HeaderText extends StatelessWidget {
  final BoxConstraints constraints;
  const HeaderText({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //main head
        Flexible(
          child: Text(
            "WHAT's NEW ?",
            style: GoogleFonts.recursive().copyWith(
              fontSize: (constraints.maxWidth / 100) * 4.5,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: ColorTheme.appPrimaryColor,
            ),
          ),
        ),
        //context
        SizedBox(
          height: constraints.maxWidth > K.kMobileWidth ? 150.0 : 100.0,
          width: constraints.maxWidth > K.kTableteWidth
              ? (constraints.maxWidth / 100) * 40.0
              : 450.0,
          child: DefaultTextStyle(
            textAlign: TextAlign.center,
            style: GoogleFonts.recursive().copyWith(
              fontSize: constraints.maxWidth > K.kMobileWidth
                  ? (constraints.maxWidth / 100) * 2.0
                  : 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: ColorTheme.primaryTextColor,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                RotateAnimatedText(
                  'Create Your Own Category Based Bucket',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                RotateAnimatedText(
                  'Customize Your Bucket, To Your Needs',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                RotateAnimatedText(
                  'Create Your Own Feature Using Default Features',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                RotateAnimatedText(
                  'Set Your Own Visibility',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Text(
            "A new form of highly customizable, hybrid social media application, where you can create highly customizable bucket",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins().copyWith(
              fontSize: constraints.maxWidth > K.kMobileWidth ? 22.0 : 16.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: ColorTheme.primaryTextColor,
            ),
          ),
        ),
        //short info
        //buttons
      ],
    );
  }
}
