import SwiftUI

struct NotesView: View {

    @ObservedObject var viewModel: NotesViewModel

    // MARK: - View

    var body: some View {
        NavigationView {
            List(viewModel.noteViewModels) { presentable in
                NoteView(presentable: presentable)
            }
            .navigationTitle("Notes")
        }
        .onAppear{
            viewModel.start()
        }
    }

}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView(
            viewModel: .init(
                apiService: APIPreviewClient()
            )
        )
    }
}
