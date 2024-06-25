import 'package:flutter/material.dart';

class DashboardOfFragments extends StatefulWidget {
  @override
  _DashboardOfFragmentsState createState() => _DashboardOfFragmentsState();
}

class _DashboardOfFragmentsState extends State<DashboardOfFragments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Text("Welcome to the Dashboard"),
      ),
    );
  }
}
