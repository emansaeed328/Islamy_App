import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ui/home/quran/quran_resources.dart';
import 'package:islamy_app/utils/app_assets.dart';
import 'package:islamy_app/utils/app_colors.dart';

class QuranDetailsWidget extends StatefulWidget{
  static const routeName = 'QuranDetailsWidget' ;

  @override
  State<QuranDetailsWidget> createState() => _QuranDetailsWidgetState();
}

class _QuranDetailsWidgetState extends State<QuranDetailsWidget> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    int? SelectedIndex = 0;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int index = ModalRoute.of(context)?.settings.arguments as int;
    if(Verses.isEmpty) {
      loadDetailsFromFile(index);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(Quran_Recources.englishQuranSurahs[index],
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),

      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: height*0.02),
            color: AppColors.blackbgColor,
            child: Image.asset(AppAssets.quranDetails,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height*0.03),
                  child: Text(Quran_Recources.arabicQuranSurahs[index],
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Container(
                height: height*0.65,
                child: Expanded(
                    child: Verses.isEmpty?
                    Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)) :
                    ListView.builder(
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              SelectedIndex = index ;

                              print(index);
                              print(SelectedIndex);
                              setState(() {

                              });
                            },
                            child: Container(

                                margin: EdgeInsets.symmetric(vertical: height*0.01,horizontal: width*0.07),
                               padding: EdgeInsets.symmetric(vertical: height*0.02,horizontal: width*0.02),
                              decoration: BoxDecoration(
                                color: SelectedIndex == index? AppColors.primaryColor : AppColors.colorTransparent,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: AppColors.primaryColor,width: 2),
                              ),
                                child: Center(child: Text('[${index+1}]' + Verses[index] ,style: TextStyle(color: SelectedIndex == index? AppColors.blackColor : AppColors.primaryColor,fontSize: 20),))),
                          );
                        },
                        itemCount: Verses.length,
                    )),
              )
            ],
          )

    ]
      ),
    );

  }
  void loadDetailsFromFile(int index) async{

   String fileContent = await rootBundle.loadString('assets/files/${index+1}.txt');
   List<String> suraLines = fileContent.split('\n');
   Verses = suraLines ;
   Future.delayed(Duration(seconds: 1),() => setState((){}));
  }

}
