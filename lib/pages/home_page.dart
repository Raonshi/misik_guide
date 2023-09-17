import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/home_bloc.dart';
import 'package:misik_guide/pages/feed_page.dart';
import 'package:misik_guide/pages/search_page.dart';
import 'package:misik_guide/pages/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => HomeBloc(),
      child: const _HomePageBody(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: context.read<HomeBloc>().pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            FeedPage(),
            MapPage(),
            SettingPage(),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<HomeBloc, int>(
        builder: (context, state) {
          return BottomNavigationBar(
            onTap: BlocProvider.of<HomeBloc>(context).changePage,
            currentIndex: state,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                label: "feed",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: "map",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "setting",
              ),
            ],
          );
        },
      ),
    );
  }
}
