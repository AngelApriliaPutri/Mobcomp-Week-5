import SwiftUI

struct ContentView: View {
    
    let flags = [
        "🇦🇺", "🇧🇷", "🇨🇦", "🇩🇪", "🇪🇸", "🇫🇷", "🇮🇹", "🇯🇵", "🇰🇷",
        "🇷🇺", "🇺🇸", "🇦🇷", "🇧🇪", "🇨🇱", "🇨🇳", "🇮🇱", "🇲🇽", "🇳🇱",
        "🇵🇱", "🇵🇹", "🇸🇦", "🇸🇬", "🇿🇦", "🇹🇷", "🇹🇭", "🇻🇳", "🇦🇪",
        "🇭🇺", "🇮🇩", "🇰🇿", "🇲🇦", "🇪🇬"
    ]
    
    @State private var currentFlag = "🇺🇸"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(currentFlag)
                    .font(.system(size: 200))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Button("Go!") {
                    displayRandomFlag()
                }
                .font(.title)
                .padding()
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Random Flag")
            .padding()
        }
    }
    
    func displayRandomFlag() {
        let randomIndex = Int.random(in: 0..<flags.count)
        currentFlag = flags[randomIndex]
    }
}

#Preview {
    ContentView()
}
