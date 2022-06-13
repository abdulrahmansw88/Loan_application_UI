import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_chelitos/home_screen/HomeScreenController.dart';
import 'package:mis_chelitos/profile/profile_screen.dart';
import 'package:mis_chelitos/utils/colors.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({
    Key? key,
  }) : super(key: key);
  final controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> controller.screenList[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black,
          currentIndex:  controller.selectedIndex.value,
          onTap: (value){
            controller.selectedIndex.value = value;
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home', icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: 'Transactions', icon: Icon(Icons.history),
            ),
            BottomNavigationBarItem(
              label: 'Contact Us', icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}


class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: (){
                  Get.to(ProfileViewScreen());
                },
                title: Text("Hello",style: TextStyle(color: Colors.grey),),
                subtitle: Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/profile_assets/profile.jpg"),
                ),

                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){}, icon: Image.asset("assets/profile_assets/Search.png")),
                    IconButton(onPressed: (){
                      //  Get.to(NotificationScreen());

                    }, icon: Image.asset("assets/profile_assets/notifcation.png"),)
                  ],
                ),





              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Wallet",style: TextStyle(color: Colors.white,fontSize: 22),),

                          InkWell(child: Image.asset("assets/profile_assets/invite friend.png",scale: 1,),onTap: (){
                            // Get.to(InviteScreen());
                          },),],
                      ),
                      SizedBox(height: 10,),
                      Text("₦152,252.00",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("*** *** **** 5422",style: TextStyle(color: Colors.white,fontSize: 18),),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Service",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("View All",style: TextStyle(color: Colors.black,fontSize: 14),),



                  ],),
              ),
              Row(

                children: [
                  Expanded(child: Column(
                    children: [
                      GestureDetector(child: Image.asset("assets/profile_assets/Group 18443.png",),onTap: (){
                        // Get.to(LoanScreen());
                      },
                      ), Text("Get Loans",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                  Expanded(child: Column(children: [GestureDetector(child: Image.asset("assets/profile_assets/Group 18453.png",),onTap: (){
                    // Get.to(TransferScreen());
                  },), Text("Transfer",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                  Expanded(child: Column(children: [GestureDetector(child: Image.asset("assets/profile_assets/Group 18455.png",),onTap: (){
                    // Get.to(PayBillScreen());
                  },),Text("Pay Bills",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                  Expanded(child: Column(children: [GestureDetector(child: Image.asset("assets/profile_assets/Group 18456.png",),onTap: (){
                  },), Text("Buy Airtime",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                ],
              ),


              Row(
                children: [
                  Expanded(child: Column(children: [GestureDetector(child: Image.asset("assets/profile_assets/saving.png",),onTap: (){

                    //Get.to(SavingScreen2());
                  },), Text("Savings\n",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),],)),
                  Expanded(child: Column(children: [Image.asset("assets/profile_assets/invest.png",), Text("Invest",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),Text("Coming Soon",style: TextStyle(color: Colors.grey,fontSize: 8))],)),
                  Expanded(child: Column(children: [Image.asset("assets/profile_assets/pension.png",), Text("Pension",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),Text("Coming Soon",style: TextStyle(color: Colors.grey,fontSize: 8))],)),
                  Expanded(child: Column(children: [Image.asset("assets/profile_assets/insurance.png",), Text("Insurance",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),Text("Coming Soon",style: TextStyle(color: Colors.grey,fontSize: 8))],)),


                ],),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Recent Transaction",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
              ),
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
            ]
        ),
      ),
    );
  }
}
