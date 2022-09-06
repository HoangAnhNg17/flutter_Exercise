import 'User.dart';


void main() {
  User user = new User(2828, "29/08/2002", "Nguyễn Hoàng Anh", "17/07/2002", "Dương Nội, Hà Đông", "0968100758", "hanhng1707@gmail.com", "https://st.quantrimang.com/photos/image/2020/10/17/giai-nen-file-img.jpg", "12345");

  Post p1 = new Post(1, "29/08/2022", "Đôi bạn học rủ nhau góp tiền ‘khởi nghiệp’ bán ma túy", "content1", 
  ["https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg",
  'https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg',
  "https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg"],
   "stt", user);

  Post p2 = new Post(2, "29/08/2022", "Đôi bạn học rủ nhau góp tiền ‘khởi nghiệp’ bán ma túy", "content1", 
  ["https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg",
  "https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg",
  "https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg"],
   "stt", user);

  Post p3 = new Post(3, "29/08/2022", "Đôi bạn học rủ nhau góp tiền ‘khởi nghiệp’ bán ma túy", "content1", 
  ["https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg",
  "https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg",
  "https://www.slashfilm.com/img/gallery/shows-like-breaking-bad-that-you-can-binge-watch-today/l-intro-1633566435.jpg"],
   "stt", user);


  print(p1.getUrl());
  print(p2.getUrl());
  print(p3.getUrl());    
}
