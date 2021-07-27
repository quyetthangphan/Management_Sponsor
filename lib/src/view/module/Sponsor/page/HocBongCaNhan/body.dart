import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/component/indexpage/component/ListChiTiet/body.dart';
import 'package:provider/provider.dart';

class SponsorListHocBongCaNhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          color: colorBodySponsor,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20)),
              Text(
                'NGƯỜI NHẬN HỌC BỖNG',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: size.width,
                child: Consumer<SponsorModel>(
                  builder: (context, value, child) {
                    return value.listChiTiet != null
                        ? ListView.builder(
                            itemCount: value.listChiTiet.length,
                            itemBuilder: (context, index) {
                              return ListChiTiet(
                                stt: index + 1,
                                name: value.listChiTiet[index].name,
                                phoneHocVien:
                                    value.listChiTiet[index].phoneHocVien,
                                moneyRe: value.listChiTiet[index].moneyRe,
                              );
                            },
                          )
                        : Center(
                            child: Text(
                              'Hiện Tại Chưa Có Người Nhận',
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
