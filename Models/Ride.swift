import Foundation

struct Ride: Identifiable, Codable {
    let id: Int
    var driverName: String
    var cabNumber: String
    var status: String
    var eta: Int
}
