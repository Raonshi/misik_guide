import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:misik_guide/blocs/home/home_state.dart';
import 'package:misik_guide/data/app_user/app_user_model.dart';
import 'package:misik_guide/repositories/user_repository.dart';

class HomeBloc extends Cubit<HomeState> {
  final PageController pageController = PageController();
  final UserRepository _userRepo = UserRepository();

  HomeBloc(String uid) : super(HomeState.initial()) {
    _init(uid);
  }

  void _init(String uid) async {
    AppUser? user = await _userRepo.getUser(uid);
    if (user != null) {
      emit(state.copyWith(user: user));
    }
  }

  void changePage(int index) {
    pageController.jumpToPage(index);
    emit(state.copyWith(bottomNavIndex: index));
  }
}
