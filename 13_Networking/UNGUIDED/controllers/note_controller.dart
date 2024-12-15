import 'package:get/get.dart';

class Note {
  String title;
  String description;

  Note({
    required this.title,
    required this.description,
  });
}

class NoteController extends GetxController {
  // Daftar catatan yang dapat diubah (Reactive State)
  var notes = <Note>[].obs;

  // Menambah catatan baru
  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
  }

  // Menghapus catatan berdasarkan indeks
  void deleteNoteAt(int index) {
    notes.removeAt(index);
  }
}
