import Foundation
import Alamofire
import Firebase

public func doRequest() {
  let request = Alamofire.request(.GET, "http://api.jogabo.com/health")
  request.response { _ in
    println("From my lib 2: \(request.response?.statusCode)")
  }

  let ref = Firebase(url: "https://jogabo-test.firebaseio.com")
  ref.observeEventType(FEventType.Value) { (data: FDataSnapshot!) -> Void in
    println("From my lib 2: \(data.value)")
  }

}


//func hangCompiler() { ["A": [ ["B": [ 1, 2, 3, 4, 5 ]], ["C": [ ]], ["D": [ ["A": [ 1 ]] ]] ]] }
