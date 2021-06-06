import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Created by marcellocamara@id.uff.br on 05/06/2021.

class SantanderOperationsItem extends StatelessWidget {
  final String text, icon;

  const SantanderOperationsItem({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 110,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 15),
              child: SvgPicture.asset(
                icon,
                height: 26,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
