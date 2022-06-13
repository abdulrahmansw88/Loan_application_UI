
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_chelitos/utils/colors.dart';

class ProfileViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Profile", style: TextStyle(color: Colors.black),),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            TextButton(onPressed: () {},
                child: Text("Edit", style: TextStyle(fontSize: 16),))
          ],
        ),
        body:SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              child:Image.asset('assets/images/logo/user_icon.png', color: Colors.white, height: 80, width: 80,) ,
                            ),
                            Positioned(
                                bottom: 0.0,
                                right: 0,
                                child: IconButton(
                                  onPressed: null, icon: Icon(Icons.edit, color: Colors.white,)))
                          ],

                        ),
                      ),
                      SizedBox(height: 20,),
                      buildColumnList("User Name","John Doe"),
                      buildColumnList("Email", "jhon@email.com"),
                      buildColumnList("Phone", "+92 305 XXXXXXX"),
                      buildColumnList("Location", "Berlin, Germany"),
                      buildColumnList("Date Of Birth", "9 march 1996"),
                    ]))));
  }

  Column buildColumnList(String title,String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 15),),
        SizedBox(height: 10,),
        Text(value, style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15),),
        Divider(thickness: 1,),
      ],);
  }
}