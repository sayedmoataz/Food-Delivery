import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/cubit/Home%20Cubit/home_state.dart';

class MyHomeCubit extends Cubit<MyHomeStates> {
  MyHomeCubit() : super(HomeInitState());

  static MyHomeCubit get(contaxt) => BlocProvider.of(contaxt);
  
}
