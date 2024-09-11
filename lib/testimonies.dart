import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:love_community_chapel/config/theme/custom-card.dart';
import 'package:love_community_chapel/config/theme/custom-popup-menu.dart';
import 'package:love_community_chapel/core/data/testimonies.dart';

class TestimoniesScreen extends StatefulWidget {
  const TestimoniesScreen({super.key});

  @override
  State<TestimoniesScreen> createState() => _TestimoniesScreenState();
}

class _TestimoniesScreenState extends State<TestimoniesScreen> {
  String filterValue = '';

  List filterTestimonies() {
    if (filterValue.isEmpty) {
      return testimonies;
    }
    return testimonies
        .where((element) => element['category'].toString() == filterValue)
        .toList();
  }

  // Build AppBar
  AppBar _buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text(
        "Testimonies",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 90, 11, 104),
      actions: [
        CustomPopupMenu(
            items: testimonies.isNotEmpty
                ? filterTestimonies()
                    .map((e) => e['category'].toString())
                    .toSet()
                    .toList()
                : [],
            onSelected: (value) {
              filterValue = value;
              setState(() {});
            },
            child: const Icon(Icons.filter_list_rounded)),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.plus),
        )
      ],
    );
  }

  // Build Body
  Widget _buildBody() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: testimonies.isNotEmpty
          ? testimonies
              .map((e) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomCard.testimoniesCard(
                        name: e['name'],
                        age: e['age'],
                        description: e['description'],
                        category: e['category'],
                      ),
                      const SizedBox(height: 10)
                    ],
                  ))
              .toList()
          : [],
    );
  }

  // // Build Testimony Card
  // Widget _testimonyCard(
  //     {String? name,
  //     required int age,
  //     required String category,
  //     required String description}) {
  //   return Container(
  //     padding: const EdgeInsets.all(8),
  //     constraints: const BoxConstraints(
  //       maxHeight: 250,
  //       minWidth: double.infinity,
  //     ),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: Column(
  //       children: [
  //         Text(name ?? "Anonymous"),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Text(age.toString()),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Text(category),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Text(description),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 230, 230),
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}
