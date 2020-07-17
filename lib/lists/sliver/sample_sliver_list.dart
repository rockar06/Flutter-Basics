import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';

class SampleSliverList extends StatelessWidget {
  final scrollController = ScrollController();

  SliverPersistentHeader _makeHeader(String headerText) {
    final dataKey = GlobalKey();
    return SliverPersistentHeader(
      key: dataKey,
      pinned: true,
      floating: false,
      delegate: _SliverAppBarDelegate(
        minHeight: 56.0,
        maxHeight: 56.0,
        child: Material(
          child: Ink(
            color: Colors.deepPurple,
            child: InkWell(
              onTap: () {
                _goToSpecifiedPositionByKey(dataKey);
              },
              child: Center(
                child: Text(
                  headerText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _goToSpecifiedPositionByKey(GlobalKey globalKey) {
    if (globalKey == null) return;
    Scrollable.ensureVisible(
      globalKey.currentContext,
      duration: Duration(milliseconds: 1000),
      curve: Curves.linearToEaseOut,
    );
  }

  Widget _getContainer(Color containerColor) {
    return Container(
      color: containerColor,
      height: 150.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: "Sliver List",
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            _makeHeader("SliverList Items A"),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _getContainer(Colors.red),
                  _getContainer(Colors.blue),
                  _getContainer(Colors.green),
                  _getContainer(Colors.cyan),
                  _getContainer(Colors.purple),
                  _getContainer(Colors.orange),
                  _getContainer(Colors.yellow),
                  _getContainer(Colors.grey),
                  _getContainer(Colors.pink),
                  _getContainer(Colors.brown),
                  _getContainer(Colors.amber),
                  _getContainer(Colors.red),
                ],
              ),
            ),
            _makeHeader("SliverList Items B"),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _getContainer(Colors.red),
                  _getContainer(Colors.blue),
                  _getContainer(Colors.green),
                  _getContainer(Colors.cyan),
                  _getContainer(Colors.purple),
                  _getContainer(Colors.orange),
                  _getContainer(Colors.yellow),
                  _getContainer(Colors.grey),
                  _getContainer(Colors.pink),
                  _getContainer(Colors.brown),
                  _getContainer(Colors.amber),
                  _getContainer(Colors.red),
                ],
              ),
            ),
            _makeHeader("SliverList Items C"),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _getContainer(Colors.red),
                  _getContainer(Colors.blue),
                  _getContainer(Colors.green),
                  _getContainer(Colors.cyan),
                  _getContainer(Colors.purple),
                  _getContainer(Colors.orange),
                  _getContainer(Colors.yellow),
                  _getContainer(Colors.grey),
                  _getContainer(Colors.pink),
                  _getContainer(Colors.brown),
                  _getContainer(Colors.amber),
                  _getContainer(Colors.red),
                ],
              ),
            ),
          ],
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
