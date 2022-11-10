import 'package:anitocorn_smart_home/utils/smart_device_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List mySmartDevices = [
    ["Smart Light", "assets/icons/light-bulb.png", true],
    ["Smart AC", "assets/icons/air-conditioner.png", true],
    ["Smart TV", "assets/icons/smart-tv.png", false],
    ["Smart Fan", "assets/icons/fan.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/menu.png',
                    height: 45.0,
                    color: Colors.grey[800],
                  ),
                  Icon(
                    Icons.person,
                    size: horizontalPadding,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wellcome Home,',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    'PHENOMENAL INC.',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 52.0,
                      color: Colors.red[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Colors.red[600],
                thickness: 1,
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'Smart Devices',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mySmartDevices.length,
                padding: const EdgeInsets.all(25.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return SmartDeviceBox(
                    smartDeviceName: mySmartDevices[index][0],
                    iconPath: mySmartDevices[index][1],
                    powerOn: mySmartDevices[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
