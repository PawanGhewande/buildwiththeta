import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaDesignBackButton extends StatelessWidget {
  const ThetaDesignBackButton({
    final Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(final BuildContext context) {
    return Semantics(
      button: true,
      child: BounceForLargeWidgets(
        onTap: () => onTap.call(),
        child: Row(
          children: const [
            SizedBox(
              width: 24,
              height: 24,
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                  color: Palette.txtPrimary,
                ),
              ),
            ),
            THeadline3('Back'),
          ],
        ),
      ),
    );
  }
}