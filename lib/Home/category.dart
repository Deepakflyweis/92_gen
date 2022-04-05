import 'package:flutter/material.dart';
import 'package:ninety_two/Home/home_aggrement.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff241C57),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff241C57),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      "assets/images/white.png",
                    ))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 20,
                          width: 88,
                          decoration: BoxDecoration(
                              color: const Color(0xff241C57),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Select Language",
                              style: TextStyle(fontSize: 4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeAgreement()));
                    },
                    child: Container(
                      height: 100,
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/home.png"),
                            flex: 2,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: Text(
                                        "Home Agreement",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  elevation: 8,
                  margin: EdgeInsets.all(10),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/hospital.png"),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "Home Agreement",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          flex: 8,
                        ),
                      ],
                    ),
                  ),
                  elevation: 8,
                  margin: EdgeInsets.all(10),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/school.png"),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "Home Agreement",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          flex: 8,
                        ),
                      ],
                    ),
                  ),
                  elevation: 8,
                  margin: EdgeInsets.all(10),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/wight.png"),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "Home Agreement",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy "),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          flex: 8,
                        ),
                      ],
                    ),
                  ),
                  elevation: 8,
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
