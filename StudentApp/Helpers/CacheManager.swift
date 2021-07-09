import Foundation

class CacheManager{
    //TO DO: Use this for later when we use API calls

    static var cache = [Int:Data]()

    static func setEventCache(_ id:Int, _ data:Data?){
        //Store the data & use ID as key
        cache[id] = data
    }


    static func getEventCache(_ id: Int) -> Data? {
        return cache[id]
    }
}