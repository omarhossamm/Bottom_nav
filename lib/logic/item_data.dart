import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itemdata {
   final List iconList;
   final List itemnamed;

  static final Itemdata instace = Itemdata.getdata();

  factory Itemdata() {
    return instace;
  }

  Itemdata.getdata() :
    iconList = <IconData>[
      Icons.card_membership,
      Icons.sticky_note_2,
      Icons.settings,
      Icons.support,
    ]

   ,
    itemnamed = <String>[
      'dashboard',
      'sticky notes',
      'setting',
      'support',
      'home work'
    ];
  

}