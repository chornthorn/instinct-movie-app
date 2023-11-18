import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUrlLauncherPkg extends StatefulWidget {
  const AboutUrlLauncherPkg({super.key});

  @override
  State<AboutUrlLauncherPkg> createState() => _AboutUrlLauncherPkgState();
}

class _AboutUrlLauncherPkgState extends State<AboutUrlLauncherPkg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About url_launcher Package'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About url_launcher Package',
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            ElevatedButton(
              child: Text('Open Web Page'),
              onPressed: () async {
                _openUrl("https://flutter.dev");
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: Text('Open External App'),
              onPressed: () async {
                // _openUrl("sms:855789374985");
                // _openUrl("tel:855789374985");
                _openUrl(
                  "mailto:smith@example.org?subject=News&body=New%20plugin",
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: Text('ABA - Payment'),
              onPressed: () async {
                _makePayment(price: "10");
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    final canOpen = await canLaunchUrl(uri);

    if (canOpen) {
      await launchUrl(uri);
    } else {
      final snackBar = SnackBar(
        content: Text('Could not launch $uri'),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _makePayment({required String price}) async {
    final Uri uri = Uri(
      scheme: "instinct",
      host: "movie.com.kh",
      queryParameters: {
        "amount": price,
        "currency": "USD",
        "merchant_id": "123456789",
      },
    );
    final canOpen = await canLaunchUrl(uri);

    if (canOpen) {
      await launchUrl(uri);
    } else {
      // render qr code
      final snackBar = SnackBar(
        content: Text('Your device does not support this payment method'),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
