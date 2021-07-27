import 'package:flutter/widgets.dart';
import 'package:flutter_request_ver2/src/utils/dialog.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/component/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/HocBongCaNhan/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/HocBongDoanhNghiep/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/HomePage/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/Login/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/ThongTinQuy/body.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/page/TongQuanChuongTrinh/body.dart';

class Config {
  static List<Widget> configModule = [Sponsor()];

  static List<Widget> configPageSponsor = [
    SponsorHomePage(),
    SponsorThongTinQuy(),
    SponsorListHocBongCaNhan(),
    SponsorListHocBongDoanhNhgiep(),
    TongQuanChiTietChuongTrinh(),
  ];

  static List<Widget> configSponsorLogin = [SponsorPage(), SponsorLogin()];
}
