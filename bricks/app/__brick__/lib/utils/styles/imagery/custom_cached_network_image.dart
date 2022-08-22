import 'package:cached_network_image/cached_network_image.dart';
import 'package:wordsmith_app/utils/index.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    this.size = 60,
    required this.imageUri,
    Key? key,
  }) : super(key: key);

  final String? imageUri;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: imageUri == null
          ? Styles.iconography.errorIcon(context)
          : CachedNetworkImage(
              imageUrl: imageUri!,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) {
                Printer.print('CustomCachedNetworkImage', 'error: $error');
                Printer.print('CustomCachedNetworkImage', 'url: $url');
                Printer.print(
                    'CustomCachedNetworkImage', 'imageUri: $imageUri');
                // return const SizedBox();
                return Styles.iconography.errorIcon(context);
              },
            ),
    );
  }
}
