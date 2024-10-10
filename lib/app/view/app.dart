import 'package:api_repository/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo/app/view/app_view.dart';
import 'package:turbo/todo/cubit/todo_cubit.dart';

class App extends StatelessWidget {
  const App({required this.apiRepository, super.key});

  final ApiRepository apiRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(apiRepository: apiRepository),
      child: const AppView(),
    );
  }
}
