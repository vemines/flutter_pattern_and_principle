const String templateMethodCode = """abstract class TemplateMethod {
  void templateMethod() {
    method();
  }

  void method();
}

class Image extends TemplateMethod {
  Image(this.url);
  final String url;

  @override
  void method() {
    // implement content
    print("Image: \$url");
  }
}

class Video extends TemplateMethod {
  Video(this.url);
  final String url;

  @override
  void method() {
    print("Video: \$url");
  }
}

void main(List<String> args) {
  final Image image = Image('https://example.com/sunset.jpg');
  final Video video = Video('https://example.com/cat_video.mp4');
  image.templateMethod();
  video.templateMethod();
}""";
