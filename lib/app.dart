import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/colors.dart';
import 'package:minerva/features/sign_in/presentation/bloc/auth/auth_bloc.dart';
import 'package:minerva/features/sign_in/presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:minerva/features/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/home_page.dart';
import 'package:minerva/splash_screen.dart';
import 'package:widgets/widgets.dart';

class MinervaApp extends StatelessWidget {
  const MinervaApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff9A0007),
        statusBarIconBrightness: Brightness.light),);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => sl.get<SignInBloc>(),),
        BlocProvider(
            create: (BuildContext context) =>
                sl.get<AuthBloc>()..add(const AuthEvent.authCheckRequested(),),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Minerva',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xffF44336),
          primaryColorLight: const Color(0xffff7961),
          primaryColorDark: const Color(0xffba000d),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4336f4),
              padding: const EdgeInsets.all(16.0),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xff4336f4),
              padding: const EdgeInsets.all(16.0),
              side: const BorderSide(color: Color(0xff4336f4),),
            ),
          ),
          // accentColor: const Color(0xff4336f4),
          tabBarTheme:
              const TabBarTheme(labelStyle: TextStyle(color: Colors.black),),
          scaffoldBackgroundColor: AppColors.scaffoldBgColor,
          appBarTheme: const AppBarTheme(color: Color(0xffF44336)),
          textTheme: GoogleFonts.latoTextTheme().copyWith(
              bodyMedium: GoogleFonts.jost(
                textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      letterSpacing: 1.2,
                      fontSize: 18,
                    ),
              ),
              bodySmall: const TextStyle(
                letterSpacing: 1.2,
                decorationStyle: TextDecorationStyle.double,
                fontSize: 15,
                fontFamily: "smallcaps",
              ),),
          fontFamily: GoogleFonts.jost().fontFamily,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocConsumer<AuthBloc, AuthState>(
          listener: (ctx, state) {
            state.maybeWhen(
                orElse: () {},
                needAppUpdate: () {
                  showDialog(
                      context: ctx,
                      builder: (ctx) => AppUpdateDialog(
                            appName: 'Minerva',
                            packageName: 'in.easycloud.minerva',
                          ),
                      barrierDismissible: false);
                });
          },
          builder: (ctx, state) {
            return state.when(
              loading: () =>const MinervaSplashScreen(),
              authStateAuthenticated: () => const HomePage(),
              authStateUnAuthenticated: () =>const SignInScreen(),
              needAppUpdate: () => MinervaSplashScreen(),
            );
          },
        ),
      ),
    );
  }
}
