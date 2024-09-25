import 'package:currency_forex_app/presentation/widgets/button_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/rectangle_data.dart';
import '../../models/title_data.dart';
import '../theme.dart';
import '../widgets/dark_home_rectangle.dart';
import '../widgets/dark_home_title.dart';
import '../widgets/wallet_banner.dart';

class DarkHome extends StatelessWidget {
  const DarkHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
            icon: const Icon(Icons.notifications_rounded),
          ),
        ],
      ),
      body: darkHomeBody(),
      bottomNavigationBar: const ButtonNavBar(),
    );
  }
}

Widget darkHomeBody() {
  final List darkData = RectangleData().darkData;
  final List tradingData = TitleData().tradingData;

  return Padding(
    padding: const EdgeInsets.all(12),
    child: SingleChildScrollView(
      child: Column(
        children: [
          const WalletBanner(),
          const DarkHomeTitle(text1: "Function", text2: "Free"),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 16 / 9,
            ),
            itemCount: darkData.length,
            itemBuilder: (context, index) => DarkHomeRectangle(
              data: darkData[index],
            ),
          ),
          const DarkHomeTitle(text1: "Auto Trading", text2: "Offline"),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 16 / 9,
            ),
            itemCount: tradingData.length,
            itemBuilder: (context, index) => DarkHomeRectangle(
              data: tradingData[index],
              style2: true,
            ),
          ),
        ],
      ),
    ),
  );
}
