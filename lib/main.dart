

import 'package:flutter/material.dart';
import 'package:Shopping/pages/choose_location.dart';
import 'package:Shopping/pages/loading.dart';
import 'package:Shopping/pages/home.dart';

void main()=>runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/home':(context)=>Home(),
    '/location':(context)=>ChooseLocation(),

  },
));






