import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/colors.dart';
import 'package:minerva/features/sign_in/presentation/bloc/auth/auth_bloc.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/launch_utils.dart';
import 'package:minerva/loading_indicator.dart';
import 'package:minerva/widgets/minerva_button.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (ctx, state) {
                      return state.map(
                          loading: (_) => const LoadingIndicator(),
                          authStateAuthenticated: (_) => _buildUserInfoTile(
                              sl.get<LoggedInUser>(), context),
                          authStateUnAuthenticated: (_) => Container(),
                          needAppUpdate: (_) => Container());
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: Text(
                      'Minerva',
                      style: GoogleFonts.istokWeb(
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold)),
                    ),
                    leading: const Icon(
                      Icons.apps,
                    ),
                    trailing: FutureBuilder<String?>(
                      future: _getAppVersion(),
                      builder: (ctx, snapshot) {
                        const loading = SizedBox(
                          width: 24,
                          height: 24,
                          child: FittedBox(
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                            ),
                          ),
                        );

                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                          case ConnectionState.active:
                            return loading;
                          case ConnectionState.done:
                            return Text(
                              snapshot.data!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            );
                        }
                      },
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.only(left: 16.0, right: 4.0),
                    leading: const Icon(
                      Icons.business,
                    ),
                    title: Text('Powered By'.toUpperCase(),
                        style: GoogleFonts.istokWeb(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold))),
                    trailing: InkWell(
                      child: TextButton(
                        onPressed: _launchEasyCloud,
                        child: Text('EasyCloud',
                            style: GoogleFonts.istokWeb(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                      leading: const Icon(
                        Icons.star,
                        // color: AppColors.raisedButtonColor,
                      ),
                      title: TextButton(
                        child: Text(
                          'Rate Us On PlayStore =>',
                          style: GoogleFonts.istokWeb(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ),
                        onPressed: () => launchPlayStore(),
                      )),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
              ),
              title: Text('Logout',
                  style: GoogleFonts.istokWeb(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold))),
              onTap: () => BlocProvider.of<AuthBloc>(context)
                  .add(const AuthEvent.signedOut()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfoTile(LoggedInUser user, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 16.0, right: 4.0),
        leading: const Icon(
          Icons.person_pin,
          //color: AppColors.raisedButtonColor,
        ),
        title: Text(user.name,
            style: GoogleFonts.istokWeb(
                textStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold))),
        subtitle: Text(
          user.organizationName,
          style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  Future<String?> _getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  Future _launchEasyCloud() async {
    const url = 'https://easycloud.in';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
