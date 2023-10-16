import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/sign_in/presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:minerva/widgets/minerva_textfield.dart';
import 'package:widgets/loading_indicator.dart';

class MobileSignInScreen extends StatefulWidget {
  const MobileSignInScreen({super.key});

  @override
  MobileSignInScreenState createState() => MobileSignInScreenState();
}

class MobileSignInScreenState extends State<MobileSignInScreen> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool _showPassword = false;

  void togglePasswordDisplay() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 80,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8.0),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.blue.withOpacity(0.3),
            //       spreadRadius: 3,
            //       blurRadius: 10,
            //       offset: const Offset(0, 3), // changes the shadow position
            //     ),
            //   ],
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/minervalogo_without_bg.png',
                alignment: Alignment.topCenter,
                height: 105,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 14,
                ),
                _buildUserNameText(context),
                _buildUserNameField(),
                const SizedBox(
                  height: 10,
                ),
                _buildPassWordText(context),
                _buildPasswordField(),
                const SizedBox(
                  height: 150,
                ),
                _buildSignInButton(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'LogIn to continue !',
                  style: GoogleFonts.istokWeb(
                    textStyle:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1.2,
                            ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Row _buildUserNameText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            'Username*',
            style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildPassWordText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            'Password*',
            style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignInButton() {
    return BlocBuilder<SignInBloc, SignInState>(builder: (ctx, state) {
      return state.maybeWhen(
        loading: () {
          return Align(
            child: LoadingIndicator(),
          );
        },
        orElse: () {
          return ElevatedButton(
              onPressed: () {
                BlocProvider.of<SignInBloc>(context).add(
                  SignInEvent.signInButtonPressed(
                    username: username.text,
                    password: password.text,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('LogIn'.toUpperCase()),
              ));
        },
      );
    });
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: MinervaTextField(
        labelText: 'Password',
        controller: password,
        obsecure: true,
        hintText: 'Enter your password',
        prefixIcon: const Icon(
          Icons.lock,
        ),
      ),
    );
  }

  Widget _buildUserNameField() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: MinervaTextField(
        labelText: 'Username',
        controller: username,
        obsecure: false,
        hintText: 'Username',
        prefixIcon: const Icon(
          Icons.person,
        ),
      ),
    );
  }
}
