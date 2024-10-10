import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turbo/todo/cubit/todo_cubit.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.select((TodoCubit cubit) => cubit.state);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];

                return Text(
                  'Item $todo',
                  style: Theme.of(context).textTheme.headlineSmall,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
