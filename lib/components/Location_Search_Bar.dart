import 'package:flutter/material.dart';
import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final String apikey = 'AIzaSyB8rW9HOA6s4wBdAMHc5ttw6USl1UOcdrY';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(5),
          ),
          child: GooglePlacesAutoCompleteTextFormField(
            googleAPIKey: apikey,
            textEditingController: _searchController,
            itmClick: (prediction) {
              _searchController.text = prediction.description!;
              _searchController.selection = TextSelection.fromPosition(
                  TextPosition(offset: prediction.description!.length));
            },
          ),
        ),
    );
  }
}
