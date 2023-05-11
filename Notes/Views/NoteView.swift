import SwiftUI

struct NoteView: View {
    let presentable: NotePresentable

    var body: some View {
        VStack(alignment: .leading) {
            Text(presentable.title)
                .font(.title)
            Text(presentable.contents)
                .font(.body)
        }
    }

}

struct NoteView_Previews: PreviewProvider {
    private struct PreviewPresentable: NotePresentable {
        var id: Int {
            1
        }
        var title: String {
            "My Note"
        }

        var contents: String {
            "Lorem ipsum dolor menths"
        }
    }
    static var previews: some View {
        NoteView(presentable: PreviewPresentable())
    }
}
