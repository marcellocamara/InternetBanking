import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/constants/app.constants.dart';
import '../../../../shared/theme/app.colors.dart';
import '../../../settings/bloc/settings.bloc.dart';
import '../../../settings/bloc/settings.state.dart';

/// Created by marcellocamara@id.uff.br on 05/06/2021.

class SantanderAccountInfo extends StatelessWidget {
  const SantanderAccountInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // This BoxDecoration is necessary due to flutter issue: https://github.com/flutter/flutter/issues/14288
      decoration: BoxDecoration(
        color: AppColors.santander,
        border: Border.all(
          color: AppColors.santander,
          width: 0,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal:
            MediaQuery.of(context).size.width * AppConstants.santander_margin,
        vertical: 20,
      ),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (_, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Olá, ${state.name.isEmpty ? "Marcello" : state.name}',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Ag ${state.accountNumber.isEmpty ? "0000" : state.accountNumber}  Cc 00000000-0',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
