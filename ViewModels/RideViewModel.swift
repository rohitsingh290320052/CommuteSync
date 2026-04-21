import Foundation

class RideViewModel: ObservableObject {
    @Published var rides: [Ride] = []
    private let repo = RideRepository()

    func load() {
        repo.getRides { [weak self] data in
            self?.rides = data
            self?.startETAUpdates()
        }
    }

    func startETAUpdates() {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
            DispatchQueue.main.async {
                for i in 0..<self.rides.count {
                    if self.rides[i].eta > 0 {
                        self.rides[i].eta -= 1
                    }
                }
            }
        }
    }
}
