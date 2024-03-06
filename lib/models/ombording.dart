class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent({required this.image, required this.title,required this.description});
}

List<UnbordingContent> contents = [
UnbordingContent(
  title: 'Beauty Trends',
  image: 'assets/images/3eb3ebad73b6589a1ad58582bef5b551.jpg',
  description: "Explore the latest beauty trends from around the world and stay ahead of the curve. Discover makeup from L'Oreal.",
),
UnbordingContent(
  title: 'Exclusive Offers',
  image: 'assets/images/b2da92671baf53680de04d070d403c30.jpg',
  description: "Unlock exclusive offers and deals available only to our loyal customers. Get amazing deals on makeup from L'Oreal.",
),
UnbordingContent(
  title: 'Virtually Try-On',
  image: 'assets/images/20d53a1633ea55250faf569280fd0808.jpg',
  description: "Experience our virtual try-on feature and find the perfect products without leaving your home. Try on makeup from L'Oreal.",
  ),
];