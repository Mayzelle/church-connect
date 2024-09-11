import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:love_community_chapel/core/utils/dependency_injector.dart';
import 'package:love_community_chapel/core/utils/local-storage.dart';
import 'package:love_community_chapel/features/auth/data/models/user-model.dart';
import 'package:love_community_chapel/features/auth/presentation/bloc/auth_bloc.dart';
// import 'package:love_community_chapel/log_in.dart';
// import 'package:love_community_chapel/register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_community_chapel/features/sermons/presentation/bloc/sermons_bloc.dart';
import 'features/auth/presentation/pages/home.dart';
import 'features/auth/presentation/pages/log_in.dart';
import 'features/auth/presentation/pages/register.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: sl.allReady(),
        builder: (context, builder) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => sl<AuthBloc>()),
              BlocProvider(create: (_) => sl<SermonsBloc>())
            ],
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: StartApp(),
            ),
          );
        });
  }
}

class StartApp extends StatefulWidget {
  const StartApp({super.key});

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(true);

  @override
  void initState() {
    super.initState();
    navigator();
  }

  void navigator() async {
    await Future.delayed(const Duration(seconds: 3));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        UserModel? user = sl<LocalStorage>().getUser();
        Logger().i(user);
        if (user != null) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const MyHome(),
            ),
            (route) => false,
          );
        } else {
          _isLoading.value = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: _isLoading,
        builder: (context, isLoading, child) {
          return Scaffold(
            body: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topCenter, colors: [
                        // Color.fromARGB(255, 74, 20, 140),
                        // Color.fromARGB(255, 106, 27, 154),
                        Color.fromARGB(255, 171, 71, 188),
                        Color.fromARGB(255, 106, 27, 154),
                        const Color.fromARGB(255, 90, 11, 104),
                      ]),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/main1.png',
                            width: 200,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Register(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(200, 20)),
                            child: Text(
                              'Register',
                              style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 90, 11, 104),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LogIn(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 20),
                            ),
                            child: Text(
                              'Log In',
                              style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 90, 11, 104),
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          );
        });
  }
}
