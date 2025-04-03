import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/quran/quran_details.dart';
import 'package:islamy_app/ui/home/quran/quran_resources.dart';
import 'package:islamy_app/ui/home/quran/sura_list_widget.dart';
import 'package:islamy_app/utils/app_assets.dart';
import 'package:islamy_app/utils/app_colors.dart';
import 'package:islamy_app/utils/app_styles.dart';
import 'package:islamy_app/utils/app_theme.dart';

class QuranTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            child: TextField(
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                label: Text('Sura Name',
                style: Theme.of(context).textTheme.headlineMedium),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                    width: 2,
                  )
                ),
              prefixIcon: ImageIcon(AssetImage(AppAssets.iconQuran),
              color: AppColors.primaryColor,),
              ),
            ),
          ),
          SizedBox(height : height*0.03),
          Text('Most Recently',style: Theme.of(context).textTheme.headlineMedium,),
          SizedBox(height: height* 0.01,),
          Container(
            height: height*0.16,
            child: Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding : EdgeInsets.symmetric(vertical: height*0.02,horizontal: width*0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Al-Anbyaa',style:Theme.of(context).textTheme.bodyMedium,),
                                Text('الأنبياء',style:Theme.of(context).textTheme.bodyMedium,),
                                Text('112 Verses',style:Theme.of(context).textTheme.bodySmall,),


                              ],
                            ),
                          ),
                          Image.asset(AppAssets.recentImg,
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return SizedBox(width:  width*0.03);
                  },
                  itemCount: 10),
            ),
          ),
          SizedBox(height: height* 0.02,),
          Text('Suras List',style: Theme.of(context).textTheme.headlineMedium,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: height*0.01),
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(QuranDetailsWidget.routeName,
                        arguments: index);
                  },
                    child: SuraListWidget(index: index,));
              },
                  separatorBuilder: (context,index){
                return Divider(endIndent: height*0.04,indent: height*0.06,thickness: 2, color: AppColors.whiteColor,) ;},
                  itemCount: Quran_Recources.AyaNumber.length),
            ),
          )

        ],
      ),
    );
  }

}