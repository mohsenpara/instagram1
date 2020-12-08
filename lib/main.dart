import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram1/AppBar.dart';
import 'BottomNavigation.dart';
import 'bloc/all_bloc_bloc.dart';
import 'body.dart';

void main() {
  runApp(AppDesign());
}

class AppDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (BuildContext context) => AllBlocBloc(),
        child:
        MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                appBar: AppBar1(),
                bottomNavigationBar: BottomNav1(),
                body:  BlocProvider(
                  create: (BuildContext context) => AllBlocBloc(),
                  child: Body1(),
                )
            ),
        ),
      );
  }
}
