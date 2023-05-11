import Foundation

@MainActor final class NotesViewModel: ObservableObject {
    @Published private(set) var notes: [Note] = []

    func fetchNotes() async throws {
        let url = URL(string: "https://cdn.cocoacasts.com/2354d51028d53fcc00ceb0c66f25475d5c79bff0/notes.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        notes = try JSONDecoder().decode([Note].self, from: data)
    }
}
