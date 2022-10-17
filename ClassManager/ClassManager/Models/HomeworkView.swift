import SwiftUI

struct HomeworkView: View {
    @State var assignmentList: [Assignment]
    @State var isModal: Bool = false
    
    var body: some View {
        return VStack {
            List {
            
                ForEach(assignmentList.sorted(by: { (lhs, rhs) -> Bool in
                    lhs.monthDay < rhs.monthDay
                })) { hw in
                    VStack {
                        HomeworkCard(test: hw)
                    }
                    .listRowBackground(hw.theme.mainColor)
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Assignments")
            .background(Color(red: 0.949, green: 0.949, blue: 0.97, opacity: 1.0))
            .toolbar {
                Button("Add assignment") {
                    self.isModal = true
                }.sheet(isPresented: $isModal) {
                    AddForm(assignmentList: $assignmentList, isPresented: $isModal)
                }
                .accessibilityLabel("Add Assignment")
            }
            .padding()
            .background(Color(red: 0.949, green: 0.949, blue: 0.97, opacity: 1.0))
        }
    }
    
    func delete(at offsets: IndexSet) {
        assignmentList.sort { $0.monthDay < $1.monthDay }
        assignmentList.remove(atOffsets: offsets)
    }
    
}

struct HomeworkView_Preview: PreviewProvider {
    static var previews: some View {
        List {
            HomeworkView(assignmentList: Assignment.sampleData)
        }
    }
}

struct ColorView: View {
    @State private var bgColor = Color.red

    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}
