import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainTab> {
  MainCubit() : super(MainTab.home);

  void changeTab(MainTab tab) {
    if (state != tab) {
      emit(tab);
    }
  }
}
