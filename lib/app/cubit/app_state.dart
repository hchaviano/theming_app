part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState({
    this.isLightTheme = true,
    this.pageIndex = 0,
  });

  final bool isLightTheme;
  final int pageIndex;

  AppState copyWith({
    bool? isLightTheme,
    int? pageIndex,
  }) {
    return AppState(
      isLightTheme: isLightTheme ?? this.isLightTheme,
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }

  @override
  List<Object?> get props => [
        isLightTheme,
        pageIndex,
      ];
}
