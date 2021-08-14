/*import Foundation

protocol NotificationDelegate {
    func notificationsFetched(_ notifications:[Notification])
}

class NotificationRepository{

    var delegate: NotificationDelegate?

    func getNotificationsFromJSON(){
        let data = self.readLocalFile(forName: "backend")

        do{
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601

            let response = try decoder.decode(Response.self, from: data!)
            
            if(response.notifications != nil){
                DispatchQueue.main.async {
                    self.delegate?.notificationsFetched(response.notifications!)
                }
            }
            dump(response.notifications)
        } catch{
            print(error)
        }
    }

    //SOURCE: https://programmingwithswift.com/parse-json-from-file-and-url-with-swift/
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }

        return nil
    }
 
}
