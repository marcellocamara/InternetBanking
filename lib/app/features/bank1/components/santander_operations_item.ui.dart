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
        width: 130,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SvgPicture.asset(
                icon,
                height: 28,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
