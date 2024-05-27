import 'package:flutter/material.dart';

class ExperienceModel{
  String jobTitle;
  String companyName;
  String fromDate;
  String toDate;
  String location;
  List<String>rolesAndResponsibilities;
  String companyLogo;



ExperienceModel({
  required this.jobTitle,
  required this.companyName,
  required this.fromDate,
  required this.toDate,
  required this.location,
  required this.rolesAndResponsibilities,
  required this.companyLogo
});

}

