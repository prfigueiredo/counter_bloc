import 'package:counter_bloc/app/blocs/counter_bloc.dart';
import 'package:counter_bloc/app/model/model_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: BlocBuilder<CounterBloc, Counter>(
        builder: (context, counter) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Count: ${counter.count}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<CounterBloc>().increment(),
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 16),
                    FloatingActionButton(
                      onPressed: () =>
                          context.read<CounterBloc>().decrement(),
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
