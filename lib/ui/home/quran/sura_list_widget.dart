import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/quran/quran_resources.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class SuraListWidget extends StatelessWidget{
  int index ;
  SuraListWidget({required this.index});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
      ),
    //  margin: EdgeInsets.symmetric(vertical: height*0.01),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AppAssets.suraNumBg),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                color: AppColors.blackColor,
                child: Text((index+1).toString(),style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              )
            ],
          ),
          SizedBox(width: width*0.04,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Quran_Recources.englishQuranSurahs[index],style:Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: height*0.01),
              Text(Quran_Recources.AyaNumber[index] + " Verses",style:Theme.of(context).textTheme.headlineSmall,),

            ],
          ),
          const Spacer(),
          Text(Quran_Recources.arabicQuranSurahs[index],style:Theme.of(context).textTheme.headlineMedium,),
        ],

      ),
    );
  }


}