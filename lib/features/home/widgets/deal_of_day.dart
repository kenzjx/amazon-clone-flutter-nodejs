import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          'https://hanoimoi.com.vn/tin-tuc/Chuyen-la/898306/nhung-buc-anh-dep-me-hon-ve-doi-thuong-cua-cac-loai-dong-vat',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Bird',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://hanoimoi.com.vn/tin-tuc/Chuyen-la/898306/nhung-buc-anh-dep-me-hon-ve-doi-thuong-cua-cac-loai-dong-vat',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://hanoimoi.com.vn/tin-tuc/Chuyen-la/898306/nhung-buc-anh-dep-me-hon-ve-doi-thuong-cua-cac-loai-dong-vat',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://hanoimoi.com.vn/tin-tuc/Chuyen-la/898306/nhung-buc-anh-dep-me-hon-ve-doi-thuong-cua-cac-loai-dong-vat',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://hanoimoi.com.vn/tin-tuc/Chuyen-la/898306/nhung-buc-anh-dep-me-hon-ve-doi-thuong-cua-cac-loai-dong-vat',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'see all deal',
            style: TextStyle(color: Colors.cyan[800]),
          ),
        )
      ],
    );
  }
}
