import 'package:flutter/material.dart';
import 'package:flutter_basics/common/constants.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

const _assetTitle = "Image from Assets";
const _assetImagePath = "assets/images/owl.jpg";
const _networkTitle = "Image from Network";
const _urlImagesPath =
    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg";
const _customSizeTitle = "Image with custom size";
const _customScaleTitle = "Image with custom scale";
const _customFitWidthTitle = "Image with fit width";
const _customFillTitle = "Image with fit to fill";
const _customFitNoneTitle = "Image with fit to none";
const _customColorTitle = "Image with Color";

class SimpleImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: "Simple Images",
        body: ListView(
          children: [
            ImageItem(title: _assetTitle, child: Image.asset(_assetImagePath)),
            ImageItem(
                title: _networkTitle,
                child: Image.network(
                  _urlImagesPath,
                  loadingBuilder: (context, child, progress) {
                    return progress == null
                        ? Center(child: child)
                        : ImageItem.getLinearProgress(progress);
                  },
                )),
            ImageItem(
                title: _customSizeTitle,
                child: Image.asset(
                  _assetImagePath,
                  width: containerSize,
                  height: containerSize,
                )),
            ImageItem(
                title: _customScaleTitle,
                child: Image.asset(
                  _assetImagePath,
                  scale: 2,
                )),
            ImageItem(
                title: _customFitWidthTitle,
                child: Image.asset(
                  _assetImagePath,
                  width: containerSize,
                  height: container100Size,
                  fit: BoxFit.fitWidth,
                )),
            ImageItem(
                title: _customFillTitle,
                child: Image.asset(
                  _assetImagePath,
                  width: containerSize,
                  height: container100Size,
                  fit: BoxFit.fill,
                )),
            ImageItem(
                title: _customFitNoneTitle,
                child: Image.asset(
                  _assetImagePath,
                  width: containerSize,
                  height: container100Size,
                  fit: BoxFit.none,
                )),
            ImageItem(
                title: _customColorTitle,
                child: Image.asset(
                  _assetImagePath,
                  color: Colors.red,
                  colorBlendMode: BlendMode.color,
                )),
          ],
        ));
  }
}

class ImageItem extends StatelessWidget {
  final String title;
  final Widget child;

  const ImageItem({Key key, @required this.title, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          height: spacing16,
        ),
        Center(child: child),
        SizedBox(
          height: spacing8,
        ),
        Divider(
          height: 5,
          color: Colors.black54,
        )
      ],
    );
  }

  static Widget getLinearProgress(ImageChunkEvent progress) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LinearProgressIndicator(
        value: progress.expectedTotalBytes != null
            ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes
            : null,
      ),
    );
  }
}
