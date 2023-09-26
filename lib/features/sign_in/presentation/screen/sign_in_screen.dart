import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minerva/features/sign_in/presentation/bloc/auth/auth_bloc.dart';
import 'package:minerva/features/sign_in/presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:minerva/features/sign_in/presentation/screen/mobile_sign_in_screen.dart';
import 'package:minerva/toast_message.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignInBloc, SignInState>(
        listener: (BuildContext ctx, state) {
          state.maybeWhen(
            orElse: () {},
            goToHomePage: () {
              BlocProvider.of<AuthBloc>(context)
                  .add(const AuthEvent.authCheckRequested());
            },
            failure: (error) async {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text(error.error)));
              toastMessage(context: context, errorMessage: error.error);
            },
          );
        },
        child: const MobileSignInScreen(),
      ),
    );
  }
}
