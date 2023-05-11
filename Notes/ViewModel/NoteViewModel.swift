import Foundation

struct NoteViewModel: Identifiable {
    private let note: Note

    var id: Int {
        note.id
    }

    init(note: Note) {
        self.note = note
    }
}


extension NoteViewModel: NotePresentable {
    var title: String {
        note.title
    }

    var contents: String {
        note.contents
    }
}
