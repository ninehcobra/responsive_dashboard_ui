import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/model/graph.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  const BarGraphModel(
      {required this.label, required this.color, required this.graph});
}
