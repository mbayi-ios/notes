import Foundation

@MainActor final class NotesViewModel: ObservableObject {
    private let apiService: APIService

    @Published private(set) var noteViewModels: [NoteViewModel] = []

    init(apiService: APIService) {
        self.apiService = apiService
    }

    func start() {
        Task {
            do {
                noteViewModels = try await apiService.fetchNotes()
                    .map(NoteViewModel.init)
            } catch {
                print("unable to fetch notes \(error)")
            }
        }
    }
}
