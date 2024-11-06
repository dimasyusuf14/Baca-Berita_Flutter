import 'package:baca_berita/model/main/item_navbar_model.dart';
import 'package:baca_berita/services/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ItemNavbar extends StatelessWidget {
  const ItemNavbar(
      {Key? key,
      required this.onTap,
      required this.isActive,
      required this.model})
      : super(key: key);
  final VoidCallback onTap;
  final bool isActive;
  final ItemNavbarModel model;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            SvgPicture.asset(
              model.icon,
              width: 25,
              color: isActive ? kColorPrimary : Colors.white,
            ),
            Text(
              model.title.tr,
              style: TextStyle(
                color: isActive ? kColorPrimary : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
