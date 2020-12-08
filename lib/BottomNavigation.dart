import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram1/pages/First.dart';
import 'package:instagram1/pages/GetPicFirst.dart';
import 'bloc/all_bloc_bloc.dart';

class BottomNav1 extends StatefulWidget {
  @override
  _BottomNav1State createState() => _BottomNav1State();
}

class _BottomNav1State extends State<BottomNav1> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AllBlocBloc(),
      child: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.07,
                  icon: Image.asset('assets/Images/choose.png'),
                  onPressed: () {
                    FirstPicClick();
                    print("1");
                  }),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.07,
                  icon: Image.asset('assets/Images/edit.png'),
                  onPressed: () => {
                        print("2"),
                        BlocProvider.of<AllBlocBloc>(context)
                            .add(FirstPicClick())
                      }),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.07,
                  icon: Image.asset('assets/Images/them.png'),
                  onPressed: () => {
                        print("3"),
                        BlocListener<AllBlocBloc, AllBlocState>(
                          listener: (context, state) {
                            return FirstPicClick();
                          },
                        )
                      }),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.07,
                  icon: Image.asset('assets/Images/logo.png'),
                  onPressed: () => {
                        print("4"),
                        BlocBuilder<AllBlocBloc, AllBlocState>(
                            builder: (context, state) {
                          return MaterialApp(
                            debugShowCheckedModeBanner: true,
                            home: Scaffold(
                              body: Text("sdf"),
                            ),
                          );
                        })
                      }),
              IconButton(
                  iconSize: MediaQuery.of(context).size.width * 0.07,
                  icon: Image.asset('assets/Images/text.png'),
                  onPressed: () => {
                        print("5"),
                        Text("dfg"),
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
