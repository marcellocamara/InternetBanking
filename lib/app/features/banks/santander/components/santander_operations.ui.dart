import 'package:flutter/material.dart';

import '../../../../shared/constants/app.constants.dart';
import '../../../../shared/theme/app.assets.dart';
import 'santander_operations_item.ui.dart';
import '../models/santander_operation_item.model.dart';

/// Created by marcellocamara@id.uff.br on 05/06/2021.

class SantanderOperations extends StatelessWidget {
  /// Operations Items
  final List<SantanderOperationItemModel> operationsListItems = [
    SantanderOperationItemModel(
      name: 'Pix',
      iconPath: AppAssets.icon_santander_pix,
    ),
    SantanderOperationItemModel(
      name: 'Pagar',
      iconPath: AppAssets.icon_santander_barcode,
    ),
    SantanderOperationItemModel(
      name: 'Transferir',
      iconPath: AppAssets.icon_santander_send,
    ),
    SantanderOperationItemModel(
      name: 'Receber',
      iconPath: AppAssets.icon_santander_receive,
    ),
    SantanderOperationItemModel(
      name: 'Comprovantes',
      iconPath: AppAssets.icon_santander_proof,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 105,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 28),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: operationsListItems.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? width * AppConstants.santander_margin : 0,
              right: index == operationsListItems.length - 1
                  ? width * AppConstants.santander_margin
                  : 0,
            ),
            child: SantanderOperationsItem(
              text: operationsListItems[index].name,
              icon: operationsListItems[index].iconPath,
            ),
          );
        },
      ),
    );
  }
}
