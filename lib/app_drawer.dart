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
                  const Divider(),
                  ListTile(
                      onTap: () => _launchEasyCloud(),
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
                  const Divider(),
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
                  const Divider(),
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
            const Divider(),
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
      LoggedInUser user, BuildContext context) {
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
          style: GoogleFonts.istokWeb(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 26))),
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

  Future _launchEasyCloud() async {
    const url = 'https://easycloud.in';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


//  return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             decoration: BoxDecoration(color: Color.fromARGB(255, 8, 8, 8)),
//             accountName: Text('Easy Cloud'),
//             accountEmail: Text(
//               user!.email!,
//               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                     fontSize: 21,
//                     color: Colors.white,
//                   ),
//             ),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: NetworkImage(
//                   'https://png.pngtree.com/element_our/sm/20180410/sm_5acd1797b5783.jpg'),
//             ),
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.home_outlined),
//             title: Text('HOME'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.corporate_fare),
//             title: Text('POWERED BY'),
//             trailing: Text(
//               "Easy cloud",
//               style: TextStyle(color: Color.fromARGB(255, 136, 135, 133)),
//             ),
//             onTap: () async {
//               // ignore: deprecated_member_use
//               await launch('https://easycloud.in/');
//             },
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.star),
//             title: Text('Rate Us'),
//             trailing: Text(
//               "OpenPlayStore",
//               style: TextStyle(color: Color.fromARGB(255, 136, 135, 133)),
//             ),
//             onTap: () async {
//               // ignore: deprecated_member_use
//               await launch(
//                   'https://play.google.com/store/apps/details?id=in.easycloud.mealmaven&pli=1');
//             },
//           ),
//           // Divider(),
//           // ListTile(
//           //   leading: Icon(Icons.settings),
//           //   title: Text('Settings'),
//           //   onTap: () {

//           //      Navigator.pop(context);
//           //   },
//           // ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.logout),
//             title: Text(
//               'logout',
//               style: TextStyle(color: Color.fromARGB(255, 1, 0, 0)),
//             ),
//             onTap: () async {
//               await FirebaseAuth.instance.signOut();
//             },
//           ),
//           Divider(),
//         ],
//       ),
//     );