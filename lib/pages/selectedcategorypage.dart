import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/models/category.dart';
import 'package:myworkspace/models/subcategory.dart';
import 'package:myworkspace/pages/detailspage.dart';
import 'package:myworkspace/widgets/categoryicon.dart';
import 'package:myworkspace/widgets/mainappbar.dart';

class SelectedCategoryPage extends StatelessWidget{

  Category selectedCategory;

  SelectedCategoryPage({ required this.selectedCategory });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                    color: this.selectedCategory.color,
                    iconName: this.selectedCategory.icon
                ),
                SizedBox(width: 10),
                Text(this.selectedCategory.name,
                  style: TextStyle(
                      color: this.selectedCategory.color,
                      fontSize: 20,
                      fontFamily: 'Metropolis'
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    this.selectedCategory.subCategories!.length,
                        (index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) =>
                                DetailsPage(
                                  subCategory: this.selectedCategory.subCategories![index] as SubCategory,
                                )
                            ));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'assets/images/' + this.selectedCategory.subCategories![index].imgName + '.jpg',
                                  fit: BoxFit.cover, width: 100, height: 100,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(this.selectedCategory.subCategories![index].name,
                                  style: TextStyle(color: this.selectedCategory.color, fontFamily: 'Metropolis'
                                  ))
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
