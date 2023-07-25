import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_connect_app/utils/custom_color.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/green_star.svg"),
        const SizedBox(
          width: 2,
        ),
        SvgPicture.asset("assets/images/green_star.svg"),
        const SizedBox(
          width: 2,
        ),
        SvgPicture.asset("assets/images/green_star.svg"),
        const SizedBox(
          width: 2,
        ),
        SvgPicture.asset("assets/images/green_star.svg"),
        const SizedBox(
          width: 2,
        ),
        SvgPicture.asset("assets/images/green_star.svg"),
        const SizedBox(
          width: 6.0,
        ),
        const Text(
          "5.0",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 11),
        )
      ],
    );
  }
}

class JobItemWidget extends StatelessWidget {
  const JobItemWidget({
    required this.image,
    required this.label,
    super.key,
  });
  final String image, label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 93,
          width: 93,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            label,
            style: const TextStyle(fontSize: 11.0),
          ),
        )
      ],
    );
  }
}

class SkillItemWidget extends StatelessWidget {
  const SkillItemWidget({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: CustomColor.primaryColor)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 11.0),
      ),
    );
  }
}

class CatergoryWidget extends StatelessWidget {
  const CatergoryWidget({
    required this.child,
    required this.image,
    required this.title,
    this.hasSeeMore = false,
    super.key,
  });
  final String title, image;
  final Widget child;
  final bool hasSeeMore;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: CustomColor.primaryColor.withOpacity(0.2),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 12.0, bottom: 8.0, left: 16.0, right: 16.0),
            child: Row( 
              children: [
                SvgPicture.asset(image),
                const SizedBox(width: 16.0),
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 15)),
                       const Spacer(),
                        hasSeeMore ? const Text("See More", style: TextStyle(fontSize: 11,color: CustomColor.blackColor,
                          decoration: TextDecoration.underline),):const SizedBox()
              ],
            ),
          ),
          Divider(
            color: CustomColor.primaryColor.withOpacity(0.2),
            thickness: 1,
          ),
          Container(
            child: child,
          ),
          const SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}

// Widget or the
class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    required this.title,
    required this.value,
    super.key,
  });
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: RichText(
          text: TextSpan(
              text: "$title: ",
              style: const TextStyle(
                  fontFamily: "GalanoGrotesque",
                  color: CustomColor.primaryColor,
                  fontWeight: FontWeight.w700),
              children: [
            TextSpan(
                text: value,
                style: const TextStyle(
                    color: CustomColor.blackColor,
                    fontWeight: FontWeight.normal))
          ])),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    required this.image,
    required this.text,
    super.key,
  });
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.black.withOpacity(0.5)),
        ),
      ],
    );
  }
}
