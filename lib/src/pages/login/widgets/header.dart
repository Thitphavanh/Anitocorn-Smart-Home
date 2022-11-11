import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 50.0,
        bottom: 40.0,
      ),
      child: Image.network(
        // 'https://www.vectoronline.com.au/media/catalog/category/smart-home.png',
        'https://cdn-icons-png.flaticon.com/512/2922/2922393.png',
        width: 250,
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }
}
