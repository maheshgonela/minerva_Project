import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget implements PreferredSizeWidget {
  final String hintText;
  final double height;
  final Function(String) onSearch;
  final Function onCancel;

  const AppSearchBar({super.key, 
    required this.height,
    required this.hintText,
    required this.onSearch,
    required this.onCancel,
  });

  @override
  _AppSearchBarState createState() => _AppSearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _AppSearchBarState extends State<AppSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool _showCancel = false;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _showCancel = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final darkThemeEnabled = Theme.of(context).brightness == Brightness.dark;
    final searchBarHintColor = darkThemeEnabled ? Colors.white30 : Colors.black54;

    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(64.0)),
    );

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(64.0)), boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(2, 2),
                ),
              ]),
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                onSubmitted: (query) {
                  _focusNode.unfocus();
                  widget.onSearch(query);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: darkThemeEnabled ? Colors.black54.withAlpha(50) : Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  border: border,
                  focusedBorder: border,
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    fontFamily: 'Karla',
                    color: searchBarHintColor,
                  ),
                ),
                style: TextStyle(color: darkThemeEnabled ? Colors.white : Colors.black),
                textInputAction: TextInputAction.search,
              ),
            ),
          ),
          if (_showCancel) const SizedBox(width: 8) else const SizedBox(width: 0, height: 8),
          if (_showCancel)
            InkWell(
              onTap: () {
                widget.onCancel();
                _controller.clear();
                _focusNode.unfocus();
                setState(() {
                  _showCancel = false;
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Cancel',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          else
            const SizedBox(
              width: 0,
              height: 0,
            ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _controller.dispose();
  }
}
