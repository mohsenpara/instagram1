import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram1/pages/First.dart';
import 'package:instagram1/pages/GetPicFirst.dart';
import 'bloc/all_bloc_bloc.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AllBlocBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:
              BlocBuilder<AllBlocBloc, AllBlocState>(builder: (context, state) {
            if (state is FirstPicShow) {
              return Center(
                child: Text("bbb"),
              );
            } else if (state is FirstPicShow) {
              return Center(
                child: Text("ccc"),
              );
            } else
              return FirstPage();
          }),
        ),
      ),
    );
  }
}
