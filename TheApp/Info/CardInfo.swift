
import SwiftUI

struct Services: Identifiable{
    var id = UUID()
    var title: String
    var subtitle: String
    var color: Color
//    var image: Image
}

var services = [
    Services(title: "Divine Liturgies\n",
             subtitle: "Tap for more information about: \n\nLiturgy & Vespers Schedules",
             color: Color("InverseAccentColor")
             //image:
            ),
    
    Services(title: "Sunday School Service",
             subtitle: "Tap for more information about: \n\nSunday School & Mahragan",
             color: Color("InverseAccentColor")
//             image:
            ),
    
    Services(title: "Hymns Class Service",
             subtitle: "Tap for more information about: \n\nAll Hymns Classes\n",
             color: Color("InverseAccentColor")
             //image:
            )
]

struct Extras: Identifiable{
    var id = UUID()
    var title: String
    var color: Color
//    var image: Image
}

var extras = [
    Extras(title: "Sermon Archive",
           color: Color("InverseAccentColor")
             //image: Sermon archive
            ),
    
    Extras(title: "Confession Scheduling",
           color: Color("InverseAccentColor")
           //             image:
            ),
    
    Extras(title: "Prayer Requests",
           color: Color("InverseAccentColor")
           //image:
            ),
    Extras(title: "Baptismal Requests",
           color: Color("InverseAccentColor")
           //image:
            ),
    Extras(title: "YouTube Channel",
           color: Color("InverseAccentColor")
             //image: Sermon archive
            ),
    Extras(title: "FaceBook Page",
           color: Color("InverseAccentColor")
             //image: Sermon archive
            )
]



struct Primary: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var caption: String
    var details: String
    var color: Color
    var image: Image
}

var primaries = [
    Primary(title: "Sunday School Classes",
           subtitle: "Tap here to view locations, times, dates, and more regarding Sunday School Classes in the church.",
           caption: "Shallow information",
           details: "Details",
           color: Color("Golden"),
           image: Image("Topic 1")),
    
    Primary(title: "Hymns Classes",
           subtitle: "Tap here to view information regarding hymns Classes, hymns competition classes, and private lessons opportunities in the church.",
           caption: "The caption goes here",
           details: "Details",
           color: Color("Golden"),
           image: Image("Topic 1")),
    
    Primary(title: "Coptic Orthodox Sunday School",
           subtitle: "Tap to learn more about our Church's sunday school service and its roots.",
           caption: "The Lord Jesus Christ not only taught the multitudes. He had compassion on them and fed them. \n\nOur Lord said, \"I have compassion on the multitude, because they have now continued with Me three days and have nothing to eat. And I do not want to send them away hungry, lest they faint on the way\" (Matthew 15:32).",
           details: "Details",
           color: .accentColor,
           image: Image("JesusAndKids")),
    
    Primary(title: "Coptic Orthodox Hymns Classes",
           subtitle: "Tap to learn more about our Church's Hymns services and its roots.",
           caption: "Praising God through hymns lifts up our spirits and allows us to communicate with the One we love. Chanting transcends us in liturgical worship. This is a service to unite the Coptic Orthodox Church to pray in one voice and one spirit.\n\nThe Holy Spirit, awakened David, saying, \"Arise and sing, for the Light has shone.\"",
           details: "Details",
           color: .accentColor,
           image: Image("HymnsBackground"))
]




struct Secondary: Identifiable {
    var id = UUID()
    var title: String
    var caption: String
    var color: Color
    var image: Image
}

var secondaries = [
    Secondary(title: "State Machine",
              caption: "Watch video - 15 mins",
              color: Color(hex: "9CC5FF"),
              image: Image("Topic 2")),
    
    
    Secondary(title: "Animated Menu",
              caption: "Watch video - 10 mins",
              color: Color(hex: "6E6AE8"),
              image: Image("Topic 1")),
    
    
    Secondary(title: "Tab Bar",
              caption: "Watch video - 8 mins",
              color: Color(hex: "005FE7"),
              image: Image("Topic 2")),
    
    Secondary(title: "Button",
              caption: "Watch video - 9 mins",
              color: Color(hex: "BBA6FF"),
              image: Image("Topic 1"))
]
