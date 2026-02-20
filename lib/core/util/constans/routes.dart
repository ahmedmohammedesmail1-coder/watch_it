import 'package:flutter/material.dart';
import 'package:watch_it/features/home/presentation/screen/widgets/videos_screen.dart';

class Routes 
{
  static const String videosScreen='/VideosScreen';
  static const String loginScreen='/LoginScreen';
 static final Map<String,WidgetBuilder>routesApp=
  {
    videosScreen:(context)=> VideosScreen(),
  };
}