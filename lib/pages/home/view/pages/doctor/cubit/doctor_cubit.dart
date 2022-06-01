import 'package:bloc/bloc.dart';
import 'package:emed/pages/home/cubit/home_cubit.dart';
import 'package:emed/pages/home/state/home_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  DoctorCubit() : super(DoctorState(HomeCubit.datainfo));

  Set temp = {};

  void searchDoctor(String text) {
    temp.clear();
    for (var i = 0; i < HomeCubit.datainfo[0].length; i++) {
      if (text.isEmpty) {
        temp.clear();
        emit(DoctorState(HomeCubit.datainfo));
      } else if (HomeCubit.datainfo[0][i]['name']
          .toString()
          .toLowerCase()
          .contains(text.toString().toLowerCase())) {
        temp.add(HomeCubit.datainfo[0][i]);
        emit(DoctorState(HomeCubit.datainfo));
      }
    }
  }
}
