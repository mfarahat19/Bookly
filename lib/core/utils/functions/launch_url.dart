import 'package:bookly/core/utils/widgets/snak_bar_widget.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchBookUrl(context, String? uri) async {
  if (uri != null) {
    final Uri url = Uri.parse(uri);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      customSnakBar(context, 'Could not launch url');
    }
  }
}
