import 'package:flutter/material.dart';
import '../pelaporan_bencana_app_theme.dart';

class RunningView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const RunningView({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 0, bottom: 0),
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    top: -16,
                    left: 0,
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset("assets/pelaporan_app/selamat.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16, left: 100),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: PelaporansAppTheme.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: PelaporansAppTheme.grey.withOpacity(0.4),
                            offset: Offset(1.1, 1.1),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Ayo bantu kami dalam pelaporan bencana!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: PelaporansAppTheme.fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 0.0,
                                color: Color(0xFFF28920),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Ayo lapor kepada pihak yang bersangkutan\nkhususnya BNPB ya!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: PelaporansAppTheme.fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 0.0,
                                color: PelaporansAppTheme.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
