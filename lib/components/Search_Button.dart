import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({
    super.key,
  });

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 46,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.search),
        label: const Text('SEARCH'),
      ),
    );
  }
}
