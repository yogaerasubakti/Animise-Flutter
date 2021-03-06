import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class HomescreenAdminPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // int counter = 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryOrangeColor,
        automaticallyImplyLeading: false,
        title:  Text("Home"),
        actions: [
          Stack(
            children: [
              // IconButton(icon: Icon(Icons.notifications),onPressed: (){
              //   setState((){
              //     // counter = 0;
              //   });
              // }),
              IconButton(onPressed: (){
                setState((){
                  //Log out admin
                });
              }, icon: Icon(Icons.exit_to_app))
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 412,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffFF8A00), primaryYellowColor
                ])
              ),
              // color: primaryYellowColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/Profile_admin.png",
                    width: 79,
                    height: 79,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text("Yoga Era Subakti",
                    style: thirdTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Text("Admin", style: secondaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14,
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 38,
              runSpacing: 40,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/add-product');
                  },
                  child: Image.asset("assets/add_product.png",
                    width: 84
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Image.asset("assets/view_product.png",
                    width: 80
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Image.asset("assets/Modify_banner.png",
                    width: 87
                  ),
                ),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Image.asset("assets/Order_list.png",
                    width: 80
                  ),
                ),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Image.asset("assets/Chat_admin.png",
                    width: 80
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}