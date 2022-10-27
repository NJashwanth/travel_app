import 'package:flutter/material.dart';
import 'package:travel_app/global/textstyles.dart';

class CategoryButton extends StatelessWidget {
  final String asset;
  final String name;
  final bool isSelected;
  const CategoryButton(
      {Key? key,
      required this.asset,
      required this.name,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
              color: isSelected
                  ? const Color(0xff5DC720)
                  : Colors.grey.withOpacity(0.3),
              width: 1.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              asset,
              width: 50,
            ),
            Text(
              name,
              style: categoryButtonName,
            )
          ],
        ),
      ),
    );
  }
}
