import SwiftUI

struct AssignmentView: View {
    let test: Assignment
    var body: some View {
        VStack(alignment: .leading) {
            Text(test.name)
                .font(.headline)
            Spacer()
            HStack {
                Text(test.className)
                Spacer()
                Text(String(test.dueDate))
                    .padding(.trailing, 20)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(test.theme.accentColor)
    }
}
