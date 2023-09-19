import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misik_guide/blocs/home/home_bloc.dart';
import 'package:misik_guide/blocs/home/home_state.dart';
import 'package:misik_guide/pages/feed_page.dart';
import 'package:misik_guide/pages/restaurant/restaurant_add_page.dart';
import 'package:misik_guide/pages/search_page.dart';
import 'package:misik_guide/pages/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => HomeBloc(FirebaseAuth.instance.currentUser!.uid),
      child: const _HomePageBody(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.user == null) return const Material(child: Center(child: CircularProgressIndicator.adaptive()));
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(state.user!.name),
          ),
          body: SafeArea(
            child: PageView(
              controller: context.read<HomeBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DashBoardPage(),
                MapPage(),
                SettingPage(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const RestaurantAddPage()),
              );
            },
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return BottomNavigationBar(
                onTap: BlocProvider.of<HomeBloc>(context).changePage,
                currentIndex: state.bottomNavIndex,
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
      },
    );
  }
}
