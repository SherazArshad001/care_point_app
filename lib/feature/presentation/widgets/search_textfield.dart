import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Color(0xffcae9ff),
            width: 0.7,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffcae9ff),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: Image.asset(
          'assets/images/search.png',
          color: const Color(0xffcae9ff),
        ),
        hintText: 'Search Doctor',
        hintStyle: const TextStyle(
          color: Color(0xffcae9ff),
        ),
        filled: true,
        fillColor: const Color(0xFF62b6cb).withOpacity(0.6),
      ),
    );
  }
}
