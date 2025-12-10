import Foundation
import SwiftData

@Model
final class Expense {
    var title: String
    var amount: Double
    var date: Date
    var category : String
    var tripp: Tripp?
    var stop: Stop?

    init(title: String, amount: Double, date: Date, category: String, tripp: Tripp) {
        self.title = title
        self.amount = amount
        self.date = date
        self.category = category
        self.tripp = tripp
    }
}