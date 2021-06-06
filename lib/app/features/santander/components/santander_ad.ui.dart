import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/constants/app.constants.dart';
import '../../../shared/theme/app.assets.dart';
import '../../../shared/theme/app.colors.dart';

/// Created by marcellocamara@id.uff.br on 06/06/2021.

class SantanderAd extends StatelessWidget {
  const SantanderAd();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            MediaQuery.of(context).size.width * AppConstants.santander_margin,
        vertical: 30,
      ),
      child: Card(
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.santander,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.icon_santander_percent,
                    width: 26,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Conheça o Shopping Santander:\nas melhores ofertas e benefícios.\nClique aqui!',
                  style: TextStyle(
                    height: 1.7,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
