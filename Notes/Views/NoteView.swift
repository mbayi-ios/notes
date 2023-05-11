import SwiftUI

struct NoteView: View {

    // MARK: - Properties

    let note: Note

    // MARK: - View

    var body: some View {
        VStack(alignment: .leading) {
            Text(note.title)
                .font(.title)
            Text(note.contents)
                .font(.body)
        }
    }

}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(
            note: .init(
                id: 1,
                title: "My Note",
                contents: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            )
        )
    }
}
