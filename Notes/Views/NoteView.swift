import SwiftUI

struct NoteView: View {
    let title: String
    let contents: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
            Text(contents)
                .font(.body)
        }
    }

}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(
                title: "My Note",
                contents: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        )
    }
}
