import SwiftUI

struct ContentView: View {
    
    var viewModel : ViewModel
    
    var body: some View {
        HStack(spacing : 5){
            ForEach(viewModel.cards){ card in
                CardView(card: card)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                }
            }
        }
    }
}

struct CardView : View{
    var card : Model<String>.Card
    
    var body: some View{
        ZStack{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth : 3)
                Text(card.content)
            }
            else{
                RoundedRectangle(cornerRadius: 10).fill(Color.orange)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}
