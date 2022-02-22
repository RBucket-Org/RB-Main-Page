import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rb_xyz/src/theme/color_theme.dart';
import '../config/k.dart';
import '../utility/enum.dart';
import 'buttons.dart';

class Nav extends StatelessWidget with PreferredSizeWidget {
  final NavOptions selectedOption;
  final BoxConstraints constraints;

  const Nav({
    required this.selectedOption,
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SizedBox(
        width: double.infinity,
        height: 100.0,
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (constraints.maxWidth > K.kMobileWidth)
                SizedBox(
                  width: (constraints.maxWidth / 100) * 2.0,
                ),
              //Nav Icon
              Flexible(
                child: Text(
                  "RBucket",
                  maxLines: 1,
                  softWrap: false,
                  style: GoogleFonts.recursive().copyWith(
                    fontSize:
                        constraints.maxWidth > K.kMobileWidth ? 30.0 : 20.0,
                    color: ColorTheme.primaryTextColor,
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              //Nav Buttons
              NavButtons(
                selectedOption: selectedOption,
                constraints: constraints,
              ),

              if (constraints.maxWidth > K.kTableteWidth)
                SizedBox(
                  width: (constraints.maxWidth / 100) * 2.0,
                ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60.0);
}
