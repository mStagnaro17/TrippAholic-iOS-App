import Foundation
import SwiftData


@Model
final class Stop {
    var name: String
    var timestamp: Date
    var latitude: Double
    var longitude: Double
    var notes: String

    var tripp: Tripp?

    @Relationship(deleteRule: .cascade) var stopExpenses: [Expense]? = []

    init(name: String, timestamp: Date, latitude: Double, longitude: Double) {
        self.name = name
        self.timestamp = timestamp
        self.latitude = latitude
        self.longitude = longitude
        self.notes = ""
    }
}

