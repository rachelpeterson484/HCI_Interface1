import Foundation
struct Assignment: Identifiable {
    let id: UUID
    var name: String
    var dueYear: Int
    var dueMonth: Int
    var dueDay: Int
    var priority: Int
    var theme: Theme
    var className: String
    var monthDay: Int
    
    init(id: UUID = UUID(), name: String, dueYear: Int, dueMonth: Int, dueDay: Int, priority: Int, theme: Theme, className: String) {
        self.id = id
        self.name = name
        self.dueYear = dueYear
        self.dueMonth = dueMonth
        self.dueDay = dueDay
        self.priority = priority
        self.theme = theme
        self.className = className
        self.monthDay = ((String(dueMonth) + String(format: "%02d", dueDay)) as NSString).integerValue
    }
}

extension Assignment {
    static var sampleData: [Assignment] =
    [
        Assignment(name: "Project", dueYear: 2022, dueMonth: 09, dueDay: 16, priority: 0, theme: .seafoam, className: "Math"),
        Assignment(name: "Midterm Paper", dueYear: 2022, dueMonth: 11, dueDay: 30, priority: 0, theme: .buttercup, className: "History"),
        Assignment(name: "Project 2", dueYear: 2022, dueMonth: 10, dueDay: 11, priority: 0, theme: .lavender, className: "Science"),
        Assignment(name: "Homework 2", dueYear: 2022, dueMonth: 10, dueDay: 13, priority: 0, theme: .lavender, className: "Science"),
        Assignment(name: "English Literature Paper", dueYear: 2022, dueMonth: 10, dueDay: 18, priority: 0, theme: .bubblegum, className: "English"),
        Assignment(name: "Homework 3", dueYear: 2022, dueMonth: 10, dueDay: 20, priority: 0, theme: .lavender, className: "Science"),
        Assignment(name: "Quiz 4", dueYear: 2022, dueMonth: 10, dueDay: 14, priority: 0, theme: .buttercup, className: "History"),
        Assignment(name: "Midterm", dueYear: 2022, dueMonth: 10, dueDay: 28, priority: 1, theme: .bubblegum, className: "English"),
        Assignment(name: "Project 3", dueYear: 2022, dueMonth: 11, dueDay: 14, priority: 0, theme: .lavender, className: "Science"),
        Assignment(name: "Math Final", dueYear: 2022, dueMonth: 12, dueDay: 08, priority: 1, theme: .seafoam, className: "Math"),
        Assignment(name: "Science Final", dueYear: 2022, dueMonth: 12, dueDay: 10, priority: 1, theme: .lavender, className: "Science")
    ]
    
    static func sortAssignments() -> [Assignment] {
        Assignment.sampleData.sort { $0.monthDay < $1.monthDay }
        return Assignment.sampleData
    }
}


