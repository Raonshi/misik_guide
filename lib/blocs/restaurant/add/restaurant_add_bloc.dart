import 'package:bloc/bloc.dart';
import 'package:misik_guide/blocs/restaurant/add/restaurant_add_state.dart';

class RestaurantAddBloc extends Cubit<RestaurantAddState> {
  RestaurantAddBloc() : super(RestaurantAddState.initial()) {
    _init();
  }

  void _init() async {
    
  }
}
