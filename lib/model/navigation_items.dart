import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationItems {
   final List icons;
   final List navigatorNames;

  static final NavigationItems instace = NavigationItems.getdata();

  factory NavigationItems() {
    return instace;
  }

  NavigationItems.getdata() :
    icons = <IconData>[
      Icons.card_membership,
      Icons.sticky_note_2,
      Icons.settings,
      Icons.support,
    ]

   ,
    navigatorNames = <String>[
      'dashboard',
      'sticky notes',
      'setting',
      'support',
      'home work'
    ];
  
   String getItemName(int index){
      return navigatorNames[index];
    }

    IconData getItemIcon(int index){
      return icons[index];
    }

    int itemLenght(){
      return icons.length;
    }
}