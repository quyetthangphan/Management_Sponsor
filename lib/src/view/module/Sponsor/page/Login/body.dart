import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class SponsorLogin extends StatefulWidget {
  @override
  _SponsorLoginState createState() => _SponsorLoginState();
}

class _SponsorLoginState extends State<SponsorLogin> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    sponsorController = SponsorController(context: context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              color: colorAppBarSponsor),
          Center(
            child: Container(
              height: size.width * 0.9,
              width: size.width * 0.9,
              decoration: // BoxShape.circle == Hình tròn.
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              padding: EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: 30,
                        color: colorAppBarSponsor,
                        letterSpacing: 1.5),
                  ),
                  SizedBox(
                    height: 20,
                    width: 250,
                  ),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                        ),
                        hintText: 'PHONE',
                      ),
                      onChanged: (String value) {
                        sponsorController.changInitLoginPageCaNhan(value);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      sponsorController.chanInitScreen(0);
                    },
                    child: Container(
                        height: 50,
                        width: 100,
                        color: colorAppBarSponsor,
                        child: Center(
                            child: Text(
                          'Quay Lại',
                          style:
                              TextStyle(fontSize: 15, color: colorBodySponsor),
                        ))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
