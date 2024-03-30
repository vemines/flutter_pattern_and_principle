const String prototypeCode = """class PrototypeClass {
  String header;
  String body;

  PrototypeClass(this.header, this.body);

  PrototypeClass clone() => PrototypeClass(header, body);
  PrototypeClass copyWith({String? headerData, String? bodyData}) =>
      PrototypeClass(headerData ?? header, bodyData ?? body);
}

void main(List<String> args) {
  PrototypeClass prototype = PrototypeClass("header", "body");
  PrototypeClass clone = prototype.clone();
  PrototypeClass copyWith =
      prototype.copyWith(headerData: "header2", bodyData: "body2");
}""";
