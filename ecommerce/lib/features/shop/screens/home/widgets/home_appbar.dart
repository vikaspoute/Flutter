import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ETexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColors.grey)),
          Text(ETexts.homeAppbarSubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: AppColors.grey)),
        ],
      ),
      actions: [
        CartCounterIcon(color: AppColors.white, onPressed: () {}),
      ],
    );
  }
}
