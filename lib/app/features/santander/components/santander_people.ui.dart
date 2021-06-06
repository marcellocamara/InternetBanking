import 'package:flutter/material.dart';

import '../../../shared/constants/app.constants.dart';
import '../../../shared/theme/app.assets.dart';

/// Created by marcellocamara@id.uff.br on 06/06/2021.

class SantanderPeople extends StatelessWidget {
  const SantanderPeople();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            MediaQuery.of(context).size.width * AppConstants.santander_margin,
      ),
      child: Card(
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(
                AppAssets.image_santander_people,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
