import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary list
  List list = [
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fanphat.com.vn%2Fmedia%2Fproduct%2F38186_laptop_dell_latitude_3420_42lt342001_111.png&imgrefurl=https%3A%2F%2Fwww.anphatpc.com.vn%2Flaptop-dell-latitude-3420-42lt342001-core-i3-1115g4-4gb-256gb-intel-uhd-14.0-inch-hd-fedora-den.html&tbnid=cDCN3vdB3tPVfM&vet=12ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag..i&docid=4yigMx8estPv1M&w=648&h=648&q=lap%20top&ved=2ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fanphat.com.vn%2Fmedia%2Fproduct%2F38186_laptop_dell_latitude_3420_42lt342001_111.png&imgrefurl=https%3A%2F%2Fwww.anphatpc.com.vn%2Flaptop-dell-latitude-3420-42lt342001-core-i3-1115g4-4gb-256gb-intel-uhd-14.0-inch-hd-fedora-den.html&tbnid=cDCN3vdB3tPVfM&vet=12ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag..i&docid=4yigMx8estPv1M&w=648&h=648&q=lap%20top&ved=2ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fanphat.com.vn%2Fmedia%2Fproduct%2F38186_laptop_dell_latitude_3420_42lt342001_111.png&imgrefurl=https%3A%2F%2Fwww.anphatpc.com.vn%2Flaptop-dell-latitude-3420-42lt342001-core-i3-1115g4-4gb-256gb-intel-uhd-14.0-inch-hd-fedora-den.html&tbnid=cDCN3vdB3tPVfM&vet=12ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag..i&docid=4yigMx8estPv1M&w=648&h=648&q=lap%20top&ved=2ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fanphat.com.vn%2Fmedia%2Fproduct%2F38186_laptop_dell_latitude_3420_42lt342001_111.png&imgrefurl=https%3A%2F%2Fwww.anphatpc.com.vn%2Flaptop-dell-latitude-3420-42lt342001-core-i3-1115g4-4gb-256gb-intel-uhd-14.0-inch-hd-fedora-den.html&tbnid=cDCN3vdB3tPVfM&vet=12ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag..i&docid=4yigMx8estPv1M&w=648&h=648&q=lap%20top&ved=2ahUKEwiY4I-Yjab5AhXhJaYKHf07DEUQMygGegUIARC4Ag',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
            // display orders
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SingleProduct(image: list[index]);
            },
            itemCount: list.length,
          ),
        )
      ],
    );
  }
}
