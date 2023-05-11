import Foundation

@MainActor final class NotesViewModel: ObservableObject {
    private let apiService: APIService

    init(apiService: APIService) {
        self.apiService = apiService
    }
    
    @Published private(set) var notes: [Note] = []

    func start() {
        Task {
            do {
                notes = try await apiService.fetchNotes()
            } catch {
                print("unable to fetch notes \(error)")
            }
        }
    }
}
