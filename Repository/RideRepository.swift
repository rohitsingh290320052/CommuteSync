class RideRepository {
    private let api = APIService()
    func getRides(completion: @escaping ([Ride]) -> Void) {
        api.fetchRides { completion($0) }
    }
}
