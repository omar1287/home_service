import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services/view/register/logic/register_cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState>{

  RegisterCubit():super(RegisterIntialState());

  static RegisterCubit get(context)=>BlocProvider.of(context);

  bool secuore = true;
  void changeSecuore(){
    secuore=!secuore;
    emit(ChangeSecuoreState());
  }
  bool secuore2 = true;
  void changeSecuore2(){
    secuore2=!secuore2;
    emit(ChangeSecuore2State());
  }
}