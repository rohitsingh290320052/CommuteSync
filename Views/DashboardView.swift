import SwiftUI

struct DashboardView: View {
    @StateObject var vm = RideViewModel()

    var body: some View {
        NavigationView {
            List(vm.rides) { ride in
                NavigationLink(destination: RideTrackingView()) {
                    VStack(alignment: .leading) {
                        Text(ride.driverName).font(.headline)
                        Text(ride.cabNumber)
                        Text("ETA: \(ride.eta) mins")
                            .foregroundColor(.blue)
                    }
                    .padding()
                }
            }
            .navigationTitle("My Rides")
            .onAppear { vm.load() }
        }
    }
}
