import SwiftUI

struct ContentView: View {
    var body: some View {
        var teamScore = functions().loopExample()
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("Team Score: \(teamScore*10)")
        }
    }
}

struct functions{
    func loopExample()-> Int{
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        
        for individualScore in individualScores {
            if individualScore > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        return teamScore
    }
}
