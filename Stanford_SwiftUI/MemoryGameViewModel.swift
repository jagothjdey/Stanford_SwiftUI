import SwiftUI

final class ViewModel : ObservableObject{
    private var model : Model<String> = createModel()
    
    static func createModel() -> Model<String>{
        let emojis : Array<String> = ["👻" , "🤓"]
        return Model<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
   // MARK: - Access to the Model
    var cards : Array<Model<String>.Card>{
        model.cards
    }
    
    
   // MARK: - Intent(s)
    func choose(card : Model<String>.Card){
        model.choose(card: card)
    }
}
