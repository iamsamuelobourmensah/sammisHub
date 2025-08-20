import 'package:flutter/material.dart';
import 'package:sammis_hub/core/Constants/color_theme.dart';
import 'package:sammis_hub/features/HomeScreen/Presentation/widgets/circle_avatar_widget.dart';

class HomeScreenAppBarWidget extends StatelessWidget {
   HomeScreenAppBarWidget({super.key,this.userLocation,this.userName});

  String? userName;
  String? userLocation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
        
          children: [
            CircleAvatarWidget(
                radius: 25,
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
              SizedBox(width: 10,),

              Column(children: [
                Text(
                userName ?? 'Welcome, User',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colortheme.labelPrimary
                      : Colortheme.labelTertiary,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, 
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colortheme.labelPrimary
                        : Colortheme.labelTertiary,size: 20,
                  ),
                  Text(
                    userLocation ?? 'Your Location',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                     // fontWeight: FontWeight.w500,
                     color: Theme.of(context).brightness == Brightness.light
                          ? Colortheme.labelPrimary
                          : Colortheme.labelTertiary,
                    ),
                  ),
             
                ],
              ),
        
        
              ],),
        
          ],
        ),

               CircleAvatarWidget(
            borderColor: Colortheme.systemBackgroundMedium,
            backgroundColor: Theme.of(context).brightness == Brightness.light
                ? Colortheme.labelTertiary
                : Colortheme.labelPrimary,
            radius: 25,
            child: IconButton(
              icon:  Icon(Icons.notifications_outlined, size: 30,color: Theme.of(context).brightness == Brightness.light
                  ? Colortheme.labelPrimary
                  : Colortheme.labelTertiary ,),
              onPressed: () {
                // Handle notification button press
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Notifications tapped')));
              },
            ),
          ),
      ],
    
    );
  }
}
