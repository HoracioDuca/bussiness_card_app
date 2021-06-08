import 'styles/dimensions.dart';
import 'package:flutter/material.dart';

void main() => runApp(BusinessCardApp());

class BusinessCardApp extends StatelessWidget {
  BusinessCardApp({
    this.blurRadius = Dimension.blurRadius,
    this.spreadRadius = Dimension.spreadRadius,
    this.circleAvatarRadius = Dimension.circleAvatarRadius,
    this.titleFontSize = Dimension.titleFontSize,
    this.subtitleFontSize = Dimension.subtitleFontSize,
    this.letterSpacing = Dimension.letterSpacing,
    this.dividerHeight = Dimension.dividerHeight,
    this.cardSubtitleFontSize = Dimension.cardSubtitleFontSize,
    this.sizedBoxHeight = Dimension.sizedBoxHeight,
    this.sizedBoxWidth = Dimension.sizedBoxWidth,
  });

  final double blurRadius;
  final double spreadRadius;
  final double circleAvatarRadius;
  final double titleFontSize;
  final double subtitleFontSize;
  final double letterSpacing;
  final double dividerHeight;
  final double cardSubtitleFontSize;
  final double sizedBoxHeight;
  final double sizedBoxWidth;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card App',
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.yellow,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimension.horizontalPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: blurRadius,
                          color: Colors.black,
                          spreadRadius: spreadRadius,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/me.jpg",
                      ),
                      radius: circleAvatarRadius,
                    ),
                  ),
                  SizedBox(
                    height: sizedBoxHeight,
                  ),
                  Text(
                    'Horacio Duca',
                    style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          blurRadius: blurRadius,
                          color: Colors.black,
                          offset: Offset(
                            0.0,
                            -2.0,
                          ),
                        ),
                        Shadow(
                          blurRadius: blurRadius,
                          color: Colors.lightGreen,
                          offset: Offset(
                            5.0,
                            -5.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizedBoxHeight,
                  ),
                  Text(
                    'Flutter Developer Trainee',
                    style: TextStyle(
                      fontSize: subtitleFontSize,
                      letterSpacing: letterSpacing,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          blurRadius: blurRadius,
                          color: Colors.black,
                          offset: Offset(
                            0.0,
                            -2.0,
                          ),
                        ),
                        Shadow(
                          blurRadius: blurRadius,
                          color: Colors.lightGreen,
                          offset: Offset(
                            5.0,
                            -5.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: sizedBoxWidth,
                    height: sizedBoxHeight,
                    child: Divider(
                      height: dividerHeight,
                      color: Colors.black54,
                    ),
                  ),
                  Card(
                    color: Colors.lightGreen,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                      ),
                      title: Text(
                        '+54 9 2284-534691',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Press and call me!',
                        style: TextStyle(
                          fontSize: cardSubtitleFontSize,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: sizedBoxHeight,
                  ),
                  Card(
                    color: Colors.lightGreen,
                    child: ListTile(
                      leading: Icon(
                        Icons.email_outlined,
                      ),
                      title: Text(
                        'Horacio.duca@globant.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Or send me an email',
                        style: TextStyle(
                          fontSize: cardSubtitleFontSize,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
