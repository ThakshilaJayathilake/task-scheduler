import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/widget/button_widget.dart';

import '../colors/app_colors.dart';
import '../widget/textfield_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(
                "assets/addtask1.jpg"
              ))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // const SizedBox(height: 60,),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.arrow_back,
                    color: AppColors.secondaryColor,
                    ))
              ]),
            Column(
              children: [
                TextFieldWidget(textController: nameController,
                  hintText: "Task Name"),
                const SizedBox(height: 20,),
                TextFieldWidget(textController: detailController,
                    hintText: "Task Detail",
                    borderRadius: 15,
                    maxLines: 3,),
                const SizedBox(height: 20,),
                ButtonWidget(backgroundcolor: AppColors.mainColor, text: "Add", textColor: Colors.white)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
            )
          ],
        ),
      ),
    );
  }
}
