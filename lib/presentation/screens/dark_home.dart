import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/rectangle_data.dart';
import '../../models/title_data.dart';
import '../theme.dart';
import '../widgets/dark_home_rectangle.dart';
import '../widgets/dark_home_title.dart';
import '../widgets/wallet_banner.dart';

class DarkHome extends StatefulWidget {
  const DarkHome({super.key});

  @override
  State<DarkHome> createState() => _DarkHomeState();
}

class _DarkHomeState extends State<DarkHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List darkData = RectangleData().darkData;
    final List tradingData = TitleData().tradingData;

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
      body: Padding(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: MyColors.bannerColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
