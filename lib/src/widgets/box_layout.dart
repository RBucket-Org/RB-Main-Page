import 'package:flutter/material.dart';
import 'package:rb_xyz/src/widgets/features.dart';

import '../config/k.dart';

class NarrowHeaderLayout extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final BoxConstraints constraints;

  const NarrowHeaderLayout({
    required this.constraints,
    required this.child1,
    required this.child2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      alignment: Alignment.center,
      width: double.infinity,
      height: 600.0,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: child1),
          Flexible(child: child2),
        ],
      ),
    );
  }
}

class WideHeaderLayout extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final BoxConstraints constraints;
  const WideHeaderLayout({
    required this.constraints,
    required this.child1,
    required this.child2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: constraints.maxWidth >= K.kTableteWidth ? 800.0 : 500.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // if (constraints.maxWidth >= K.kTableteWidth)
          //   SizedBox(
          //     width: (constraints.maxWidth / 100) * 4.0,
          //   ),
          Flexible(child: child1),
          // const Spacer(),
          Flexible(child: child2),
          // if (constraints.maxWidth >= K.kTableteWidth)
          //   SizedBox(
          //     width: (constraints.maxWidth / 100) * 4.0,
          //   ),
        ],
      ),
    );
  }
}

class NarrowFeatureLayout extends StatelessWidget {
  final BoxConstraints constraints;
  const NarrowFeatureLayout({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FeaturesNarrow(
      constraints: constraints,
    );
  }
}

class WideFeatureLayout extends StatelessWidget {
  final BoxConstraints constraints;
  const WideFeatureLayout({
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FeaturesWide(
      constraints: constraints,
    );
  }
}
