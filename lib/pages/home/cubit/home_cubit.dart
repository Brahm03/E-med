import 'package:bloc/bloc.dart';
import 'package:emed/pages/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(Homemain());

  int currentpage = 0;

  changePage(int index) {
    if (index == 0) {
      currentpage = index;
      emit(Homemain());
    } else if (index == 1) {
      currentpage = index;
      emit(SyringeState());
    } else if (index == 2) {
      currentpage = index;
      emit(DoctorState());
    } else if (index == 3) {
      currentpage = index;
      emit(HospitalState());
    }
  }
}
