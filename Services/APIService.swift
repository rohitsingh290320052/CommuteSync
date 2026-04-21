import Foundation

class APIService {
    func fetchRides(completion: @escaping ([Ride]) -> Void) {
        let data = [
            Ride(id: 1, driverName: "Raj", cabNumber: "UP32-1234", status: "Arriving", eta: 5),
            Ride(id: 2, driverName: "Amit", cabNumber: "DL01-5678", status: "Completed", eta: 0)
        ]
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(data)
        }
    }
}
