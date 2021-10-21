class SlideApiDetails {
  late List<Slides> slides;

  SlideApiDetails({required this.slides});

  SlideApiDetails.fromJson(Map<String, dynamic> json) {
    if (json['slides'] != null) {
      slides = [];
      json['slides'].forEach((v) {
        slides.add(new Slides.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.slides != null) {
      data['slides'] = this.slides.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Slides {
  late  String id;
  late String image;
  late String active;

  Slides({ required this.id,  required this.image,  required this.active});

  Slides.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['active'] = this.active;
    return data;
  }
}
