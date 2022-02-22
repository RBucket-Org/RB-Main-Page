import 'package:flutter/material.dart';
import 'package:rb_xyz/src/utility/enum.dart';
import 'package:rb_xyz/src/widgets/features.dart';
import 'package:rb_xyz/src/widgets/footer.dart';
import 'package:rb_xyz/src/widgets/get_app.dart';
import 'package:rb_xyz/src/widgets/header.dart';
import 'package:rb_xyz/src/widgets/nav.dart';

import '../config/k.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home-page";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff121212),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) => ListView(
            children: [
              Nav(
                selectedOption: NavOptions.home,
                constraints: constraints,
              ),
              const SizedBox(
                height: 100.0,
              ),
              Header(
                constraints: constraints,
              ),
              if (constraints.maxWidth < K.kTableteWidth)
                const SizedBox(
                  height: 150.0,
                ),
              Features(
                constraints: constraints,
              ),
              const SizedBox(
                height: 100.0,
              ),
              GetApp(
                constraints: constraints,
              ),
              const SizedBox(
                height: 150.0,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
