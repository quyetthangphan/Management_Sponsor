import 'package:flutter/material.dart';

class ListChiTiet extends StatelessWidget {
  final String name, phoneHocVien, moneyRe;
  final int stt;
  const ListChiTiet({
    Key key,
    this.name,
    this.stt,
    this.moneyRe,
    this.phoneHocVien,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//Container Chứa ListView
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(3),
            3: FlexColumnWidth(3),
          },
          children: <TableRow>[
            TableRow(children: <Widget>[
              Text('$stt'),
              Text('$name'),
              Text('$phoneHocVien'),
              Text('${moneyRe}đ'),
            ])
          ],
        ),
      ),
    );
  }
}
