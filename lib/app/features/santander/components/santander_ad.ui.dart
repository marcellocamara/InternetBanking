import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/theme/app.assets.dart';
import '../../../shared/theme/app.colors.dart';

/// Created by marcellocamara@id.uff.br on 06/06/2021.

class SantanderAd extends StatelessWidget {
  const SantanderAd();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: 30,
      ),
      child: Card(
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.santander,
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.icon_santander_percent,
                    width: 32,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Conheça o Shopping Santander:\nas melhores ofertas e benefícios.\nClique aqui!',
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
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
