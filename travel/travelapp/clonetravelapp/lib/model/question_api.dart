class Question {
  int? id;
  String? question;
  List<String>? options;
  int? answer;
  String? feedback;
  Question({this.id, this.answer, this.question, this.options, this.feedback});
}

List<Question> questionsData = [
  Question(
      id: 1,
      question: "Dũng Có Đẹp Trai Không",
      options: [
        'Quá Đẹp Trai',
        'Vô Đối Về Độ Đẹp Trai',
        'Miễn Bàn',
        'Tuyệt Vời Ông Mặt Trời',
        'Tất Cả Đáp Án Trên'
      ],
      answer: 4,
      feedback: "Đồ Con mắt không tròng"),
  Question(
      id: 2,
      question: "Dũng Mập Có giỏi Không",
      options: [
        'Quá Giỏi',
        'Siêu Đẳng',
        'Đỉnh Count',
        'Ông Hoàng Trí Tuệ',
        'Tất Cả Đáp Án Trên'
      ],
      answer: 4,
      feedback: "Mét Lé"),
  Question(
      id: 3,
      question: "Nhân Phẩm Của Dũng Thế Nào",
      options: [
        "Quá Tuyệt",
        "Quá Cao Thượng",
        "Quá Linh",
        "Tất Cả Đáp Án Trên"
      ],
      answer: 3,
      feedback: "Mẹt Ngu"),
];
