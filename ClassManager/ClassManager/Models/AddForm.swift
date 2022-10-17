
import Foundation
import SwiftUI

struct AddForm: View {
    @Binding var assignmentList: [Assignment]
    @Binding var isPresented: Bool
    @State private var _className: String = ""
    @State private var _assignmentName: String = ""
    @State private var _dueMonth: String = ""
    @State private var _dueDay: String = ""
    @State private var _dueYear: String = ""
    @State private var allowNew: Bool = false

    var body: some View {
        VStack {
            Text("**Assignment Form**")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.system(size: 36))
            
            TextField(
                "Class name",
                text: $_className
            )
            .disableAutocorrection(true)
            .padding(.top, 20)
            
            TextField(
                "Assignment title",
                text: $_assignmentName
            )
            .disableAutocorrection(true)
            .padding(.top, 20)
            
            HStack() {
                Text("Due date: ")
                TextField(
                    "MM",
                    text: $_dueMonth
                )
                .disableAutocorrection(true)
                Text("/")
                TextField(
                    "DD",
                    text: $_dueDay
                )
                .disableAutocorrection(true)
                Text("/")
                TextField(
                    "YYYY",
                    text: $_dueYear
                )
                .disableAutocorrection(true)
            }
            .padding(.top, 20)
            
            Button(action: {createNewAssignment(); isPresented = false} ) {
                Text("Create new assignment");
            }
            .buttonStyle(.bordered)
            .padding()
            
        }
        .padding()
        .textFieldStyle(.roundedBorder)
    }
    
    func createNewAssignment() {
        if (!(_assignmentName.isEmpty || _className.isEmpty || _dueYear.isEmpty || _dueMonth.isEmpty || _dueDay.isEmpty)) {
            assignmentList.append(Assignment(name: _assignmentName, dueYear: (_dueYear as NSString).integerValue, dueMonth: (_dueMonth as NSString).integerValue, dueDay: (_dueDay as NSString).integerValue, priority: 0, theme: .bubblegum, className: _className))
        }
        
    }
}
