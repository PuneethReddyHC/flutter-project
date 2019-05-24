
class Question {
  String order;
  String rise;
  String title;
  String mark;
  String hotNum;
  String imgUrl;

  Question(this.order, this.title, this.hotNum, this.imgUrl, {this.mark, this.rise});
}

List<Question> questionList = [
  new Question("01", "A great new era, made in China in the world of competition", "4427 Million", "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"),
  new Question("02", "How can a girl see the world?", "4157 Million", "https://pic3.zhimg.com/50/v2-56dca99cd8718f9303d43b3015342ba7_hd.jpg", rise: "3", mark: "The so-called world is every aspect of the world."),
  new Question("03", "If Zhu Biao is not dead, if you cut it, will Zhu Xi rebel?", "4009 Million", "https://pic4.zhimg.com/v2-095d2b48970889b108247e6d2dd0fa6b_b.jpg"),
  new Question("04", "How to compile Linux Kernel?", "3110 Million", "https://pic3.zhimg.com/80/v2-1ea1b0cf80c85b88893b2b97a94d7e71_hd.jpg", mark: "Kernel? Ha ha"),
  new Question("05", "How do you view the story of making a mythical story into a movie?", "2119 Million", "https://pic4.zhimg.com/50/v2-267b1dda62f770bd2bd13cb545117b78_hd.jpg",rise: "3",)
];