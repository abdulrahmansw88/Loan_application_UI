import 'package:get/get.dart';
import 'package:mis_chelitos/TransactionScreen.dart';
import 'package:mis_chelitos/contact_us/contact_us_screen.dart';
import 'package:mis_chelitos/home_screen/home_screen.dart';
import 'package:mis_chelitos/profile/profile_screen.dart';

class HomeScreenController extends GetxController{
  RxInt selectedIndex = 0.obs;

  var screenList = [
    HomeScreenView(),
    TransactionScreen(),
    ContactUs(),
    ProfileViewScreen(),
  ];
}