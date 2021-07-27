import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:provider/provider.dart';

class SponsorScaffoldMobile extends StatefulWidget {
  final Widget child;
  SponsorScaffoldMobile({this.child});

  @override
  _SponsorScafolldMobileState createState() => _SponsorScafolldMobileState();
}

class _SponsorScafolldMobileState extends State<SponsorScaffoldMobile> {
  double _height = 0;
  double _width = 0;
  SponsorController sponsorController = SponsorController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _width = size.width;
    sponsorController = SponsorController(context: context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorAppBarSponsor,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              _height = _height == 0 ? size.height : 0;
            });
          },
          child: Container(
            height: size.height,
            child: Icon(
              Icons.menu,
              color: colorTextSponsor,
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            sponsorController.changeInitPageHome(0);
          },
          child: Text(
            'Thử thách 3days-labB304',
            style: TextStyle(color: colorTextSponsor),
          ),
        ),
        actions: [
          Consumer<SponsorModel>(builder: (context, value, child) {
            if (value.loginCaNhan != null) {
              return GestureDetector(
                onTap: () {
                  DiagLogOut.showDiaglogItemLogout(
                    context,
                    () {
                      Provider.of<SponsorModel>(context, listen: false)
                          .exitLogin();
                    },
                  );
                },
                child: Container(
                  color: colorAppBarSponsor,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginCaNhan.name}',
                          style: TextStyle(
                            color: colorBodySponsor,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginCaNhan.money}đ',
                          style: TextStyle(
                            color: colorBodySponsor,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else if (value.loginDoanhNghiep != null) {
              return GestureDetector(
                onTap: () {
                  DiagLogOut.showDiaglogItemLogout(
                    context,
                    () {
                      Provider.of<SponsorModel>(context, listen: false)
                          .exitLogin();
                    },
                  );
                },
                child: Container(
                  color: colorAppBarSponsor,
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginDoanhNghiep.name}',
                          style: TextStyle(
                            color: colorBodySponsor,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${value.loginDoanhNghiep.money}đ',
                          style: TextStyle(
                            color: colorBodySponsor,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else
              return GestureDetector(
                onTap: () {
                  sponsorController.checkLoginPhoneCaNhan();
                },
                child: Container(
                  height: double.infinity,
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: colorBodySponsor,
                    size: 32,
                  ),
                ),
              );
          })
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: colorBodySponsor,
//Stack
        child: Stack(
          children: [
            widget.child,
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _height,
              width: _width,
              color: colorAppBarSponsor,
            )
          ],
        ),
      ),
    );
  }
}
