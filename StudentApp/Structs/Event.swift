import Foundation

struct Event{
    var id: String
    var group: Group
    var user: User
    var title: String
    var interested: Int = 0
    
    var bannerUrl: String
    var location: String
    var description: String

    var datePosted: Date
    var startDate: Date
    var endDate: Date
}

extension Event{
    static var testData = [
        Event(id: UUID().uuidString, group: Group.testData[0], user: User.testData[0], title: "Clubavond @ Cuba", bannerUrl: "SalmoCubavond", location: "Overpoortstraat 76, 9000 Gent", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend. Donec vel dapibus massa. Suspendisse scelerisque enim quis dignissim eleifend.", datePosted: Date(), startDate: Date().addingTimeInterval(24*60*60), endDate: Date().addingTimeInterval(48*60*60)),
        Event(id: UUID().uuidString, group: Group.testData[1], user: User.testData[1], title: "Moeder Lies Quiz Night", bannerUrl: "MLQuiz", location: "The Zone, 9000 Gent", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend. Donec vel dapibus massa. Suspendisse scelerisque enim quis dignissim eleifend.", datePosted: Date(), startDate: Date().addingTimeInterval(48*60*60), endDate: Date().addingTimeInterval(54*60*60)),
        Event(id: UUID().uuidString, group: Group.testData[1], user: User.testData[2], title: "Moeder Lies Verkiezingen", bannerUrl: "MLVerkiezingen", location: "Overpoortstraat 42, 9000 Gent", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend. Donec vel dapibus massa. Suspendisse scelerisque enim quis dignissim eleifend.", datePosted: Date().addingTimeInterval(24*60*60), startDate: Date().addingTimeInterval(32*60*60), endDate: Date().addingTimeInterval(40*60*60)),
        Event(id: UUID().uuidString, group: Group.testData[2], user: User.testData[3], title: "Cuba New Years Event", bannerUrl: "CubaNewYear", location: "Overpoortstraat 76, 9000 Gent", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend. Donec vel dapibus massa. Suspendisse scelerisque enim quis dignissim eleifend.", datePosted: Date(), startDate: Date().addingTimeInterval(142*60*60), endDate: Date().addingTimeInterval(160*60*60)),
        Event(id: UUID().uuidString, group: Group.testData[0], user: User.testData[4], title: "HSC Salmonella Cantus", bannerUrl: "SalmoCantus", location: "Canard Bizard in Gent", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend. Donec vel dapibus massa. Suspendisse scelerisque enim quis dignissim eleifend.", datePosted: Date(), startDate: Date().addingTimeInterval(100*60*60), endDate: Date().addingTimeInterval(108*60*60)),
        Event(id: UUID().uuidString, group: Group.testData[4], user: User.testData[4], title: "Open Mic Night", bannerUrl: "OpenMic", location: "Bagattenstraat 12, 1750 Lennik", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend.", datePosted: Date(), startDate: Date().addingTimeInterval(24*60*60), endDate: Date().addingTimeInterval(48*60*60)),
        Event(id: UUID().uuidString, group: Group.testData[5], user: User.testData[5], title: "Karting Voor Iedereen", bannerUrl: "SalmoKarting", location: "Kartingplaats in Gent", description: "Beste leden, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at diam aliquet libero laoreet mattis. Curabitur efficitur gravida pulvinar. Vivamus viverra eros gravida pretium eleifend. Donec vel dapibus massa. Suspendisse scelerisque enim quis dignissim eleifend.", datePosted: Date(), startDate: Date().addingTimeInterval(54*60*60), endDate: Date().addingTimeInterval(100*60*60))
    ]
}

/*
struct Event : Decodable{
    var id: Int = -1
    var group: Group = Group(id: "0", name: "", imageUrl: "", followers: 0, description: "", website: "", shortDescription: "", groupSort: "")
    var user: String = "PLACEHOLDER USER"
    var title: String = ""
    var interested: Int = 0
    var following: Bool
    
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
        case following
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
        self.following = try container.decode(Bool.self, forKey: .following)
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
    
}*/
