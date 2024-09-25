import '../theme.dart';

import '../widgets/home_body_titles.dart';

import '../../models/rectangle_data.dart';
import '../widgets/home_rectangle.dart';
import '../widgets/wallet_banner.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<RectangleModel> data = RectangleData().data;

  int _currentIndex = 0;

  final List bodys = [
    homeBody(),
    const Center(child: Icon(Icons.abc)),
    const Center(child: Icon(Icons.shopping_bag_rounded)),
    const Center(child: Icon(Icons.date_range_outlined)),
    const Center(child: Icon(Icons.list_alt_outlined)),
    const Center(child: Icon(Icons.person)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.read<ThemeProvider>().toggleTheme();
              },
              icon: const Icon(Icons.notifications_rounded, color: Colors.grey),
            ),
          ],
        ),
        body: bodys[_currentIndex],
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
      ),
    );
  }
}

Widget homeBody() {
  final List data = RectangleData().data;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: SingleChildScrollView(
      child: Column(
        children: [
          const WalletBanner(),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 16 / 9,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) => HomeRectangle(
              data: data[index],
            ),
          ),
          HomeBodyTitles(),
        ],
      ),
    ),
  );
}
