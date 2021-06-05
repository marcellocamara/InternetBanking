import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/theme/app.assets.dart';

/// Created by marcellocamara@id.uff.br on 05/06/2021.

class SantanderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SantanderAppBar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(
            AppAssets.icon_santander_menu,
            color: Colors.white,
            height: 24,
          ),
          onPressed: null,
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              AppAssets.icon_santander_bell,
              height: 24,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
        title: SvgPicture.asset(
          AppAssets.icon_santander,
          height: 24,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
