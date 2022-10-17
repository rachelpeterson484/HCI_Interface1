
import SwiftUI

class AssignmentsList: ObservableObject {
    @Published static var sampleData: [Assignment] =
    [
        Assignment(name: "Project 1", dueYear: 2022, dueMonth: 09, dueDay: 16, priority: 0, theme: .bubblegum, className: "Human Computer Interaction"),
        Assignment(name: "Project 2", dueYear: 2022, dueMonth: 10, dueDay: 11, priority: 0, theme: .poppy, className: "Human Computer Interaction"),
        Assignment(name: "Project 3", dueYear: 2022, dueMonth: 11, dueDay: 14, priority: 0, theme: .sky, className: "Human Computer Interaction"),
        Assignment(name: "Midterm", dueYear: 2022, dueMonth: 10, dueDay: 28, priority: 1, theme: .yellow, className: "Human Computer Interaction"),
        Assignment(name: "Final", dueYear: 2022, dueMonth: 12, dueDay: 05, priority: 1, theme: .orange, className: "Human Computer Interaction")
    ]
}
