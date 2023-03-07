import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void changeTheme() => emit(
        state.copyWith(
          isLightTheme: !state.isLightTheme,
        ),
      );

  void changeScreen(int index) => emit(
        state.copyWith(
          pageIndex: index,
        ),
      );
}
