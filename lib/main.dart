import 'package:flutter/material.dart';
import 'components/barrel_files.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchBar(),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Google Auto Complete Search'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 50),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                SearchBarWidget(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                DropOffDateBar(),
                SizedBox(
                  width: 5,
                ),
                DropOffTimeBar()
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                PickUpDateBar(),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: PickUpTimeBar(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SearchButton(),
          ],
        ),
      ),
    );
  }
}
