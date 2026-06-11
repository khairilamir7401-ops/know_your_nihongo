// Automatic FlutterFlow imports
// ignore_for_file: unused_import, unnecessary_new, use_super_parameters
// ignore_for_file: prefer_const_constructors

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:painter/painter.dart';

class CustomPainter extends StatefulWidget {
  const CustomPainter({
    Key? key,
    this.width,
    this.height,
    this.thickness,
    this.backgroundColor,
    this.drawColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? thickness;
  final Color? backgroundColor;
  final Color? drawColor;

  void main() => runApp(new CustomPainter());

  @override
  _CustomPainterState createState() => _CustomPainterState();
}

class _CustomPainterState extends State<CustomPainter> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Painter Example',
      home: new ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => new _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  bool _finished = false;
  PainterController _controller = _newController();

  @override
  void initState() {
    super.initState();
  }

  static PainterController _newController() {
    PainterController controller = new PainterController();
    controller.thickness = 5.0;
    controller.backgroundColor = Colors.white;
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> actions;
    if (_finished) {
      actions = <Widget>[
        new IconButton(
          icon: new Icon(Icons.content_copy),
          tooltip: 'New Painting',
          onPressed: () => setState(() {
            _finished = false;
            _controller = _newController();
          }),
        ),
      ];
    } else {
      actions = <Widget>[
        new IconButton(
            icon: new Icon(
              Icons.undo,
            ),
            tooltip: 'Undo',
            onPressed: () {
              if (_controller.isEmpty) {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) =>
                        new Text('Nothing to undo'));
              } else {
                _controller.undo();
              }
            }),
        new IconButton(
            icon: new Icon(Icons.delete),
            tooltip: 'Clear',
            onPressed: _controller.clear),
        // Exclude the export image button
      ];
    }
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: const Text('Draw'),
        actions: actions,
        bottom: new PreferredSize(
          child: new DrawBar(_controller),
          preferredSize: new Size(MediaQuery.of(context).size.width, 8.0),
        ),
      ),
      body: new Center(
        child: new AspectRatio(
          aspectRatio: 1.0,
          child: new Painter(_controller),
        ),
      ),
    );
  }
}

class DrawBar extends StatelessWidget {
  final PainterController _controller;

  DrawBar(this._controller);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(); // Empty Container
            },
          ),
        ),
      ],
    );
  }
}
