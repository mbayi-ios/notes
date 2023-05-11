import Foundation
protocol APIService {
    func fetchNotes() async throws -> [Note]
}
