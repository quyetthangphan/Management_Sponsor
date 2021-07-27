import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/GoogleMapDoanhNghiep/bodt.dart';
import 'package:provider/provider.dart';

class SponsorHomePage extends StatefulWidget {
  const SponsorHomePage({Key key}) : super(key: key);

  @override
  _HomePageSponsorState createState() => _HomePageSponsorState();
}

class _HomePageSponsorState extends State<SponsorHomePage> {
  SponsorController sponsorController;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    sponsorController = SponsorController(context: context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: colorAppBarSponsor,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Center(
                          child: Consumer<SponsorModel>(
                            builder: (context, value, child) {
                              return Text(
                                funcSumValue(value.listSumSponsor),
                                style: TextStyle(
                                  fontSize: size.width * 0.09,
                                  color: colorAppBarSponsor,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white.withOpacity(1),
                                      offset: Offset(2, 5),
                                      blurRadius: 3,
                                    ),
                                    Shadow(
                                      color: colorAppBarSponsor.withOpacity(1),
                                      offset: Offset(1, 3),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 35, 35, 35),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'VNĐ',
                          style: TextStyle(
                            fontSize: size.width * 0.03,
                            color: colorAppBarSponsor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ContainerMenu(
            text: 'Thông Tin Quỹ',
            press: () {
              sponsorController.changeInitPageHome(1);
              sponsorController.changInitListDoanhNghiepVaCaNhan(0);
            },
          ),
          Container(
            width: size.width * 0.95,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    sponsorController.changeInitPageHome(1);
                    sponsorController.changInitListDoanhNghiepVaCaNhan(1);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              color: Colors.white.withOpacity(0.3))
                        ]),
                    child: Center(
                      child: Text(
                        'Doanh Nghiệp đóng góp',
                        style: TextStyle(
                            color: colorBodySponsor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SponsorPageGoogleDoanhNghiep()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: size.width * 0.34,
                    decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.zero,
                            topLeft: Radius.zero),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              color: Colors.white.withOpacity(0.3))
                        ]),
                    child: Center(
                      child: Text(
                        'Doanh Nghiệp',
                        style: TextStyle(
                            color: colorBodySponsor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ContainerMenu(
            text: 'Tài Năng Ươm Mầm',
            press: () {
              sponsorController.changeInitPageHome(4);
            },
          )
        ],
      ),
    );
  }
}

class ContainerMenu extends StatelessWidget {
  final String text;
  final Function press;
  const ContainerMenu({Key key, this.press, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: colorAppBarSponsor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 5,
                    color: Colors.white.withOpacity(0.3))
              ]),
          child: Center(
              child: Text(
            '$text',
            style: TextStyle(
                color: colorBodySponsor,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                letterSpacing: 2),
          )),
        ),
        onTap: press);
  }
}
