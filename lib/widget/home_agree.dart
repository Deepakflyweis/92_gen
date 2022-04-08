import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ninety_two/Home/cart.dart';
import 'package:ninety_two/Home/purchas_agreement.dart';
import 'package:ninety_two/controllers/agrements_controller.dart';

class HomeAgree extends GetView<AgreementsControllers> {
  AgreementsControllers agreementsControllers =
      Get.put(AgreementsControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff241C57),
          title: const Text(
            " Home Agreement ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: agreementsControllers.obx(
            (homeagree) => ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black45, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    homeagree!.categoryId.id,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(homeagree.categoryId.title),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              width: MediaQuery.of(context).size.width * 0.25,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff241C57),
                                                  borderRadius: BorderRadius.circular(10)),
                                              child: TextButton(
                                                style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStateProperty
                                                          .all<Color>(
                                                              Colors.white),
                                                ),
                                                onPressed: () {
                                                  Get.to(PurchaseAgreement());
                                                },
                                                child: const Text(
                                                  "View Document",
                                                  style:
                                                      TextStyle(fontSize: 5),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffFF0000),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: TextButton(
                                                style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStateProperty
                                                          .all<Color>(
                                                              Colors.white),
                                                ),
                                                onPressed: () {
                                                  Get.to(Cart());
                                                },
                                                child: const Text(
                                                  "Add to cart",
                                                  style:
                                                      TextStyle(fontSize: 5),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        homeagree.qar,
                                        style: TextStyle(
                                            color: Color(0xff22A45D)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 8,
                        ),
                      ],
                    ),
                    elevation: 8,
                    margin: EdgeInsets.all(10),
                  );
                }),
            onError: (err) => Center(child: Text(err!)),
            onEmpty: Center(
              child: Text("No Data"),
            )));
  }
}
