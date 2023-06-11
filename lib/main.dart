import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app/bloc_observer.dart';
import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(
    const MyApp(),
  );
}
