import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'step.freezed.dart';

@freezed
abstract class ImageStep with _$ImageStep {

  factory ImageStep(
    {
    required IconData imagePath,
    required String description,
    required String id,
    Map<String, dynamic>? metadata,
  }
  ) = _ImageStep;


  static getStesps() => [
        ImageStep(
          id: "1",
          imagePath: Icons.filter_1,
          description: "This is the first step",
        ),
        ImageStep(
          id: "2",
          imagePath: Icons.filter_2,
          description: "This is the second step",
        ),
        ImageStep(
          id: "3",
          imagePath: Icons.filter_3,
          description: "This is the third step",
        ),
        ImageStep(
          id: "4",
          imagePath: Icons.filter_4,
          description: "This is the fourth step",
        ),
        ImageStep(
          id: "5",
          imagePath: Icons.filter_5,
          description: "This is the fifth step",
        ),
        ImageStep(
          id: "6",
          imagePath: Icons.filter_6,
          description: "This is the sixth step",
        ),
      ];

  // factory ImageStep.fromJson(Map<String, dynamic> json) => _$ImageStepFromJson(json);
}