import 'package:flutter/material.dart';

class Singerlist {
  final String singer;
  final String imageSingers;
  final int singerId;
  Singerlist(
      {required this.singerId,
      required this.imageSingers,
      required this.singer});
}

List<Singerlist> singersList = [
  Singerlist(
    singerId: 1,
    imageSingers: "assets/photo/ns.jpg",
    singer: 'LM Nguyễn Sang',
  ),
  Singerlist(
    singerId: 2,
    imageSingers: "assets/photo/pdt.jpg",
    singer: 'Phan Đình Tùng',
  ),
  Singerlist(
    singerId: 3,
    imageSingers: "assets/photo/hongan.jpg",
    singer: 'Hồng Ân',
  ),
];

class Song {
  final String songName;
  final String singer;
  final String assetSong;
  final int songId;
  final String imgAsset;

  Song(
      {required this.imgAsset,
      required this.songName,
      required this.singer,
      required this.assetSong,
      required this.songId});
}

List<Song> song = [
  Song(
      songName: 'Hãy Thắp Sáng Lên',
      singer: 'Phan Đình Tùng',
      assetSong: 'assets/music/HayThapSangLen-PhanDinhTung.mp3',
      songId: 1,
      imgAsset: 'assets/photo/pdt.jpg'),
  Song(
      songName: 'Khúc Ca Ta Ơn',
      singer: 'Phan Đình Tùng',
      assetSong: 'assets/music/KhucCaTaOn-PhanDinhTung.mp3',
      songId: 2,
      imgAsset: 'assets/photo/pdt.jpg'),
  Song(
      songName: 'Lạy Thánh Tâm Chúa',
      singer: 'LM Nguyễn Sang',
      assetSong: 'assets/music/laythanhtamchua-nguyensang.mp3',
      songId: 3,
      imgAsset: 'assets/photo/ns.jpg'),
  Song(
      songName: 'Con Đường Chúa Đã Đi Qua',
      singer: 'LM Nguyễn Sang',
      assetSong: 'assets/music/lm-nguyensang-conduongchuadadiqua.mp3',
      songId: 4,
      imgAsset: 'assets/photo/ns.jpg'),
  Song(
      songName: 'Người Chết Vì Yêu',
      singer: 'LM Nguyễn Sang',
      assetSong: 'assets/music/NguoiChetViYeu-Lm_-JBNguyenSang.mp3',
      songId: 5,
      imgAsset: 'assets/photo/ns.jpg'),
  Song(
      songName: 'Nguyện Cầu Thánh Gia',
      singer: 'LM Nguyễn Sang',
      assetSong: 'assets/music/nguyencauthanhgia-lmnguyensang.mp3',
      songId: 6,
      imgAsset: 'assets/photo/ns.jpg'),
  Song(
      songName: 'Ơn Gọi Của Ngôi Sao',
      singer: 'Phan Đình Tùng',
      assetSong: 'assets/music/OnGoiCuaNgoiSao-PhanDinhTung.mp3',
      songId: 7,
      imgAsset: 'assets/photo/pdt.jpg'),
  Song(
      songName: 'Về Với Ngài',
      singer: 'Phan Đình Tùng',
      assetSong: 'assets/music/VeVoiNgai-PhanDinhTung.mp3',
      songId: 8,
      imgAsset: 'assets/photo/pdt.jpg'),
];
