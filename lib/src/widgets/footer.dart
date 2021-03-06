import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'dart:html' as html;

import '../config/k.dart';
import '../theme/color_theme.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final year = DateFormat.y().format(DateTime.now());
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
        color: ColorTheme.blackRedColor,
      ),
      child: Column(
        children: [
          // const SizedBox(
          //   height: 30.0,
          // ),
          const Spacer(),

          const FooterRow(),

          const Spacer(),
          //divider
          Divider(
            color: Colors.green.shade100,
            thickness: 1.1,
            height: 10.0,
            indent: 20.0,
            endIndent: 20.0,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  FooterText(
                      text: "designed by Hanish💓",
                      onClick: () {
                        html.window.open("", "_blank");
                      }),
                  const Spacer(
                    flex: 3,
                  ),
                  FooterText(
                    text: "Copyright \u00a9 $year, egnimos",
                    onClick: null,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class FooterRow extends StatelessWidget {
  const FooterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: (constraints.maxWidth / 100) * 4.0,
          ),
          //Icon
          if (constraints.maxWidth > K.kMobileWidth)
            const Expanded(child: FooterIcon()),

          if (constraints.maxWidth > K.kMobileWidth)
            const Spacer(
              flex: 1,
            ),
          const Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: FooterList(
                heading: "Labels",
                widgets: [
                  FooterText(
                    text: "Terms & Conditions",
                    onClick: null,
                  ),
                  FooterText(
                    text: "Privacy Policies",
                    onClick: null,
                  ),
                ],
              ),
            ),
          ),
          // Flexible(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(
          //       vertical: 8.0,
          //       horizontal: 16.0,
          //     ),
          //     child: FooterList(
          //       heading: "Quick Links",
          //       widgets: [
          //         FooterText(
          //           text: "Home",
          //           onClick: () {
          //             // Navigator.of(context).pushNamed(Home.routeName);
          //           },
          //         ),
          //         FooterText(
          //           text: "About",
          //           onClick: () {
          //             // Navigator.of(context).pushNamed(Home.routeName);
          //           },
          //         ),
          //         FooterText(
          //           text: "Features",
          //           onClick: () {
          //             // Navigator.of(context).pushNamed(Home.routeName);
          //           },
          //         ),
          //         FooterText(
          //           text: "Blog",
          //           onClick: () {
          //             // Navigator.of(context).pushNamed(Home.routeName);
          //           },
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      );
    });
  }
}

class FooterIcon extends StatelessWidget {
  const FooterIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Flexible(child: Image.asset("assets/images/rbucket_bw.png")),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 10.0,
            ),
            child: Text(
              "RBucket",
              style: GoogleFonts.raleway().copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class FooterList extends StatelessWidget {
  final String heading;
  final List<Widget> widgets;
  const FooterList({
    required this.heading,
    this.widgets = const <Widget>[],
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          //heading
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                heading,
                maxLines: 1,
                softWrap: false,
                style: GoogleFonts.raleway().copyWith(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
          //widgets
          ...widgets
        ],
      ),
    );
  }
}

class FooterText extends StatefulWidget {
  final String text;
  final void Function()? onClick;
  const FooterText({
    required this.text,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  _FooterTextState createState() => _FooterTextState();
}

class _FooterTextState extends State<FooterText> {
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // text
            MouseRegion(
              onEnter: (value) {
                setState(() {
                  height = 60.0;
                });
              },
              onExit: (value) {
                setState(() {
                  height = 0.0;
                });
              },
              child: Text(
                widget.text,
                maxLines: 1,
                softWrap: false,
                style: GoogleFonts.raleway().copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade300,
                  // decoration: decoration,
                ),
              ),
            ),

            //under line
            Container(
              color: Colors.grey.shade100,
              width: height,
              height: 2.6,
            ),
          ],
        ),
      ),
    );
  }
}
