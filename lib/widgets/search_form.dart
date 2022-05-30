import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  Object? _selectedValue;
  List<String> listOfValue = ['Restaurant', 'Bakery', 'Cafe'];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(19, 75, 138, 1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(19, 75, 138, 1),
                    width: 2.0,
                  ),
                ),
              ),
              value: _selectedValue,
              hint: const Text(
                'Restaurant',
              ),
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value.toString();
                });
              },
              onSaved: (value) {
                setState(() {
                  _selectedValue = value.toString();
                });
              },
              validator: (value) {
                if (value.toString().isEmpty) {
                  return "can't empty";
                }
                return null;
              },
              items: listOfValue.map((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(
                    val,
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                hintText: "Search name...",
                suffixIcon: const Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(19, 75, 138, 1),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(19, 75, 138, 1),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
