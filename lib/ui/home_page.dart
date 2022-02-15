import 'package:api_project/bloc/api_bloc.dart';
import 'package:api_project/bloc/api_event.dart';
import 'package:api_project/bloc/api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/response.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final apiBloc = ApiBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API APP'),
      ),
      body: Center(
        child: BlocBuilder(
          bloc: apiBloc,
          builder: (context, state) {
            if (state is ApiGetUser) {
              getUser();
              return Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Text(state.name.substring(
                          0,
                          2,
                        ).toUpperCase()),
                  ),
                  Text(state.name),
                  Text(state.userName),
                  Text(state.email),
                ],
              );
            } else {
              return const Text('Press button to get data');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          apiBloc.add(ApiEventButtonPress());
        },
        child: const Icon(Icons.get_app),
      ),
    );
  }
}
