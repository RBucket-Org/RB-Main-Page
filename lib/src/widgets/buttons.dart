import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/k.dart';
import '../theme/color_theme.dart';
import '../utility/enum.dart';

class MenuSwitchButton extends StatefulWidget {
  final NavOptions option;
  final String label;
  final NavOptions selectedOption;
  final bool isDrawerButton;
  final void Function() onTap;
  const MenuSwitchButton({
    required this.label,
    required this.option,
    required this.selectedOption,
    required this.onTap,
    this.isDrawerButton = false,
    Key? key,
  }) : super(key: key);

  @override
  State<MenuSwitchButton> createState() => _MenuSwitchButtonState();
}

class _MenuSwitchButtonState extends State<MenuSwitchButton> {
  double width = 0.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        //highlight
        if (widget.isDrawerButton && (widget.option == widget.selectedOption))
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.green.shade200,
            ),
          ),
        SizedBox(
          width: 100.0,
          height: 50.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                onEnter: (value) {
                  setState(() {
                    width = 60.0;
                  });
                },
                onExit: (value) {
                  setState(() {
                    width = 0.0;
                  });
                },
                child: TextButton(
                  onPressed: widget.onTap,
                  style: TextButton.styleFrom(
                    primary: !widget.isDrawerButton
                        ? widget.option == widget.selectedOption
                            ? ColorTheme.appPrimaryColor
                            : ColorTheme.primaryTextColor
                        : ColorTheme.primaryTextColor,
                    textStyle: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  child: Text(
                    widget.label,
                    style: GoogleFonts.recursive().copyWith(
                      fontSize: 25.0,
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              //on hover
              AnimatedContainer(
                margin: const EdgeInsets.only(top: 4.0),
                duration: const Duration(milliseconds: 330),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: ColorTheme.appPrimaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 4.0,
                width: width,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Navigation Buttons
class NavButtons extends StatelessWidget {
  final NavOptions selectedOption;
  final BoxConstraints constraints;

  const NavButtons({
    required this.selectedOption,
    required this.constraints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: constraints.maxWidth < K.kTableteWidth
          ? MainAxisAlignment.end
          : MainAxisAlignment.center,
      children: constraints.maxWidth < K.kTableteWidth
          ? [
              // IconButton(
              //   onPressed: () {
              //     Scaffold.of(context).openDrawer();
              //   },
              //   icon: const Icon(
              //     Icons.menu,
              //     color: ColorTheme.primaryIconColor,
              //   ),
              // ),
              const GetAppBotton(),
            ]
          : [
              // MenuSwitchButton(
              //   label: "Home",
              //   option: NavOptions.home,
              //   selectedOption: selectedOption,
              //   onTap: () {},
              // ),
              // SizedBox(
              //   width: (constraints.maxWidth / 100) * 1.5,
              // ),
              // MenuSwitchButton(
              //   label: "About",
              //   option: NavOptions.about,
              //   selectedOption: selectedOption,
              //   onTap: () {},
              // ),
              // SizedBox(
              //   width: (constraints.maxWidth / 100) * 1.5,
              // ),
              // MenuSwitchButton(
              //   label: "Blog",
              //   option: NavOptions.features,
              //   selectedOption: selectedOption,
              //   onTap: () {},
              // ),
              // SizedBox(
              //   width: (constraints.maxWidth / 100) * 1.5,
              // ),
              const GetAppBotton(),
              SizedBox(
                width: (constraints.maxWidth / 100) * 1.5,
              ),
            ],
    );
  }
}

class GetAppBotton extends StatefulWidget {
  const GetAppBotton({Key? key}) : super(key: key);

  @override
  State<GetAppBotton> createState() => _GetAppBottonState();
}

class _GetAppBottonState extends State<GetAppBotton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Color textColor = ColorTheme.primaryTextColor;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        _animationController.animateTo(1.0);
        setState(() {
          textColor = Colors.white;
        });
      },
      onExit: (value) {
        _animationController.animateBack(0.0);
        setState(() {
          textColor = ColorTheme.appPrimaryColor;
        });
      },
      child: AnimatedBuilder(
          child: Text(
            "Get App",
            style: GoogleFonts.recursive().copyWith(
              fontSize: 22.0,
              letterSpacing: 1.1,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          animation: _animationController,
          builder: (c, child) {
            return Container(
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: ColorTheme.appPrimaryColor
                    .withOpacity(_animationController.value),
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: ColorTheme.appPrimaryColor,
                  width: 2.0,
                ),
              ),
              alignment: Alignment.center,
              child: child,
            );
          }),
    );
  }
}

class DownloadAppButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final void Function() onClick;
  const DownloadAppButton({
    required this.icon,
    required this.onClick,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  State<DownloadAppButton> createState() => _DownloadAppButtonState();
}

class _DownloadAppButtonState extends State<DownloadAppButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Color textColor = ColorTheme.primaryTextColor;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        _animationController.animateTo(1.0);
        setState(() {
          textColor = Colors.white;
        });
      },
      onExit: (value) {
        _animationController.animateBack(0.0);
        setState(() {
          textColor = ColorTheme.appPrimaryColor;
        });
      },
      child: AnimatedBuilder(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //icon
              Icon(
                widget.icon,
                color: ColorTheme.primaryIconColor,
              ),
              //text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      widget.title,
                      maxLines: 1,
                      softWrap: false,
                      style: GoogleFonts.recursive().copyWith(
                        fontSize: 12.0,
                        // letterSpacing: 1.1,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      widget.subtitle,
                      maxLines: 1,
                      softWrap: false,
                      style: GoogleFonts.recursive().copyWith(
                        fontSize: 16.0,
                        // letterSpacing: 1.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          animation: _animationController,
          builder: (c, child) {
            return GestureDetector(
              onTap: widget.onClick,
              child: Container(
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(7.8),
                width: 150.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: ColorTheme.appPrimaryColor
                      .withOpacity(_animationController.value),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: ColorTheme.appPrimaryColor,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: child,
              ),
            );
          }),
    );
  }
}
