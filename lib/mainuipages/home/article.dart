
class Article {
  String headUrl;
  String user;
  String action;
  String time;
  String title;
  String mark;
  String imgUrl;
  int agreeNum;
  int commentNum;

  Article(this.headUrl, this.user, this.action, this.time, this.title, this.mark, this.agreeNum, this.commentNum, {this.imgUrl});
}

List<Article> articleList = [
  new Article(
      "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
      "learner",
      "Endorsed the answer",
      "2 hours ago",
      "In the three-body, why did Luo Ji give control to Cheng Xin, did he not speculate on the consequences?",
      "Because Luo Ji adheres to human ethics. This ethic is probably called democracy. Da Liu is actually a typical elitist, in his writing...",
      32, 10,
      imgUrl: "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"
  ),
  new Article(
    "https://pic4.zhimg.com/50/v2-9a3cb5d5ee4339b8cf4470ece18d404f_s.jpg",
    "learner",
    "Answered the question",
    "5 hours ago",
    "My mobile phone system is Android. Inadvertently found that his screen was monitored, how can I get rid of the situation being monitored?",
    "Check if you have installed any software on your phone and delete non-system software that you don't know. I will not go to the little brother in the mobile phone shop, why are so many people...",
    38, 13,
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "Answered the question",
      "7 hours ago",
      "How to evaluate the 2018 Anhui Provincial Programming Competition?",
      "I took the political task and pressure to play the game. Fortunately, I was finally raised by the high school student. The list can see another answer. Probably the experience is before...",
      38, 13,
      imgUrl: "https://pic4.zhimg.com/v2-a7493d69f0d8f849c6345f8f693454f3_200x112.jpg"
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "Answered the question",
      "7 hours ago",
      "What is the ultimate civilization? Will it really kill other low-level creatures like the Dark Forest Rules?",
      "The favorite characters are Zhang Beihai and Wade but the favorite plot is this one. The people on the earth promise to give them flowers and honors...",
      38, 13,
      imgUrl: "https://pic3.zhimg.com/v2-b67be50be51e2e6d6112a64528683b09_b.jpg"
  )
];