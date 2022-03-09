class CookDataFake {
  String? id;
  String? name;
  String? category;
  String? Intructions;
  String? picture;

  CookDataFake(
      {this.id, this.name, this.category, this.Intructions, this.picture});
}

List<CookDataFake> cookDataFake = [
  CookDataFake(
    id: '01',
    name: 'Mỳ Ý',
    category: 'Ăn Chính',
    Intructions:
        'Bắc nồi lên bếp, cho khoảng 700ml nước vào nấu với lửa lớn. Đến khi nước sôi lên thì cho 1 muỗng cà phê muối và hết 200gr mì ý vào, giảm lại lửa vừa, khi đầu mì chạm nước đã mềm thì dùng tay nhấn hết toàn bộ sợi mì chìm xuống nước',
    picture: 'https://cdn.tgdd.vn/2021/10/CookRecipe/GalleryStep/luoc-mi-5.jpg',
  ),
];
