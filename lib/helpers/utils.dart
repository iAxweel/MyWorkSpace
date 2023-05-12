import 'package:flutter/material.dart';
import 'package:myworkspace/models/category.dart';
import 'package:myworkspace/models/categoryworker.dart';
import 'package:myworkspace/models/onboardingcontent.dart';
import 'package:myworkspace/models/subcategory.dart';

import 'iconhelper.dart';

class Utils{

  static List<OnboardingContent> getOnboarding(){
     return [
       OnboardingContent(
             message: "Encuentra lo que necesitas, \ffácil y rápido",
             img: "onboard1"
       ),
       OnboardingContent(
            message: "Muchos servicios, \atención rápida",
            img: "onboard2"
       ),
       OnboardingContent(
            message: "Aplicación sencilla, \y amigable",
            img: "onboard3"
       ),
     ];
  }

  static List<Category> getMockedCategories(){
    return [
      Category(
          color: Colors.lightBlue,
          name: "Construcción",
          imgName: "cat1",
          icon: IconFontHelper.CAT_CONSTRUC,
          subCategories: [
            SubCategory(
                name: "Albañiles",
                icon: IconFontHelper.CAT_CONSTRUC,
                color: Colors.lightBlue,
                imgName: "cat1_1",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Demoliciones",
                icon: IconFontHelper.CAT_CONSTRUC,
                color: Colors.lightBlue,
                imgName: "cat1_2",
                workers: [
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Local Comercial",
                icon: IconFontHelper.CAT_CONSTRUC,
                color: Colors.lightBlue,
                imgName: "cat1_3",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            )
          ]
      ),
      Category(
          color: Colors.lightBlue,
          name: "Remodelación",
          imgName: "cat2",
          icon: IconFontHelper.CAT_REMODEL,
          subCategories: [
            SubCategory(
                name: "Decoración",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_1",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Alberca",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_2",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Cocina",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_3",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Baño",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_4",
                workers: [
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Edificio",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_5",
                workers: [
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Nave industrial",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_6",
                workers: [
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Oficina",
                icon: IconFontHelper.CAT_REMODEL,
                color: Colors.lightBlue,
                imgName: "cat2_7",
                workers: [
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
          ]
      ),
      Category(
          color: Colors.lightBlue,
          name: "Diseño gráfico",
          imgName: "cat3",
          icon: IconFontHelper.CAT_DISENO,
          subCategories: [
            SubCategory(
                name: "Editorial",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_1",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Web y Móvil",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_2",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Fotografía",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_3",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Ilustrativo",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_4",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Corporativo",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_5",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "De empaques",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_6",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "3D",
                icon: IconFontHelper.CAT_DISENO,
                color: Colors.lightBlue,
                imgName: "cat3_7",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  )
                ]
            )
          ]
      ),
      Category(
          color: Colors.lightBlue,
          name: "Programación",
          imgName: "cat4",
          icon: IconFontHelper.CAT_PROG,
          subCategories: [
            SubCategory(
                name: "Móvil",
                icon: IconFontHelper.CAT_PROG,
                color: Colors.lightBlue,
                imgName: "cat4_1",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Web",
                icon: IconFontHelper.CAT_PROG,
                color: Colors.lightBlue,
                imgName: "cat4_2",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Bases de datos",
                icon: IconFontHelper.CAT_PROG,
                color: Colors.lightBlue,
                imgName: "cat4_3",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Back end",
                icon: IconFontHelper.CAT_PROG,
                color: Colors.lightBlue,
                imgName: "cat4_4",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Front end",
                icon: IconFontHelper.CAT_PROG,
                color: Colors.lightBlue,
                imgName: "cat4_5",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Full stack",
                icon: IconFontHelper.CAT_PROG,
                color: Colors.lightBlue,
                imgName: "cat4_6",
                workers: [
                  CategoryWorker(
                      name: "Santiago Nuñez",
                      imgName: "user1",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Luis Javier Rial",
                      imgName: "user2",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "José Oviedo",
                      imgName: "user3",
                      isSelected: false
                  ),
                  CategoryWorker(
                      name: "Fatima Rojas",
                      imgName: "user4",
                      isSelected: false
                  )
                ]
            ),
          ]
      ),
    ];
  }


}