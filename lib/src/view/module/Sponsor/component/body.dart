import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/SponsorModel.dart';
import 'package:flutter_request_ver2/src/utils/config.dart';
import 'package:flutter_request_ver2/src/view/module/Sponsor/component/ScaffoldMobile/body.dart';
import 'package:provider/provider.dart';

class SponsorPage extends StatelessWidget {
  const SponsorPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SponsorScaffoldMobile(child: Consumer<SponsorModel>(
      builder: (context, value, child) {
        return Config.configPageSponsor[value.initSponsor];
      },
    ));
  }
}
