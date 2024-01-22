
import 'package:flutter/material.dart';

SnackBar errorSnackBar(String errorMessage) {
  return SnackBar(
    content: Text(
      errorMessage,
      style: const TextStyle(color: Colors.white), // Text style for the message
    ),
    backgroundColor: Colors.red, // Background color for error
    behavior: SnackBarBehavior.floating, // Makes the Snack bar appear above other widgets
    shape: RoundedRectangleBorder(  // Adding rounded corners
      borderRadius: BorderRadius.circular(24), // Circular border radius
      side: BorderSide(color: Colors.red.shade200, width: 2), // Border side for Snackbar
    ),

    duration: const Duration(seconds: 3), // Duration the Snackbar will show
  );
}

