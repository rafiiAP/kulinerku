import 'package:flutter/material.dart';
import 'package:kulinerku/components/widgets/custom_widget.dart';
import 'package:kulinerku/data/contant/color.dart';
import 'package:kulinerku/data/contant/image.dart';

class ListViewTehe extends StatelessWidget {
  const ListViewTehe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 0, right: 16, left: 16),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            color: ColorConfig.transparent,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(MyImage.tes),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        W.textTitle('ABC Pizzera'),
                        const SizedBox(
                          height: 5,
                        ),
                        W.textBody(
                          'Jalan ABC no. 1, Kepala Gading, Jakarta',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        W.textBody('089680606243'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: ColorConfig.secondary,
                        ),
                        W.textTitle('5.0'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
