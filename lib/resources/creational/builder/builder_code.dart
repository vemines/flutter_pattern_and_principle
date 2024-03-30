const String builderCode = """class MyClass {
  String header;
  String body;
  String footer;
  MyClass({required this.header, required this.footer, required this.body});
}

class MyBuilder {
  String? header;
  String? body;
  String? footer;

  MyBuilder addHeader(String headerData) {
    header = headerData;
    return this;
  }

  MyBuilder addBody(String bodyData) {
    body = bodyData;
    return this;
  }

  MyBuilder addFooter(String footerData) {
    footer = footerData;
    return this;
  }

  MyClass build() {
    if (body != null) {
      throw Exception("The body is required");
    }
    return MyClass(header: header!, body: body!, footer: footer!);
  }
}

void main(List<String> args) {
  MyClass myClass = MyBuilder()
      .addBody("body")
      .addHeader("header")
      .addFooter("footer")
      .build();
}""";
