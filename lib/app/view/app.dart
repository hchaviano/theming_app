import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theming_app/app/cubit/app_cubit.dart';
import 'package:theming_app/app/view/views.dart';
import 'package:theming_app/l10n/l10n.dart';
import 'package:theming_ui/theming_ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            themeMode: state.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            theme: const AppTheme().themeData,
            darkTheme: const AppDarkTheme().themeData,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: AppView(
              selectedPageIndex: state.pageIndex,
              isLightTheme: state.isLightTheme,
            ),
          );
        },
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    super.key,
    required this.selectedPageIndex,
    required this.isLightTheme,
  });

  final int selectedPageIndex;
  final bool isLightTheme;

  static const pages = <Widget>[
    RootScreen(),
    ColorsScreen(),
    SpacingScreen(),
    TypographyScreen(),
    WidgetsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
        actions: [
          IconButton(
            onPressed: () => context.read<AppCubit>().changeTheme(),
            icon: Icon(
              isLightTheme
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),
      body: pages[selectedPageIndex],
    );
  }
}
