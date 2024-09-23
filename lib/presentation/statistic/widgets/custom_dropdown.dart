import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      dropdownMenuEntries: const [
        DropdownMenuEntry<String>(
          label: 'Year',
          value: 'year',
        ),
        DropdownMenuEntry<String>(
          label: 'Month',
          value: 'month',
        ),
        DropdownMenuEntry<String>(
          label: 'Day',
          value: 'day',
        ),
      ],
      hintText: 'Month',
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        constraints: BoxConstraints.tight(
          Size.fromHeight(50.h),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
