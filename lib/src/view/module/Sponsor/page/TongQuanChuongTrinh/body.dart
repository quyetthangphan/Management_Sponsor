import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class TongQuanChiTietChuongTrinh extends StatelessWidget {
  const TongQuanChiTietChuongTrinh({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.9,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Ươm mầm tài năng',
                style: TextStyle(
                  fontSize: 25,
                  color: colorAppBarSponsor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ContainerText(
                text:
                    'Với mong muốn giúp đỡ những hoàn cảnh khó khăn hoặc những cá nhân đạt thành tích nổi bật thỏa tiêu chí đề ra của quỹ học bổng, ứng dụng  được xây dựng nhằm quản lý minh bạch: ',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: colorBodySponsor,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                width: size.width * 0.8,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '- Các khoản đóng góp của quý mạnh thường quân. ',
                        style: TextStyle(color: colorAppBarSponsor),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '- Thông tin chi tiết phân bổ học bổng của các mạnh thường quân đến với các cá nhân (được phân quyền để mạnh thường quân xem chi tiết các thông tin phân bổ học bổng của mình đã đóng góp).',
                      style: TextStyle(color: colorAppBarSponsor),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ContainerText(
                text:
                    'Hệ thống chia thành 2 phần: cá nhân và doanh nghiệp. Chức năng của hệ thống đang tiếp tục phát triển ứng dụng nền tảng Blockchain, một công nghệ không thể thiếu trong hệ thống cần tính minh bạch. ',
              ),
              SizedBox(
                height: 10,
              ),
              ContainerText(
                text:
                    'Với tiêu chí, giúp  đúng người, nhận đúng quỹ, làm cho mọi thứ tốt đẹp hơn. Chúng tôi mong muốn nhận được nhiều hơn nữa các  góp  ý về hệ  thống để ngày càng hoàn thiện hơn. ',
              ),
              SizedBox(
                height: 10,
              ),
              ContainerText(
                text:
                    'Cuối cùng để đóng góp cho quỹ, mạnh thường quân thực hiện các bước sau:',
              ),
              SizedBox(
                height: 10,
              ),
              ListViewText(
                stt: 'Bước 1',
                text:
                    'Chuyển khoản vào tài khoản số: 0946734111 Ngân hàng Quân Đội MB Bank. Với nội dung: Góp quỹ học bổng chương trình iSMS, số điện thoại, cá nhân hoặc tổ chức, số tiền.',
              ),
              SizedBox(
                height: 15,
              ),
              ListViewText(
                stt: 'Bước 2',
                text:
                    'Trong 24h, đại diện bên mình sẽ liên  lạc cho mạnh thường quân xác nhận.',
              ),
              SizedBox(
                height: 15,
              ),
              ListViewText(
                stt: 'Bước 3',
                text:
                    'Mạnh thường quân nhận email từ hệ thống iSMS và truy cập kiểm soát học bổng đã đóng góp.',
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'Mọi đóng góp ý kiến xin được nhận thông qua 2 kênh: ',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListViewText(
                stt: 'Name:',
                text: 'Nguyễn Minh Sơn',
              ),
              ListViewText(
                stt: 'Email: ',
                text: 'devisms@googlegroups.com',
              ),
              ListViewText(
                stt: 'Phone: ',
                text: '0946734111',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerText extends StatelessWidget {
  final String text;
  const ContainerText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        '$text',
        textScaleFactor: 1,
        style: TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ListViewText extends StatelessWidget {
  final String stt;
  final String text;
  const ListViewText({Key key, this.stt, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colorBodySponsor,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              '$stt',
              style: TextStyle(fontSize: 15, color: colorAppBarSponsor),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: colorBodySponsor, width: 1))),
          ),
          Container(
            width: size.width * 0.7,
            child: Text(
              '$text',
              style: TextStyle(color: colorAppBarSponsor),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
