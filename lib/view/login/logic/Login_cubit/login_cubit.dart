import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services/view/login/logic/Login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState>{

  LoginCubit():super(LoginIntialState());

  static LoginCubit get(context)=>BlocProvider.of(context);

bool secuore = true;
void changeSecuore(){
  secuore=!secuore;
  emit(ChangeSecuoreState());
}


}