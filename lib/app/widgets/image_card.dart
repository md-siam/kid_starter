import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class ImageCard extends StatelessWidget {
  final bool isActive;
  final String title;
  final String image;
  final Color textColor;
  final Color backgroundColor;
  final double fontSizeBase;
  final double fontSizeActive;

  final VoidCallback onTap;

  const ImageCard({
    Key? key,
    this.isActive = false,
    required this.title,
    required this.image,
    this.textColor = kTitleTextColor,
    this.backgroundColor = Colors.white,
    this.fontSizeBase = 20,
    this.fontSizeActive = 22,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 20,
            color: kActiveShadowColor,
          ),
        ],
      ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(15.0),
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: AnimatedDefaultTextStyle(
                  style: isActive
                      ? TextStyle(fontSize: fontSizeActive)
                      : TextStyle(fontSize: fontSizeBase),
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.bounceOut,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: backgroundColor.withOpacity(0.5),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
