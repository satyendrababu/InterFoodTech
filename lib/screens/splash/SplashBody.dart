

import 'package:flutter/material.dart';

import '../../utils/size_config.dart';
import '../home/HomeScreen.dart';
import '../widgets/AppLogoBottom.dart';
import '../widgets/AppLogoTop.dart';
import '../widgets/GradientButton.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [

          Positioned.fill(
              child: Image.asset(
                'assets/images/login-bg.png',
                fit: BoxFit.cover,
              )
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                AppLogoTop(),
                const Spacer(),
                const Text(
                  'Indian Dairying:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                const Text(
                  'Innovation & Entrepreneurship',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        //elevation: context.resources.dimension.lightElevation,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                          child: Text(
                            '04',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff6A5CD8),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat-Bold.ttf'
                            ),
                          ),
                        ),
                      ),
                      Card(
                        //elevation: context.resources.dimension.lightElevation,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                          child: Text(
                            '05',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff6A5CD8),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat-Bold.ttf'
                            ),
                          ),
                        ),
                      ),
                      Card(
                        //elevation: context.resources.dimension.lightElevation,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                          child: Text(
                            '06',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff6A5CD8),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat-Bold.ttf'
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        ' March 2024',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat-Bold.ttf'
                        ),
                      ),
                    ],
                  ),
                  /*child: const Text(
                      '04-06, March 2024',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat-Bold.ttf'
                      ),
                  ),*/
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: const Text(
                      'HITEX Exhibition Center, \n Hydrabad',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat-Regular.ttf',
                        color: Colors.white
                    ),
                  ),
                ),
                const Spacer(flex: 2,),
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 0, right: 90, bottom: 0),
                  child: GradientButton(
                      'Lets Start',
                          () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => HomeScreen()));
                      }
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),

                AppLogoBottom(),
                /*Container(
                  width: SizeConfig.screenWidth,
                  height: 100,
                  child: Image.asset('assets/images/banner_bottom.PNG'),
                ),*/

              ],
            ),
          ),
        ],

      ),
    );
  }

}