class IdName {
  final String id;
  final String name;
  final String? helperText;

  IdName({
    required this.id,
    required this.name,
    this.helperText,
  });

  factory IdName.empty() {
    return IdName(id: '', name: '');
  }

  @override
  String toString() {
    return '{ $id: $name }';
  }
}
