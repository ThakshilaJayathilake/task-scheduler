import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 60),
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/3.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/header1.jpg"
                  )
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.secondaryColor,),
                SizedBox(width: 10,),
                Container(
                  child: Icon(Icons.add, color: Colors.white, size: 20,),
                  width: 25,
                    height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.home, color: AppColors.secondaryColor,),
                SizedBox(width: 10,),
                Text("2", style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondaryColor
                ),)
              ],
            ),
          )
        ],
    ),
    );
  }
}