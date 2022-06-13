import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_chelitos/utils/colors.dart';


class TransactionScreen extends StatelessWidget {
  @override
 // final DashboardScreen controller = Get.put(DeshboardScreen());

  @override
  Widget build(BuildContext context) {


    //return Obx(() =>
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Transactions History ", style: TextStyle(color: Colors.white),),
        backgroundColor: primaryColor,
        actions: <Widget>[
          Image.asset("assets/profile_assets/Search.png", color: Colors.white)
        ],
        centerTitle: true,
        leading: Text(''),
      ),

      backgroundColor: Colors.white,

          body: SafeArea(

            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                     Card(
                       shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),
                         elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/profile_assets/linegraph.png",),
                      )
                    ),
                    SizedBox(height: 10,),
                    Text("Recent Transactions",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text("Today",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      ),
                      child: ListTile(
                        title: Text("Electricity Bill",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment via wallet can be done",style: TextStyle(fontSize: 10),),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:Image.asset("assets/profile_assets/electricity.jpg",
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        trailing: Text("\$ 125",style: TextStyle(color: Colors.red,),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      ),
                      child: ListTile(
                        title: Text("Electricity Bill",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment via wallet can be done",style: TextStyle(fontSize: 10),),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:Image.asset("assets/profile_assets/electricity.jpg",
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        trailing: Text("\$ 125",style: TextStyle(color: Colors.red,),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      ),
                      child: ListTile(
                        title: Text("Electricity Bill",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment via wallet can be done",style: TextStyle(fontSize: 10),),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:Image.asset("assets/profile_assets/electricity.jpg",
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        trailing: Text("\$125",style: TextStyle(color: Colors.red,),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      ),
                      child: ListTile(
                        title: Text("Electricity Bill",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        subtitle: Text("Payment via wallet can be done",style: TextStyle(fontSize: 10),),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child:Image.asset("assets/profile_assets/electricity.jpg",
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        trailing: Text("\$125",style: TextStyle(color: Colors.red,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        );
    //);
  }




 }