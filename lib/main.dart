import 'package:flutter/material.dart';
import 'package:todo_with_cache/features/home/presentation/blocs/bloc/news_bloc.dart';
import 'package:todo_with_cache/features/home/presentation/pages/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_with_cache/server_locator.dart';
import 'server_locator.dart' as di;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsBloc>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
