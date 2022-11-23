import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class _Utils {
  
  Future<void> openUrl(String url, context) async {
    final parsedUrl = Uri.parse(url);
    if (await canLaunchUrl(parsedUrl)) {
      await launchUrl(parsedUrl);
    } else {
      if (context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('ERROR LAUNCHING URL: $url')
        )
      );
    }
  }

}

final utils = _Utils();