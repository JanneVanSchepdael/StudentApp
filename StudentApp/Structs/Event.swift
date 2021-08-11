import Foundation


struct Event : Decodable{
    var id: Int = -1
    var group: Group = Group()
    var user: String = "PLACEHOLDER USER"
    var title: String = ""
    var interested: Int = 0
    
    var bannerUrl: String = ""
    var location: String = ""
    var description: String = ""

    var datePosted = Date()
    var startDate = Date()
    var endDate = Date()

    enum CodingKeys: String, CodingKey {
        case id
        case user
        case group
        case title
        case interested
        case bannerUrl
        case location
        case description
        case datePosted
        case startDate
        case endDate
        
        enum Group: String, CodingKey {
            case name
            case imageUrl
            case followers
            case description
            case website
            case shortDescription
            case groupSort
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.id = try container.decode(Int.self, forKey: .id)
        self.user = try container.decode(String.self, forKey: .user)
        self.title = try container.decode(String.self, forKey: .title)
        self.interested = try container.decode(Int.self, forKey: .interested)
        self.bannerUrl = try container.decode(String.self, forKey: .bannerUrl)
        self.location = try container.decode(String.self, forKey: .location)
        self.description = try container.decode(String.self, forKey: .description)
        self.datePosted = try container.decode(Date.self, forKey: .datePosted)
        self.startDate = try container.decode(Date.self, forKey: .startDate)
        self.endDate = try container.decode(Date.self, forKey: .endDate)
        
        let groupContainer =  try container.nestedContainer(keyedBy: CodingKeys.Group.self, forKey: .group)
        self.group.name = try groupContainer.decode(String.self, forKey: .name)
        self.group.imageUrl = try groupContainer.decode(String.self, forKey: .imageUrl)
        self.group.followers = try groupContainer.decode(Int.self, forKey: .followers)
        self.group.description = try groupContainer.decode(String.self, forKey: .description)
        self.group.website = try groupContainer.decode(String.self, forKey: .website)
        self.group.shortDescription = try groupContainer.decode(String.self, forKey: .shortDescription)
        self.group.groupSort = try groupContainer.decode(String.self, forKey: .groupSort)
        
    }
    
}
