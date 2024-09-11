import 'package:flutter/material.dart';
import 'package:love_community_chapel/core/utils/dependency_injector.dart';
import 'package:love_community_chapel/features/auth/presentation/pages/log_in.dart';

import '../../../../core/utils/local-storage.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Build App Bar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 90, 11, 104),
      title: const Text('Profile'),
    );
  }

  // Build Body
  Widget _buildBody() {
    return Center(
      child: ElevatedButton(onPressed: () {
        // Clear Local Storage
        sl<LocalStorage>().clear();
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LogIn()), (route) => false);
      }, child: const Text("Logout")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}
