import Foundation

struct Response: Decodable {

    var events: [Event]?
    var notifications: [Notification]?

    enum CodingKeys:String, CodingKey{
        case events
        case notifications
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.events = try container.decode([Event].self, forKey: .events)
        self.notifications = try container.decode([Notification].self, forKey: .notifications)
    }

}
