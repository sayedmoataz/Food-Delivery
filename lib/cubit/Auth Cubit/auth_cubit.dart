import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/cubit/Auth%20Cubit/auth_state.dart';


class MyAuthCubit extends Cubit<MyAuthStates> {
  MyAuthCubit() : super(MyAuthInitState());

  static MyAuthCubit get(contaxt) => BlocProvider.of(contaxt);
  
}
