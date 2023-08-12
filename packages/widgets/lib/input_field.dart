part of widgets;

// ignore: must_be_immutable
class InputField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;
  final TextInputType inputType;
  final double? height;
  final int minLines;
  final int maxLines;
  final int maxLength;
  final bool autoFocus;
  final bool isReadOnly;
  final InputDecoration inputDecoration;
  final BoxDecoration? boxDecoration;
  BoxDecoration? _boxDecoration;

  InputField({
    required this.title,
    this.controller,
    this.height,
    required this.onChanged,
    this.onSubmitted,
    this.inputType = TextInputType.text,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength = 255,
    this.autoFocus = false,
    this.isReadOnly = false,
    this.inputDecoration = const InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.all(16.0),
      counterText: null,
      counter: const SizedBox(width: 0, height: 0),
    ),
    this.boxDecoration,
  }) {
    if (boxDecoration == null) {
      _boxDecoration = BoxDecoration(border: Border.all(color: Colors.grey));
    } else {
      _boxDecoration = boxDecoration!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Container(
          decoration: _boxDecoration,
          height: this.height,
          child: TextField(
            controller: controller,
            autofocus: autoFocus,
            decoration: this.inputDecoration,
            onChanged: this.onChanged,
            onSubmitted: onSubmitted,
            keyboardType: inputType,
            minLines: this.minLines,
            maxLines: this.maxLines,
            maxLength: this.maxLength,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            readOnly: this.isReadOnly,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
