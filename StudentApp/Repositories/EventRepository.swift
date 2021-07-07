import Event;

class EventRepository{

    func getEventsFromJSON(){
        let data = self.readLocalJSON(forName: "backend")

        do{
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601

            let response = try decoder.decode(Response.self, from: data!)
        } catch{
            print(error)
        }

        dump(response)
    }
    
    func getEventsOffline() -> List<Event> {
        var events: List<Event>();

        for i in range(0, 5)){
            var event = Event();
            events.append(event);
        }
        
        return events;
    }

    //SOURCE: https://programmingwithswift.com/parse-json-from-file-and-url-with-swift/
    private func readLocalJSON(forName name: String) -> Data?{
        do{
            if let bundlePath = Bundle.main.path(forResource: name, ofType:"json"),
                let jsonData = try String(contentsOf: bundlePath).data(using: .utf8){
                    return jsonData
                }
        } catch{
            print(error)
        }

        return nil
    }
    
}