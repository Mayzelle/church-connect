import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_community_chapel/features/sermons/data/models/sermon-model.dart';

import '../bloc/sermons_bloc.dart';

class SermonsScreen extends StatefulWidget {
  const SermonsScreen({super.key});

  @override
  State<SermonsScreen> createState() => _SermonsScreenState();
}

class _SermonsScreenState extends State<SermonsScreen> {
  List<SermonModel> sermons = [];
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(true);

  // Build AppBar
  AppBar _buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text(
        "Sermons",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 90, 11, 104),
    );
  }

  // Get Sermons
  void _getSermons() {
    BlocProvider.of<SermonsBloc>(context).add(GetSermonsEvent());
  }

  // Handle Sermon State Change
  void _handleStateChange(BuildContext context, SermonsState state) {
    if (state is SermonsLoading) {
      isLoading.value = true;
    } else if (state is SermonsSuccess) {
      sermons = state.sermons ?? [];
      isLoading.value = false;
    } else if (state is SermonsError) {
      isLoading.value = false;
    }
  }

  // Build Body
  Widget _buildBody() {
    return ListView(
      children: sermons
          .map((sermon) => Container(
                margin: const EdgeInsets.all(10),
                child: Card(
                  child: Column(
                    children: [
                      Image.network(sermon.thumbnailUrl),
                      ListTile(
                        title: Text(sermon.title),
                        subtitle: Text(sermon.title),
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }

  // Build Error Body
  Widget _buildErrorBody() {
    return Center(
      child: Column(
        children: [
          const Text("Error"),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Try again"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SermonsBloc, SermonsState>(
      listener: _handleStateChange,
      child: ValueListenableBuilder<bool>(
        valueListenable: isLoading,
        builder: (context, isLoading, child) {
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 233, 230, 230),
            appBar: _buildAppBar(),
            body: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : sermons.isNotEmpty
                    ? _buildBody()
                    : _buildErrorBody(),
          );
        }
      ),
    );
  }
}
