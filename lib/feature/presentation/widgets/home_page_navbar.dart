import 'package:flutter/material.dart';

class HomePageChip extends StatelessWidget {
  const HomePageChip({
    super.key,
    required this.filters,
  });

  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, left: 6),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filters.length,
          itemBuilder: (BuildContext context, int index) {
            final filter = filters[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Chip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Color(0xffffffff)),
                ),
                color: const WidgetStatePropertyAll(
                  Color(0xffffffff),
                ),
                label: Text(
                  filter,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xff1b4965),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
