class ModelData {
  late final String? title;
  late final String? subTitle;
  late final String? image;

  ModelData({this.title, this.image, this.subTitle});
}

List serverSideData = [
  {
    "title": "Harsh Shah",
    "subTitle": "Flutter/Web Developer",
    "image": "images/harsh.jpg"
  },
  {
    "title": "Jhanvi Vaishnav",
    "subTitle": "Flutter Developer",
    "image": "images/girl.png"
  },
  {
    "title": "Harsh Kikani",
    "subTitle": "Flutter Developer",
    "image": "images/men.jpg"
  },
  {
    "title": "Farhan Shaikh",
    "subTitle": "Flutter Developer",
    "image": "images/men2.jpg"
  },
  {
    "title": "Aashutosh Dave",
    "subTitle": "Flutter Developer",
    "image": "images/men.jpg"
  },
  {
    "title": "Manjeet Kaur",
    "subTitle": "Flutter Developer",
    "image": "images/girl.png"
  },
  {
    "title": "Yash Gandhi",
    "subTitle": "Flutter Developer",
    "image": "images/men.jpg"
  },
  {
    "title": "Dhruv ",
    "subTitle": "Flutter Developer",
    "image": "images/men2.jpg"
  },
  {
    "title": "Sajid Shaikh",
    "subTitle": "Flutter Developer",
    "image": "images/men.jpg"
  },
  {
    "title": "Ami Thakkar",
    "subTitle": "Flutter Developer",
    "image": "images/girl.png"
  },
];

List<ModelData> arrayofData() {
  return serverSideData
      .map(
        (item) => ModelData(
        title: item["title"],
        subTitle: item["subTitle"],
        image: item["image"]),
  )
      .toList();
}