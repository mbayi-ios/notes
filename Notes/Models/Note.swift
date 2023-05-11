import Foundation

struct Note: Decodable, Identifiable {
    let id: Int
    let title: String
    let contents: String
    
}
