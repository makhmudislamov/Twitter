//
//  TwitterClient.swift
//  Twitter
//
//  Created by Makhmud Sunnatovich on 2/14/16.
//  Copyright © 2016 makhmudislamov. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "x4hmlyfdqeC9CJj9o22XVWuhM"
let twitterConsumerSecret = "yOWyoAts1wSIqJ9DeLAKFpgxJxX2nC1vE2qMwyHO9iJUuGVtig"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")


class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL,
                consumerKey: twitterConsumerKey,
                consumerSecret: twitterConsumerSecret)
            
        }
        
        return Static.instance
    }
}