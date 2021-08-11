import Foundation

struct Response: Decodable {

    var events: [Event]?

    enum CodingKeys:String, CodingKey{
        case events
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.events = try container.decode([Event].self, forKey: .events)
    }

}
