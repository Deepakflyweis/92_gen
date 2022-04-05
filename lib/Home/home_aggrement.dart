import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/widget/home_agree.dart';

class HomeAgreement extends StatefulWidget {
  const HomeAgreement({Key? key}) : super(key: key);

  @override
  State<HomeAgreement> createState() => _HomeAgreementState();
}

class _HomeAgreementState extends State<HomeAgreement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        title: const Text(
          "Home Agreement",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                  HomeAgree(
                    heading: "Real Estate Assignment Contract",
                  ),
                  HomeAgree(
                    heading: "Lease Agreement",
                  ),
                  HomeAgree(
                    heading: "Power of Attorney",
                  ),
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                  HomeAgree(
                    heading: "Purchase Agreement",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
