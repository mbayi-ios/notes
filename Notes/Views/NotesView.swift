import SwiftUI

struct NotesView: View {

    // MARK: - Properties

    @State private var notes: [Note] = []

    // MARK: - View

    var body: some View {
        NavigationView {
            List(notes) { note in
                NoteView(note: note)
            }
            .navigationTitle("Notes")
        }
        .task {
            Task {
                do {
                    let url = URL(string: "https://cdn.cocoacasts.com/2354d51028d53fcc00ceb0c66f25475d5c79bff0/notes.json")!
                    let (data, _) = try await URLSession.shared.data(from: url)
                    notes = try JSONDecoder().decode([Note].self, from: data)
                } catch {
                    print("Unable to Fetch Notes \(error)")
                }
            }
        }
    }

}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
