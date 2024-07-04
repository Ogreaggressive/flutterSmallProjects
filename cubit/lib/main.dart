import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'string_state.dart';
import 'string_cubit.dart';
import 'form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => StringCubit(),
        child: LoginForm()
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("example using bloc pattern"),
      ),
      body : BlocBuilder<StringCubit, StringState>(
          builder: (context, state) {
            if( state is StringLoading) {
              return Text("Loading.......");
            } else if (state is StringNew) {
              return Text( state.data);
            } else {
              return Text("");
            }
          } ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<StringCubit>().addData();
        },
        child: const Icon(Icons.add),
      ),
    );
}
