import 'dart:core';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(1, 10))
];

List<Map> categories = [
  {
    'name': 'Electricity',
    'iconPath': 'images/electricity.png',
    'color': Colors.red
  },
  {
    'name': 'LandScape',
    'iconPath': 'images/carpenter.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'Disturbance',
    'iconPath': 'images/disturbance.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'Security',
    'iconPath': 'images/security.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'HouseKeeping',
    'iconPath': 'images/housekeeping.png',
    'color': Colors.grey[700]
  }
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.home, 'title': 'Managment'},
  {'icon': Icons.report, 'title': 'Submit Complain'},
  {'icon': FontAwesomeIcons.idBadge, 'title': 'ID Badge'},
  {'icon': Icons.person_add, 'title': 'Manage Gate Passes'},
  {'icon': FontAwesomeIcons.car, 'title': 'Request Gate Access'},
  {'icon': FontAwesomeIcons.infoCircle, 'title': 'Community Info'},
  {'icon': Icons.contact_phone, 'title': 'Contact Us'},
];

List<Map> complains = [
  {
    'name': 'Electricity',
    'iconPath': 'images/electrictyCom.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'LandScape',
    'iconPath': 'images/landscapeCom.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'Disturbance',
    'iconPath': 'images/SpeakerCom.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'Security',
    'iconPath': 'images/securityCom.png',
    'color': Colors.grey[700]
  },
  {
    'name': 'HouseKeeping',
    'iconPath': 'images/housekeepingCom.png',
    'color': Colors.grey[700]
  }
];
