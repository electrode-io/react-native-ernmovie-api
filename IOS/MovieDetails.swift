public class MovieDetails: ElectrodeObject, Bridgeable {

    private static let tag = String(describing: type(of: self))

    /**
     uniqueId
     */
    public let id: String
    /**
     Movie name
     */
    public let title: String
    /**
     Movie released year
     */
    public let releaseYear: Int?
    /**
     URL for the movie banner
     */
    public let imageUrl: String?
    /**
     Movie rating 1-10, -1 for no rating
     */
    public let rating: Float?
    public let releaseDate: String?

    public init(id: String, title: String, releaseYear: Int?, imageUrl: String?, rating: Float?, releaseDate: String?) {
        self.id = id
        self.title = title
        self.releaseYear = releaseYear
        self.imageUrl = imageUrl
        self.rating = rating
        self.releaseDate = releaseDate
        super.init()
    }

    public override init() {
        self.id = String()
        self.title = String()
        self.releaseYear = nil
        self.imageUrl = nil
        self.rating = nil
        self.releaseDate = nil
        super.init()
    }

    required public init(dictionary:[AnyHashable:Any]) {
        

        if let id = dictionary["id"] as? String  {
                  self.id = id
        } else {
            assertionFailure("\(MovieDetails.tag) missing one or more required properties [id] ")
            self.id = dictionary["id"] as! String
        }

                 

        if let title = dictionary["title"] as? String  {
                  self.title = title
        } else {
            assertionFailure("\(MovieDetails.tag) missing one or more required properties [title] ")
            self.title = dictionary["title"] as! String
        }

         


        if let releaseYear = dictionary["releaseYear"] as? Int {
            self.releaseYear = releaseYear
        } else {
            self.releaseYear = nil
        }
        

        if let imageUrl = dictionary["imageUrl"] as? String {
            self.imageUrl = imageUrl
        } else {
            self.imageUrl = nil
        }
        

        if let rating = dictionary["rating"] as? Float {
            self.rating = rating
        } else {
            self.rating = nil
        }
        

        if let releaseDate = dictionary["releaseDate"] as? String {
            self.releaseDate = releaseDate
        } else {
            self.releaseDate = nil
        }
        
        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {

         var dict = [:] as [AnyHashable : Any]

         dict["id"] =  self.id
dict["title"] =  self.title

        if let nonNullReleaseYear = self.releaseYear {
                dict["releaseYear"] = nonNullReleaseYear
        }
        if let nonNullImageUrl = self.imageUrl {
                dict["imageUrl"] = nonNullImageUrl
        }
        if let nonNullRating = self.rating {
                dict["rating"] = nonNullRating
        }
        if let nonNullReleaseDate = self.releaseDate {
                dict["releaseDate"] = nonNullReleaseDate
        }
        return dict as NSDictionary
    }
}
