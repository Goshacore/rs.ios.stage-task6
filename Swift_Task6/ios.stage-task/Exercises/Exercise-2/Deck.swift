import Foundation

protocol DeckBaseCompatible: Codable {
    var cards: [Card] {get set}
    var type: DeckType {get}
    var total: Int {get}
    var trump: Suit? {get}
}

enum DeckType:Int, CaseIterable, Codable {
    case deck36 = 36
}

struct Deck: DeckBaseCompatible {

    //MARK: - Properties

    var cards = [Card]()
    var type: DeckType
    var trump: Suit?

    var total:Int {
        return type.rawValue
    }
}

extension Deck {

    init(with type: DeckType) {
        self.type = type
        cards  =  createDeck(suits: Suit.allCases, values: Value.allCases)
    }

    public func createDeck(suits:[Suit], values:[Value]) -> [Card] {
        
      
        var cards = [Card]()
        
        for item in suits {
            for item2 in values {
                var card = Card(suit: item, value: item2)
                cards.append(card)
            }
        }
        
       
        
     return   cards
    }

    public   mutating func shuffle() {
        
   
        
       cards.shuffle()

    }

    public mutating func defineTrump() {
        
        trump = cards.last?.suit
        
        for (index , item) in cards.enumerated() {
            if item.suit == trump {
                var a =  item
                a.isTrump = true
                cards[index] = a
                
            }
        }
    }

    public mutating func initialCardsDealForPlayers(players: [Player]) {
        
        
        for player in players {
            
            
            
            var   arrayCards = [Card]()
            
            
            for i in 1 ... 6 {
                 
                arrayCards.append(cards.first!)
               cards.removeFirst()
                player.hand = arrayCards
                 
            }
                
        }
        
        
        
        

    }

    public func setTrumpCards(for suit:Suit) {

    }
}
