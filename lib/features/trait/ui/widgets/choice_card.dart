import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personality_check/core/ui/colors.dart';

import '../../model/choice.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({
    Key? key,
    required this.choice,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final Choice choice;
  final void Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? PColors.primary : Colors.white,
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Text(
            choice.text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: isSelected ? Colors.white : PColors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
