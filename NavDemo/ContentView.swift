import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(DataModel.sampledata) { photo in
                NavigationLink(value: photo) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(photo.title)
                            .font(.headline)

                        Text("Album \(photo.albumId)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Photos")
            .navigationDestination(for: Photo.self) { photo in
                PhotoDetailView(photo: photo)
            }
        }
    }
}

#Preview {
    ContentView()
}
