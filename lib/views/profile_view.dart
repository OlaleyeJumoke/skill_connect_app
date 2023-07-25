import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_connect_app/utils/custom_color.dart';
import 'package:skill_connect_app/widgets/profile_page_widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.whiteColor,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.only(left: 12.0),
          child: SvgPicture.asset(
            "assets/images/arrow_back.svg",
            fit: BoxFit.none,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "View Profile",
          style: TextStyle(
              color: CustomColor.primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    SvgPicture.asset("assets/images/user_background.svg"),
                    Image.asset("assets/images/user_image.png"),
                    Positioned(
                        bottom: 4,
                        right: 20,
                        child: SvgPicture.asset("assets/images/online.svg"))
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Samuel Dominic",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                "Fashion Designer, Male",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 2.0,
              ),
              const ReviewWidget(),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactWidget(
                        image: "assets/images/location.svg",
                        text: "Lagos, Nigeria.",
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      ContactWidget(
                        image: "assets/images/email.svg",
                        text: "samdee@gmail.com",
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const ContactWidget(
                        image: "assets/images/phone.svg",
                        text: "+234 813 970 3721",
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Experience",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: CustomColor.blackColor.withOpacity(0.5)),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          SvgPicture.asset("assets/images/tag.svg"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
             
              const SizedBox(
                height: 16.0,
              ),
              Container(
                height: 39.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    gradient: const LinearGradient(
                        colors: [Color(0xff012466), CustomColor.primaryColor])),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/send_message.svg"),
                      const SizedBox(width: 8.0),
                      const Text(
                        'Send Message',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                  thickness: 1,
                ),
              ),
              const RichTextWidget(
                title: "Join Date",
                value: "19th August, 2021",
              ),
              const SizedBox(
                height: 8.0,
              ),
              const RichTextWidget(
                title: "Completed Jobs",
                value: "300",
              ),
              const SizedBox(
                height: 8.0,
              ),
              const RichTextWidget(
                title: "Last Seen",
                value: "4 Hours Ago",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                  thickness: 1,
                ),
              ),
              CatergoryWidget(
                image: "assets/images/job.svg",
                title: "Summary",
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.0,
                        color: CustomColor.blackColor.withOpacity(0.5)),
                  ),
                ),
              ),
              CatergoryWidget(
                image: "assets/images/work_experience.svg",
                title: "Work Experience",
                child: Container(
                   padding: const EdgeInsets.symmetric(vertical:12.0, horizontal: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color:
                                      CustomColor.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                "S",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: CustomColor.primaryColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "CEO/ Founder",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0,
                                      color: CustomColor.primaryColor),
                                ),
                                const Text(
                                  "Samdom Fashion House",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.0,
                                      color: CustomColor.blackColor),
                                ),
                                Text(
                                  "June 2018 - Present",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11.0,
                                      color: CustomColor.blackColor
                                          .withOpacity(0.5)),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color:
                                      CustomColor.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                "M",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: CustomColor.primaryColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Tailoring Apprentice",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0,
                                      color: CustomColor.primaryColor),
                                ),
                                const Text(
                                  "Maydan Tailoring House",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.0,
                                      color: CustomColor.blackColor),
                                ),
                                Text(
                                  "June 2011 - May 2018",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11.0,
                                      color: CustomColor.blackColor
                                          .withOpacity(0.5)),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ),
              CatergoryWidget(
                image: "assets/images/skill.svg",
                title: "Skills",
                child: Container(
                   padding: const EdgeInsets.symmetric(vertical:12.0, horizontal: 16.0),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          SkillItemWidget(text: "Fitting"),
                          SizedBox(width: 12),
                          SkillItemWidget(text: "Sewing")
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          SkillItemWidget(text: "Measurement Taking"),
                          SizedBox(width: 12),
                          SkillItemWidget(text: "Amendment")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CatergoryWidget(
                image: "assets/images/job.svg",
                title: "Job Portfolio",
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical:12.0, horizontal: 16.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        JobItemWidget(
                          image: 'assets/images/ankara_gown.png',
                          label: "Ankara Gown",
                        ),
                        JobItemWidget(
                          image: 'assets/images/3_piece.png',
                          label: "3- Piece Suit",
                        ),
                        JobItemWidget(
                          image: 'assets/images/jumpsuit.png',
                          label: "Jumpsuit Dress",
                        )
                      ],
                    )),
              ),
              CatergoryWidget(
                image: "assets/images/rating_blue.svg",
                title: "Ratings and Reviews (8)",
                hasSeeMore: true,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/allen_daniels.png"),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Allen Daniels",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15)),
                              ReviewWidget()
                            ],
                          ),
                          const Spacer(),
                          const Text("17 Hours Ago",
                              style: TextStyle(
                                  color: CustomColor.blackColor,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11)),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0,
                            color: CustomColor.blackColor.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Divider(
                        color: CustomColor.primaryColor.withOpacity(0.2),
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border:
                                Border.all(color: CustomColor.primaryColor)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: const Text(
                          "Write a Review",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              color: CustomColor.primaryColor,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

