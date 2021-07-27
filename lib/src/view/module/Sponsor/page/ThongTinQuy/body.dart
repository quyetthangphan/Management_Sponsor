import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/component/indexpage/component/TextFieldSearch/body.dart';

import 'component/ListView.dart';

class SponsorThongTinQuy extends StatefulWidget {
  @override
  _SponsorThongTinQuyState createState() => _SponsorThongTinQuyState();
}

class _SponsorThongTinQuyState extends State<SponsorThongTinQuy> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return
// Container all
        Center(
      child: Container(
        height: 500,
        width: size.width,
        color: colorTextSponsor,
// Phần Column chức năng
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
//CÁ NHÂN
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        sponsorController.onPressedList(0);
                      },
                      child: Center(child: Text('CÁ NHÂN')),
                    ),
                  ),
// CỬA HÀNG
                  SizedBox(
                    height: 70,
                    width: 35,
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        sponsorController.onPressedList(1);
                      },
                      child: Text("DOANH NGHIỆP"),
                    ),
                  ),
                ],
              ),
//SEARCH
              TextFieldSearch(
                search: (value) {
                  sponsorController.changInitTextFieldSearch(value);
                },
              ),
//ListView.builder
              Container(
                height: 300,
                width: size.width,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: ListBuilderViewThongTinQuy(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
