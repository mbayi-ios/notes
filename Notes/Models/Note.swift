import Foundation

struct Note: Decodable, Identifiable {

    // MARK: - Properties

    let id: Int
    let title: String
    let contents: String
    
}
