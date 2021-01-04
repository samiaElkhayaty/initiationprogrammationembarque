import 'package:flutter/material.dart';

class BoutonArrondiIcone extends StatelessWidget {
  BoutonArrondiIcone({@required this.icone, @required this.appuye});
  final IconData icone;
  final Function appuye;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icone),
      onPressed: appuye,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
