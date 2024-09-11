import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_community_chapel/home.dart';
import 'package:love_community_chapel/main.dart';

import '../../data/models/user-request-model.dart';
import '../bloc/auth_bloc.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Login
  void login() {
    context.read<AuthBloc>().add(AuthEventLogin(UserRequestModel(
        email: _emailController.text, password: _passwordController.text)));
  }

  // Handle Authentication State
  void _handleAuthenticationState(BuildContext context, AuthState state) {
    if (state is AuthLoginSuccess) {
      print("Login Success");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: _handleAuthenticationState,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 90, 11, 104),
              leading: BackButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const StartApp(),
                    ),
                  );
                },
                color: Colors.white,
              )),
          resizeToAvoidBottomInset: false,
          body: Container(
            color: const Color.fromARGB(255, 90, 11, 104),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      20.0,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Welcome Back',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            60,
                          ),
                          topRight: Radius.circular(
                            60,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                          20,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 60.0),
                            Container(
                              padding: const EdgeInsets.all(
                                20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color.fromARGB(210, 202, 134, 214),
                                //     blurRadius: 20,
                                //     offset: Offset(0, 10),
                                //   ),
                                // ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromARGB(
                                            255,
                                            238,
                                            238,
                                            238,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        hintText: 'Email or Phone number',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      validator: (value) {
                                        if (value?.isEmpty ?? true) {
                                          return "Email is required";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Color.fromARGB(
                                            255,
                                            238,
                                            238,
                                            238,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: _passwordController,
                                      decoration: const InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      validator: (value) {
                                        if (value?.isEmpty ?? true) {
                                          return "Password is required";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (BuildContext context) =>
                                //         const MyHome(),
                                //   ),
                                // );
                                if (_formKey.currentState!.validate()) {
                                  login();
                                }
                              },
                              child: Container(
                                height: 50.0,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                  color: const Color.fromARGB(255, 90, 11, 104),
                                ),
                                child: Center(
                                    child: Text(
                                  'Login',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Log In with',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Color.fromARGB(255, 90, 11, 104),
                                        size: 25,
                                      ),
                                    ),
                                    Text(
                                      'Google',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        color: const Color.fromARGB(
                                            255, 90, 11, 104),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 40),
                                Column(
                                  children: [
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: Color.fromARGB(255, 90, 11, 104),
                                        size: 25,
                                      ),
                                    ),
                                    Text(
                                      'Facebook',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        color: const Color.fromARGB(
                                            255, 90, 11, 104),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
