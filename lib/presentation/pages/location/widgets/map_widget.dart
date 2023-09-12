import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class MapWidget extends HookWidget {
  final LatLng centerPoint;

  const MapWidget({
    Key? key,
    required this.centerPoint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: centerPoint,
        interactiveFlags: InteractiveFlag.none,
        zoom: 14,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'tyl.piotr.weddingApp',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: centerPoint,
              width: kDefaultMapPinSize,
              height: kDefaultMapPinSize,
              builder: (context) => const Icon(
                Icons.pin_drop_rounded,
                color: Colors.red,
                size: kDefaultMapPinSize,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
