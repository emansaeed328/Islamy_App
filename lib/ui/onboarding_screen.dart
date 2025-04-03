import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_app/ui/home/home_screen.dart';
import 'package:islamy_app/utils/app_assets.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName ='onBoardingScreen';
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // 1. Define a `GlobalKey` as part of the parent widget's state
  final _introKey = GlobalKey<IntroductionScreenState>();
  String _status = 'Waiting...';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return IntroductionScreen(
      // 2. Pass that key to the `IntroductionScreen` `key` param
      key: _introKey,
      pages: [
        PageViewModel(
          title: "Welcome to Islami App",
          body: "Welcome to Islami App",
          image: Image.asset("assets/images/onboard1.png", height: height*0.4,width: width*0.8,),

          decoration: const PageDecoration(

            pageColor: Color(0xff202020),

            bodyTextStyle: TextStyle(color:Color(0xffE2BE7F),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            imageFlex: 3,
              bodyFlex: 2,


          ),
        ),
        PageViewModel(
          title: "Welcome to Islami App",
          body: "Welcome to Islami App",
          image: Image.asset(AppAssets.readQuran, height: height*0.4,),

          decoration: const PageDecoration(

            pageColor: Color(0xff202020),

            bodyTextStyle: TextStyle(color:Color(0xffE2BE7F),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            imageFlex: 3,
            bodyFlex: 2,


          ),
        ),
        PageViewModel(
          title: "Welcome to Islami App",
          body: "Welcome to Islami App",
          image: Image.asset("assets/images/onboarding3.png", height: height*0.4,width: width*0.8,),

          decoration: const PageDecoration(

            pageColor: Color(0xff202020),

            bodyTextStyle: TextStyle(color:Color(0xffE2BE7F),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            imageFlex: 3,
            bodyFlex: 2,


          ),
        ),
        PageViewModel(
          title: "Welcome to Islami App",
          body: "Welcome to Islami App",
          image: Image.asset("assets/images/onboarding4.png", height: height*0.4,width: width*0.8,),

          decoration: const PageDecoration(

            pageColor: Color(0xff202020),

            bodyTextStyle: TextStyle(color:Color(0xffE2BE7F),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            imageFlex: 3,
            bodyFlex: 2,


          ),
        ),

      ],

      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      next: const Text('Next',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F)
      )),
      done: const Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F)
      )),
      skip: const Text('Skip',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
        color: Color(0xffE2BE7F)
      )),
      onSkip: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      onDone: (){
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.black,
        color: Color(0xffE2BE7F),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
        ),
      ),
    );
  }
}