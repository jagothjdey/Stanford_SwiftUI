import SwiftUI

struct ContentView: View {
    @State var flipped : Bool = false
    var body: some View {
        VStack(spacing : 5){
            ForEach(0..<3, id : \.self){ row in
                HStack(spacing : 5){
                    ForEach(0..<3, id : \.self){ col in
                        CardView(flipped: false)
                    }
                }
            }
        }
    }
}

struct CardView : View{
    var flipped : Bool
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
            .fill(self.flipped ? Color.orange : Color.white)
            .frame(width : 100, height: 100)
            
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 3)
                .frame(width : 100, height: 100)
            
            Text("👻")
                .scaleEffect(4.0)
                .opacity(self.flipped ? 0 : 1)
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}
