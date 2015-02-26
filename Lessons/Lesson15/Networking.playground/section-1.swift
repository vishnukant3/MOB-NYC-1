// Playground - noun: a place where people can play

import UIKit
import XCPlayground

//Needed for play ground to run
// Let asynchronous code run
XCPSetExecutionShouldContinueIndefinitely()


if let url = NSURL(string: "http://google.com") {
    let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
        println(response)
        println(data)
        var string = NSString(data: data, encoding: NSUTF8StringEncoding)
        println(string)
    })
    task.resume()
}

<<<<<<< HEAD
if let url = NSURL(string: "http://www.reddit.com/.json") {
    let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
        var string = NSString(data: data, encoding: NSUTF8StringEncoding)
            println(string)
        var json = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil)
        println(json)
    })
    task.resume()
}
=======
//if let url = NSURL(string: "http://www.reddit.com/.json") {
//    let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
//        var string = NSString(data: data, encoding: NSUTF8StringEncoding)
//            println(string)
//        var json = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil)
//        println(json)
//    })
//    task.resume()
//}
>>>>>>> 3539bdcf8eac4b5931bc09c2f0d7b61c0f06e58e
