import PlaygroundSupport
import SwiftUI

struct Landmark: Identifiable {
    let id = UUID()
    var name: String
    var thumbnail: String
    var isFavorite: Bool
}

var str = "Hello, playground"
var landmarks: [Landmark] = [
    .init(name: "Teste 1", thumbnail: "Teste", isFavorite: true),
    .init(name: "Teste 2", thumbnail: "Teste", isFavorite: false),
    .init(name: "Teste 3", thumbnail: "Teste", isFavorite: true),
    .init(name: "Teste 4", thumbnail: "Teste", isFavorite: false),
]

struct LiveView: View {
    var body: some View {
        List(landmarks) { landmark in
            Image(systemName: "star.fill")
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}




PlaygroundPage.current.liveView = UIHostingController(rootView: LiveView())
