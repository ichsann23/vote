import 'package:flutter/material.dart';

class CustomTileVote extends StatelessWidget {
  final String? nama;
  final String? imgUrl;
  final VoidCallback? onTap;
  const CustomTileVote({super.key, this.imgUrl, this.nama, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 113,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        margin: const EdgeInsets.only(bottom: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffD1D1D1),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imgUrl!),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                nama!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
