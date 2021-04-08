import 'package:app_with_flutter2/config/sizeConfig.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getScreenHeight(60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Option 1',
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9999),
                  border: Border.all(color: Colors.white, width: 2)),
            ),
          ],
        ),
      ),
    );
  }
}
