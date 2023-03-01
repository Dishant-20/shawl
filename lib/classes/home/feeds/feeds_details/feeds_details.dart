import 'package:flutter/material.dart';
import 'package:shawl/headers/appbar/appbar.dart';

class FeedsDetailsScreen extends StatefulWidget {
  const FeedsDetailsScreen({super.key});

  @override
  State<FeedsDetailsScreen> createState() => _FeedsDetailsScreenState();
}

class _FeedsDetailsScreenState extends State<FeedsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(),
    );
  }
}
