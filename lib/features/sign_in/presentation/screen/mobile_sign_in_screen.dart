import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/styles.dart';
import 'package:minerva/features/sign_in/presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:minerva/widgets/minerva_button.dart';
import 'package:minerva/widgets/minerva_textfield.dart';

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
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 80,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes the shadow position
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/minervalogo.png',
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
              children: [
                _buildUserNameText(context),
                _buildUserNameField(),
                _buildPassWordText(context),
                _buildPasswordField(),
                const SizedBox(
                  height: 100,
                ),
                _buildSignInButton(),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'LogIn to continue !',
                  style: captionStyle,
                )
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
          padding: const EdgeInsets.only(
            top: 4,
            left: 16,
          ),
          child: Text(
            'UserName *',
            style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
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
          padding: const EdgeInsets.only(
            top: 4,
            left: 16,
          ),
          child: Text(
            'Password*',
            style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
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
          return const Align(
            child: CircularProgressIndicator(),
          );
        },
        orElse: () {
          return MinervaButton(
            onButtonPressed: () {
              BlocProvider.of<SignInBloc>(context).add(
                SignInEvent.signInButtonPressed(
                  username: username.text,
                  password: password.text,
                ),
              );
            },
            label: 'LogIn',
            color: Colors.purple[400],
          );
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
          color: Colors.black,
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
          color: Colors.black,
        ),
      ),
    );
  }
}
//  TextFormField(
//                           controller: _passwordController,
//                           obscureText: !_isPasswordVisible,
//                           style: myTextStyle().copyWith(fontSize: 12),
//                           decoration: myInputDecoration().copyWith(
//                             labelText: 'Password',
//                             prefixIcon: const Icon(
//                               Icons.lock,
//                             ),
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   _isPasswordVisible = !_isPasswordVisible;
//                                 });
//                               },
//                               icon: Icon(
//                                 _isPasswordVisible
//                                     ? Icons.visibility
//                                     : Icons.visibility_off,
//                               ),
//                             ),
//                           )),
