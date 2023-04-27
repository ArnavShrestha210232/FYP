//Vegetarian, Pescatarian, Non-veg (HOME)

import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/views/mobile/swiggy/meat/Fordinner.dart';
import 'package:swiggy_ui/views/mobile/swiggy/meat/Forlunch.dart';
import 'package:swiggy_ui/views/mobile/swiggy/meat/Forsnacks.dart';
import 'package:swiggy_ui/widgets/responsive.dart';

import 'all_restaurants/all_restaurants_screen.dart';
import 'genie/genie_grocery_card_view.dart';
import 'meat/menu_screen_for_breakfast.dart';
import 'meat/veg_screen.dart';
import 'meat/pescatarian_screen.dart';
import 'meat/nonveg_screen.dart';

class FoodGroceriesAvailabilityView extends StatelessWidget {
  const FoodGroceriesAvailabilityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          if (!isTabletDesktop)
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    width: 10.0,
                    height: 140.0,
                    color: swiggyOrange,
                  ),
                ),
                UIHelper.horizontalSpaceMedium(),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'We are now deliverying food groceries and other essentials.',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Food & Genie service (Mon-Sat)-6:00 am to 9:00pm. Groceries & Meat (Mon-Sat)-6:00 am to 6:00pm. Dairy (Mon-Sat)-6:00 am to 6:00pm (Sun)-6:00 am to 12:00 pm',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16.0,
                              color: Colors.grey[800],
                            ),
                      )
                    ],
                  ),
                )
              ],
            ),
          if (!isTabletDesktop) UIHelper.verticalSpaceLarge(),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  child: Container(
                    height: 150.0,
                    color: swiggyOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Restaurants',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(color: Colors.white),
                                  ),
                                  UIHelper.verticalSpaceExtraSmall(),
                                  Text(
                                    'Take-out Ordering Available',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 45.0,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: darkOrange,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'View all',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.white, fontSize: 18.0),
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: isTabletDesktop
                      ? () {}
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllRestaurantsScreen(),
                            ),
                          );
                        },
                ),
              ),
              Positioned(
                top: -10.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/food1.jpg',
                    width: 130.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Break-fast',
                subtitle: '',
                image: 'assets/images/breakfast.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Forbreakfast(),
                          ),
                        );
                      },
              ),
              GenieGroceryCardView(
                title: 'Lunch',
                subtitle: '',
                image: 'assets/images/lunch.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Forlunch(),
                          ),
                        );
                      },
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Snacks',
                subtitle: '',
                image: 'assets/images/snacks.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Forsnacks(),
                          ),
                        );
                      },
              ),
              GenieGroceryCardView(
                title: 'Dinner',
                subtitle: '',
                image: 'assets/images/dinner.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Fordinner(),
                          ),
                        );
                      },
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Vegetarian',
                subtitle: 'For Plant Lovers',
                image: 'assets/images/food1.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VegScreen(),
                          ),
                        );
                      },
              ),
              GenieGroceryCardView(
                title: 'Pescatarian',
                subtitle: 'For Fish Lovers',
                image: 'assets/images/food4.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PescatarianScreen(),
                          ),
                        );
                      },
              ),
              GenieGroceryCardView(
                title: 'Non-Veg',
                subtitle: 'For Meat Lovers',
                image: 'assets/images/food6.jpg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NonvegScreen(),
                          ),
                        );
                      },
              ),
            ],
          )
        ],
      ),
    );
  }
}
