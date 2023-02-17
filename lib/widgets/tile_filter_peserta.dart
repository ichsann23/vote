import 'package:flutter/material.dart';

class FilterPeserta extends StatelessWidget {
  final String title;
  final bool isMale;
  const FilterPeserta({
    super.key,
    required this.title,
    this.isMale = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 150,
      padding: const EdgeInsets.only(right: 12, left: 12),
      decoration: BoxDecoration(
        color: isMale ? const Color(0xffCCDAFC) : const Color(0xffFF6A88),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
