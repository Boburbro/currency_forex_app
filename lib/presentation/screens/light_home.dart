import 'package:currency_forex_app/presentation/widgets/button_nav_bar.dart';

import '../theme.dart';

import '../widgets/home_body_titles.dart';

import '../../models/rectangle_data.dart';
import '../widgets/home_rectangle.dart';
import '../widgets/wallet_banner.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<RectangleModel> data = RectangleData().data;

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
        body: homeBody(),
        bottomNavigationBar: const ButtonNavBar(),
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
