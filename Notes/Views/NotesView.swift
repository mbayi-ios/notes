import SwiftUI

struct NotesView: View {

    @ObservedObject var viewModel = NotesViewModel()

    // MARK: - View

    var body: some View {
        NavigationView {
            List(viewModel.notes) { note in
                NoteView(title: note.title, contents: note.contents)
            }
            .navigationTitle("Notes")
        }
        .task {
            do {
                try await viewModel.fetchNotes()
            } catch {
                print("unable to fetch notes \(error)")
            }
        }
    }

}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
