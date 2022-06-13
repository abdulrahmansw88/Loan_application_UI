import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mis_chelitos/utils/colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        centerTitle: true,
        elevation: 0.0,
        leading: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
                height: 300,
                child: Lottie.asset('assets/animated/customer_support.json', )),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)
              ),
              child: ListTile(
                title: Text("WhatsApp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                subtitle: Text("+92 305 xxxxxxx",style: TextStyle(fontSize: 16),),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:Lottie.asset("assets/animated/whatsapp.json",
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  ),
                ),
                ),
              ),
            SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)
              ),
              child: ListTile(
                title: Text("Phone Dial",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                subtitle: Text("+92 305 xxxxxxx",style: TextStyle(fontSize: 16),),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:Lottie.asset("assets/animated/phone.json",
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)
              ),
              child: ListTile(
                title: Text("leave a Message",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                subtitle: Text("+92 305 xxxxxxx",style: TextStyle(fontSize: 16),),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:Lottie.asset("assets/animated/message.json",
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
