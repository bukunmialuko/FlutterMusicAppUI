class SongModel {
  final num id;
  final num albumId;
  final String image;
  final String year;
  final String title;
  final String artist;
  final num plays;
  final num download;
  final String genre;
  final num like;

  SongModel(
      {required this.id,
      required this.albumId,
      required this.image,
      required this.year,
      required this.title,
      required this.artist,
      required this.plays,
      required this.download,
      required this.genre,
      required this.like});
}
