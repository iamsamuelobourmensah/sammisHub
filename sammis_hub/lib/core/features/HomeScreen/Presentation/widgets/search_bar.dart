import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/core/features/HomeScreen/Presentation/widgets/circle_avatar_widget.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key, this.controller, this.onChanged});
  final TextEditingController? controller;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TextField(
            onChanged: onChanged,
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colortheme.systemBackgroundDark),
              ),
              filled: true,
              fillColor: Theme.of(context).brightness == Brightness.light
                  ? Colortheme.labelTertiary
                  : Colortheme.labelPrimary,
              hintText: 'Search for items here',
              prefixIcon: Icon(Icons.search, color: Colors.grey, size: 32),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),// end of searchbar
SizedBox(width: 18,),
        CircleAvatarWidget(
          borderColor: Theme.of(context).brightness == Brightness.light
              ? Colortheme.labelPrimary
              : Colortheme.labelTertiary,
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? Colortheme.labelTertiary
              : Colortheme.labelPrimary,
          radius: 25,
          child: Icon(Icons.tune_outlined,color: Colortheme.primaryNormal,),
        )
      ],
    );
  }
}
