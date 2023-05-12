import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/helpers/utils.dart';
import 'package:myworkspace/models/category.dart';
import 'package:myworkspace/pages/selectedcategorypage.dart';
import 'package:myworkspace/widgets/categorycard.dart';
import 'package:myworkspace/widgets/mainappbar.dart';
import 'package:myworkspace/widgets/searchfield.dart';
import 'package:myworkspace/widgets/sidemenubar.dart';

class CategoryListPage extends StatelessWidget {

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideMenuBar(),
      ),
      appBar: MainAppBar(),
      body: Container(
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: SearchField()),
            Padding(
              padding: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Categorías Principales",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      "Ver todas",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Metropolis',
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120, bottom: 10, left: 20),
                  child: Text("Seleccione una categoría:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Metropolis',
                        color: Colors.black
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 60),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return CategoryCard(
                            category: categories[index],
                            onCardClick: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectedCategoryPage(
                                    selectedCategory: this.categories[index],
                                  )
                                )
                              );
                            }
                        );
                      },
                    )
                )],
            ),
            //Positioned(
            //  bottom: 0,
            //  left: 0,
            //  right: 0,
              //child:
            //CategoryBottomBar(),
            //)
          ],
        )
      )
    );
  }
}