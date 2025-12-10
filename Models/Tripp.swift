import Foundation
import SwiftData

@Model

final class Tripp {
    var title: String
    var startDate: Date
    var endDate: Date
    var budget: Double

    @Attribute(.externalStorage) var coverPhotoData: Data?

    @Relationship(deleteRule: .cascade) var stops: [Stop]? = []
    @Relationship(deleteRule: .cascade) var expenses: [Expense]? = []

    init(title: String, startDate: Date, endDate: Date, budget: Double) {
        self.title = title
        self.startDate = startDate
        self.endDate = endDate
        self.budget = budget
    }

    var totalSpent: Double {
        expenses?.reduce(0) { $0 + $1.amount } ?? 0.0
    }

    var remainingBudget: Double {
        budget - totalSpent
    }

}
