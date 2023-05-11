import SwiftUI

@main
struct NotesApp: App {
    var body: some Scene {
        WindowGroup {
            NotesView(viewModel: .init(apiService: APIClient()))
        }
    }
}
