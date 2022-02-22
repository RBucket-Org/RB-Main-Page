import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rb_xyz/src/models/feature.dart';
import 'package:rb_xyz/src/theme/color_theme.dart';

import '../config/k.dart';

class Features extends StatelessWidget {
  final BoxConstraints constraints;

  const Features({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return constraints.maxWidth >= K.kTableteWidth
        ? FeaturesWide(constraints: constraints)
        : FeaturesNarrow(constraints: constraints);
  }
}

class FeaturesWide extends StatelessWidget {
  final BoxConstraints constraints;

  const FeaturesWide({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      // height: constraints.maxWidth >= K.kTableteWidth ? 600.0 : 400.0,
      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Features",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //features
              ElasticInLeft(
                delay: const Duration(milliseconds: 500),
                child: FeatureTexts(
                  isReverse: false,
                  constraints: constraints,
                  features:
                      features.where((feature) => feature.index <= 5).toList(),
                ),
              ),

              //image
              Flexible(
                child: ZoomIn(
                  delay: const Duration(milliseconds: 500),
                  child: Image.asset(
                    "assets/images/mobile572x974.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //features
              ElasticInRight(
                delay: const Duration(milliseconds: 500),
                child: FeatureTexts(
                  isReverse: true,
                  constraints: constraints,
                  features:
                      features.where((feature) => feature.index > 5).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeaturesNarrow extends StatelessWidget {
  final BoxConstraints constraints;
  const FeaturesNarrow({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Features",
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
        Wrap(
          children: features
              .map(
                (f) => FeatureNarrowBlock(
                  index: f.index,
                  featureText: f.featureText,
                  constraints: constraints,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class FeatureTexts extends StatelessWidget {
  final bool isReverse;
  final BoxConstraints constraints;
  final List<Feature> features;
  const FeatureTexts({
    required this.features,
    required this.isReverse,
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < features.length; i++)
          FeaturesBlock(
            index: features[i].index,
            featureText: features[i].featureText,
            isReverse: isReverse,
            constraints: constraints,
          ),
      ],
    );
  }
}

class FeaturesBlock extends StatelessWidget {
  final bool isReverse;
  final BoxConstraints constraints;
  final int index;
  final String featureText;
  const FeaturesBlock({
    required this.index,
    required this.featureText,
    required this.isReverse,
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      height: 100.0,
      child: Row(
        verticalDirection: VerticalDirection.up,
        mainAxisAlignment:
            !isReverse ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          //points
          if (isReverse)
            CircleAvatar(
              radius: 28.0,
              child: Text(
                "$index",
                style: GoogleFonts.recursive().copyWith(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: ColorTheme.primaryTextColor,
                ),
              ),
              backgroundColor: ColorTheme.appPrimaryColor,
            ),
          const SizedBox(
            width: 20.0,
          ),
          Flexible(
            child: Text(
              featureText,
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
            width: 20.0,
          ),
          if (!isReverse)
            CircleAvatar(
              radius: 28.0,
              child: Text(
                "$index",
                style: GoogleFonts.recursive().copyWith(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: ColorTheme.primaryTextColor,
                ),
              ),
              backgroundColor: ColorTheme.appPrimaryColor,
            ),
        ],
      ),
    );
  }
}

class FeatureNarrowBlock extends StatelessWidget {
  final BoxConstraints constraints;
  final int index;
  final String featureText;
  const FeatureNarrowBlock({
    required this.index,
    required this.featureText,
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14.0),
      padding: const EdgeInsets.all(14.0),
      width: 350.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: ColorTheme.blackRedColor1,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.shade200,
        //     blurRadius: 30,
        //     spreadRadius: -15,
        //     offset: const Offset(0, 60),
        //   ),
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28.0,
            child: Text(
              "$index",
              style: GoogleFonts.recursive().copyWith(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: ColorTheme.primaryTextColor,
              ),
            ),
            backgroundColor: ColorTheme.appPrimaryColor,
          ),
          const SizedBox(
            width: 30.0,
          ),
          Flexible(
            child: Text(
              featureText,
              maxLines: 2,
              style: GoogleFonts.recursive().copyWith(
                fontSize: 16.0,
                fontWeight: FontWeight.w100,
                letterSpacing: 1.2,
                color: ColorTheme.primaryTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
