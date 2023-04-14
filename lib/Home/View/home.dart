import 'package:ekin_app/Home/View/HomeSubViews/new_registration.dart';
import 'package:ekin_app/Product/Widgets/SliverAppBarWidget/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [const CSliverAppbar()],
          body: TabBarView(children: [
            const NewRegistrationView(),
            Container(height: context.dynamicHeight(1), color: Colors.white30),
            Container(height: context.dynamicHeight(1), color: Colors.white70)
          ]),
        ),
      ),
    );
  }
}