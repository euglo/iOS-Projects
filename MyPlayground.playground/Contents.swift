import UIKit

enum Activity {
    case talking(topic: String)
}

var result = Activity.talking(topic: "football")
print(result)

