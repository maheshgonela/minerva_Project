import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/features/sign_in/presentation/bloc/auth/auth_bloc.dart';
import 'package:minerva/get_it/injection.dart';
import 'package:minerva/launch_utils.dart';
import 'package:package_info/package_info.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'package:widgets/loading_indicator.dart';

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
              child: Column(
                children: [
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (ctx, state) {
                      return state.map(
                          loading: (_) => LoadingIndicator(),
                          authStateAuthenticated: (_) =>
                              _buildUserAccountsDrawerHeader(
                                  sl.get<LoggedInUser>(), context),
                          authStateUnAuthenticated: (_) => Container(),
                          needAppUpdate: (_) => Container());
                    },
                  ),
                  ListTile(
                      onTap: () => Navigator.pop(context),
                      title: Text(
                        'Home',
                        style: GoogleFonts.istokWeb(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                      leading: const Icon(
                        Icons.home_outlined,
                      ),
                      trailing: const Text(
                        ". . .",
                        style: TextStyle(
                            color: Color.fromARGB(255, 136, 135, 133)),
                      )),
                  const Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                      //onTap: () => _launchEasyCloud(),
                      onTap: () async {
                        // ignore: deprecated_member_use
                        await launch('https://easycloud.in');
                      },
                      leading: const Icon(
                        Icons.business,
                      ),
                      title: Text('POWERED BY',
                          style: GoogleFonts.istokWeb(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold))),
                      trailing: const Text(
                        "EasyCloud",
                        style: TextStyle(
                            color: Color.fromARGB(255, 136, 135, 133)),
                      )),
                  const Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                      onTap: () => launchPlayStore(),
                      leading: const Icon(
                        Icons.star,
                      ),
                      title: Text('Rate Us',
                          style: GoogleFonts.istokWeb(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold))),
                      trailing: const Text(
                        "OpenPlayStore",
                        style: TextStyle(
                            color: Color.fromARGB(255, 136, 135, 133)),
                      )),
                  const Divider(
                    color: Colors.grey,
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
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(
                Icons.apps,
              ),
              title: Text('Minerva',
                  style: GoogleFonts.istokWeb(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold))),
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
                        " Version ${snapshot.data!}",
                        style: GoogleFonts.istokWeb(
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 136, 135, 133))),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserAccountsDrawerHeader(
    LoggedInUser user,
    BuildContext context,
  ) {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        child: Text(
          user.name.characters.first,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      accountEmail: Text(user.name,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 26)),
      accountName: Padding(
        padding: const EdgeInsets.only(
          top: 34,
        ),
        child: Text('Minerva Sweets',
            style: GoogleFonts.istokWeb(
                textStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16))),
      ),
    );
  }

  Future<String?> _getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  // Future<void> _launchEasyCloud() async {
  //   var url = Uri.parse(
  //       'https://easycloud.in'); // Use Uri.parse instead of UriData.fromString

  //   await launch(url); // Use launch instead of launchUrl
  // }
}
