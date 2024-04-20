import 'package:flutter/material.dart';
import 'package:home_services/core/Theming/colors.dart';
import 'package:home_services/view/Home/ui/models/repo/cat_repo.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  _CategoryBodyState createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width / 0.4,
            height: MediaQuery.of(context).size.height / 1.1,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'All Categories',
                        style: TextStyle(
                          color: ColorManager.dark_blue,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          IconData(0xe59c, fontFamily: 'MaterialIcons',
                          )
                        )
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: catList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Card(
                          elevation: 0,
                          color: const Color.fromARGB(0, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                catList[index].image,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            title: Text(catList[index].text),
                            subtitle: Text('20 Services'),
                            onTap: () {},
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}