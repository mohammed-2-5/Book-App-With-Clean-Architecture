import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,top: 25),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 18,),
          const Spacer(),
            IconButton(onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearch);
          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,)),
        ],
      ),
    );
  }
}
