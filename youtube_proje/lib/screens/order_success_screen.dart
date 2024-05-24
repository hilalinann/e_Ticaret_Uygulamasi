import 'package:flutter/material.dart';
import 'package:youtube_proje/screens/navigation_screen.dart';
import 'package:youtube_proje/widgets/container_button_modal.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                "images/success.png",
                height: 250,
              ),
              SizedBox(height: 15),
              Text(
                  "Success!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 20),
              Text(
                  "You order will be delivered soon.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Text(
                  "Thank you for choosing our app.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> NavigationScreen(),
                    ));
              },
              child: ContainerButtonModel(
                itext: "Continue Shopping",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Color(0xFFDB3022),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
