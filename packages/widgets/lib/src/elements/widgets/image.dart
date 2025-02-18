// Flutter imports:
// ignore_for_file: public_member_api_docs

// Dart imports:

// Package imports:
// Flutter imports:
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';

class OpenWImage extends StatelessWidget {
  /// Returns a Image
  const OpenWImage({
    super.key,
    required this.nodeState,
    required this.image,
    required this.width,
    required this.height,
    required this.boxFit,
    required this.borderRadius,
    required this.shadows,
  });

  final WidgetState nodeState;
  final FSize width;
  final FSize height;
  final FTextTypeInput image;
  final FBoxFit boxFit;
  final FBorderRadius borderRadius;
  final FShadow shadows;

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    final img = image.getImage(
      state: state,
      context: context,
      loop: nodeState.loop,
    ) as String;
    var result = img.isNotEmpty
        ? img
        : 'https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/cover-min.png';
    if (state.isPreloaded) {
      result =
          'assets/theta_assets/${base64.encode(utf8.encode(nodeState.node.id))}.${result.split('.').last}';
    }
    final data =
        const NodeOverrideExecuter().executeImage(context, nodeState, result);
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: borderRadius.get(
          context,
          forPlay: state.forPlay,
          deviceType: state.deviceType,
        ),
        boxShadow: [
          shadows.get(
            context,
            state.colorStyles,
            state.theme,
          ),
        ],
      ),
      width: width.get(
        state: state,
        context: context,
        isWidth: true,
      ),
      height: height.get(
        state: state,
        context: context,
        isWidth: false,
      ),
      child: state.isPreloaded
          ? Image.asset(
              data,
              fit: boxFit.value,
            )
          : Image.network(
              data,
              fit: boxFit.value,
            ),
    );
  }
}
