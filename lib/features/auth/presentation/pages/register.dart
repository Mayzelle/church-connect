import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_community_chapel/config/theme/custom-dropdown-menu.dart';
import 'package:love_community_chapel/features/auth/data/models/user-request-model.dart';
import 'package:love_community_chapel/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:love_community_chapel/features/auth/presentation/pages/home.dart';
import 'package:love_community_chapel/main.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String groupValue = 'Female';

  // Text Editing Controllers
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void login() {
    context.read<AuthBloc>().add(AuthEventRegister(UserRequestModel(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        age: int.parse(_ageController.text),
        email: _emailController.text,
        phoneNumber: _phoneNumberController.text,
        password: _passwordController.text,
        gender: _genderController.text,
        location: _locationController.text)));
  }

  // Handle Authentication State
  void _handleAuthenticationState (BuildContext context, AuthState state) {
    if (state is AuthRegisterSuccess) {
      print("Register Success");
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome() ));
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
            ),
          ),
          resizeToAvoidBottomInset: false,
          body: Container(
            color: const Color.fromARGB(255, 90, 11, 104),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Register',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //
                    Container(
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
                          30,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 60),
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
                                controller: _firstNameController,
                                decoration: const InputDecoration(
                                  hintText: 'First name',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return "First name is rewuired";
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
                                controller: _lastNameController,
                                decoration: const InputDecoration(
                                  hintText: 'Last name',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return "Last name is required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Text("Gender"),
                            CustomDropDownMenu(
                              // value: _genderController.text.isEmpty ? null : _genderController.text,
                              labelText: "Gender",
                              onChanged: (value) {
                                _genderController.text = value ?? "";
                              },
                              items: ["Male", "Female"],
                              disabledItems: [],
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //   Radio(value: 'Female',
                            //   groupValue: groupValue,
                            //   onChanged: ((value) {
                            //   setState(() {
                            //     groupValue = value!;
                            //   });
                            //   }),),
                            //   const Text('Female'),
                            //   const SizedBox(width: 20,),
                            //    Radio(value: 'Male',
                            //   groupValue: groupValue,
                            //   onChanged: ((value) {
                            //   setState(() {
                            //     groupValue = value!;
                            //   });
                            //   }),),
                            //   const Text('Male'),
                            // ],),
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
                                controller: _ageController,
                                decoration: const InputDecoration(
                                  hintText: 'Age',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? false) {
                                    return "Age is required";
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
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  hintText: 'Email',
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
                                controller: _phoneNumberController,
                                decoration: const InputDecoration(
                                  hintText: 'Phone number',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return "Phone number is required";
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
                                  hintText: 'create password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return "Password is reqiored";
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
                                controller: _confirmPasswordController,
                                decoration: const InputDecoration(
                                  hintText: 're-enter password',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value?.isEmpty ?? true) {
                                    return "You must re-enter password";
                                  }
                                  if (value! != _passwordController.text) {
                                    return "Passwords do not match";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(height: 25),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (BuildContext context) => const MyHome(),
                                //   ),
                                // );
                                if (_formKey.currentState?.validate() ??
                                    false) {
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
                                  'Register',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                )),
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              'Register with',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 15),
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
                                        color: const Color.fromARGB(
                                            255, 90, 11, 104),
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
                                            255, 74, 20, 140),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
