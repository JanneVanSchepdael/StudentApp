import Foundation

struct Event : Decodable{
    var id: Int = -1
    var group: String = "PLACEHOLDER GROUP"
    var user: String = "PLACEHOLDER USER"
    var title: String = ""
    var interested: Int = 0

    var datePosted = Date()
    var startDate = Date()
    var endDate = Date()

    enum CodingKeys: String, CodingKey {
        case id
        case group
        case user
        case title
        case interested
        case datePosted
        case startDate
        case endDate
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.id = try container.decode(Int.self, forKey: .id)
        self.group = try container.decode(String.self, forKey: .group)
        self.user = try container.decode(String.self, forKey: .user)
        self.title = try container.decode(String.self, forKey: .title)
        self.interested = try container.decode(Int.self, forKey: .interested)
        self.datePosted = try container.decode(Date.self, forKey: .datePosted)
        self.startDate = try container.decode(Date.self, forKey: .startDate)
        self.endDate = try container.decode(Date.self, forKey: .endDate)
    }
    
}
