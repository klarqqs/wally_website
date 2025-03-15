// import 'package:blyr/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilledBtn extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onPressed;
  final Color? borderColor;
  final double borderWidth;
  final bool hasIcon;
  final String? icon;
  final double? fontSize;

  const FilledBtn({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 0,
    this.hasIcon = false,
    this.icon,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? Color.fromARGB(255, 123, 0, 231),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.r),
            side: BorderSide(width: borderWidth, color: Colors.white),
          ),
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: fontSize == 18 ? 9.0 : 18.0,
          vertical: borderWidth == 2.5 ? 18.0 : 10.0,
        ),
        child:
            hasIcon
                ? Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontFamily: 'AvenirLTPro',
                        fontSize: fontSize,
                        height: 1.45,
                        color: textColor,
                        fontWeight:
                            fontSize == 18 ? FontWeight.w500 : FontWeight.w700,
                        letterSpacing: fontSize == 18 ? -.8 : -.5,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(icon!, height: 20),
                  ],
                )
                : Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'AvenirLTPro',
                    fontSize: fontSize,
                    height: 1.45,
                    color: textColor,
                    fontWeight:
                        fontSize == 18 ? FontWeight.w500 : FontWeight.w700,
                    letterSpacing: fontSize == 18 ? -.8 : -.5,
                  ),
                ),
      ),
    );
  }
}

class FilledBtnSmall extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onPressed;
  final Color? borderColor;
  final double borderWidth;
  final bool hasIcon;
  final String? icon;

  const FilledBtnSmall({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 2.0,
    this.hasIcon = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? Color.fromARGB(255, 123, 0, 231),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
        child:
            hasIcon
                ? Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontFamily: 'AvenirLTPro',
                        fontSize: 14,
                        height: 1.45,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -.3,
                      ),
                    ),
                    const SizedBox(width: 12),
                    SvgPicture.asset(icon!, height: 18),
                  ],
                )
                : Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'AvenirLTPro',
                    fontSize: 14,
                    height: 1.45,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -.3,
                  ),
                ),
      ),
    );
  }
}

class FilledBtnBig extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onPressed;
  final Color? borderColor;
  final double borderWidth;
  final bool hasIcon;
  final String? icon;
  final double? fontSize;

  const FilledBtnBig({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 2.0,
    this.hasIcon = false,
    this.icon,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? Color.fromARGB(255, 123, 0, 231),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: fontSize == 18 ? 9.0 : 18.0,
          vertical: 15.0,
        ),
        child:
            hasIcon
                ? Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontFamily: 'AvenirLTPro',
                        fontSize: fontSize,
                        height: 1.45,
                        color: textColor,
                        fontWeight:
                            fontSize == 18 ? FontWeight.w500 : FontWeight.w700,
                        letterSpacing: fontSize == 18 ? -.8 : -.6,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(icon!, height: 20),
                  ],
                )
                : Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'AvenirLTPro',
                    fontSize: fontSize,
                    height: 1.45,
                    color: textColor,
                    fontWeight:
                        fontSize == 18 ? FontWeight.w500 : FontWeight.w700,
                    letterSpacing: fontSize == 18 ? -.8 : -.6,
                  ),
                ),
      ),
    );
  }
}
