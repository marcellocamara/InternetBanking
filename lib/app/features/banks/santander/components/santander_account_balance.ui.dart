import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../../shared/constants/app.constants.dart';
import '../../../../shared/theme/app.assets.dart';
import '../../../../shared/theme/app.colors.dart';
import '../../../settings/bloc/settings.bloc.dart';
import '../../../settings/bloc/settings.state.dart';

/// Created by marcellocamara@id.uff.br on 05/06/2021.

class SantanderAccountBalance extends StatelessWidget {
  const SantanderAccountBalance();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.santander,
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width *
                AppConstants.santander_margin,
          ),
          child: Card(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 15,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.icon_santander_balance,
                        height: 24,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Saldo disponível',
                        style: const TextStyle(
                          fontSize: 19,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AppAssets.icon_santander_arrow_up,
                        height: 24,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: BlocBuilder<SettingsBloc, SettingsState>(
                      builder: (_, state) {
                        final balance = NumberFormat.currency(
                          locale: 'pt_BR',
                          symbol: 'R\$',
                        );
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              balance.format(state.balance),
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Saldo + Limite: ${balance.format(state.balance + 0)}',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Ver extrato',
                    style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.santander,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
