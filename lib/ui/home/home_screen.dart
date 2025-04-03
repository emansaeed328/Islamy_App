
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/hadeeth/hadeeth_tab.dart';
import 'package:islamy_app/ui/home/quran/quran_tab.dart';
import 'package:islamy_app/ui/home/radio/radio_tab.dart';
import 'package:islamy_app/ui/home/sebha/sebha_tab.dart';
import 'package:islamy_app/ui/home/time/time_tab.dart';
import 'package:islamy_app/utils/app_assets.dart';
import 'package:islamy_app/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen' ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0 ;
  List<String> bgImages = [
    AppAssets.bgQuran,
    AppAssets.bgHadeeth,
    AppAssets.bgSebha,
    AppAssets.bgRadio,
    AppAssets.bgTime
  ];
  List<Widget> bodyBg = [
    QuranTab(),
    HadeethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
     children: [
       Image.asset(bgImages[activeIndex],
       width: double.infinity,
           height: double.infinity,
       fit: BoxFit.fill,),
       Scaffold(
         bottomNavigationBar: BottomNavigationBar(
           onTap: (index){
             activeIndex = index ;
             setState(() {

             });
           },
           currentIndex: activeIndex,
           items: [
             BottomNavigationBarItem(
             icon : builtBottomBarItem(0, AppAssets.iconQuran),
             label: "Quran"),
             BottomNavigationBarItem(
                 icon : builtBottomBarItem(1, AppAssets.iconHadeeth),
                 label: "Hadeeth"),
             BottomNavigationBarItem(
                 icon : builtBottomBarItem(2, AppAssets.iconSebha),
                 label: "Sebha"),
             BottomNavigationBarItem(
                 icon : builtBottomBarItem(3, AppAssets.iconRadio),
                 label: "Radio"),
             BottomNavigationBarItem(
                 icon : builtBottomBarItem(4, AppAssets.iconTime),
                 label: "Time"),
           ],
           backgroundColor: AppColors.primaryColor,
           type: BottomNavigationBarType.fixed,

         ),
         body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset(AppAssets.logo),
             Expanded(
                 child: bodyBg[activeIndex]
             ),
           ],
         ),
       )

     ],
    );
  }
  Widget builtBottomBarItem(int index , String imageName){
    return activeIndex == index ?
    Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66.0),
          color: AppColors.blackbgColor,
        ),
        child: ImageIcon(AssetImage(imageName))) :
    ImageIcon(AssetImage(imageName));
  }
}