//
//  FinalScore.swift
//  WatchConferenceConnectApp WatchKit Extension
//
//  Created by John Baer on 11/6/18.
//  Copyright © 2018 John Baer. All rights reserved.
//

import WatchKit
import Foundation


class FinalScore: WKInterfaceController {

    var homeScoresArr: [Int] = []
    var awayScoresArr: [Int] = []
    var homeYellowsArr: [Int] = []
    var awayYellowsArr: [Int] = []
    var homeRedsArr: [Int] = []
    var awayRedsArr: [Int] = []
    var matchArr: [String] = ["0","0","0","0"]
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        var matchData = (context as! NSDictionary)["matchData"] as? [String]
        matchArr = matchData!
        print(matchArr[0])
        print(matchArr[1])
        print(matchArr[2])
        
        
        var homeScoresData = (context as! NSDictionary)["homeScoresData"] as? [Int]
        var homeYellowsData = (context as! NSDictionary)["homeYellowsData"] as? [Int]
        var homeRedsData = (context as! NSDictionary)["homeRedsData"] as? [Int]
        var awayScoresData = (context as! NSDictionary)["awayScoresData"] as? [Int]
        var awayYellowsData = (context as! NSDictionary)["awayYellowsData"] as? [Int]
        var awayRedsData = (context as! NSDictionary)["awayRedsData"] as? [Int]
        homeScoresArr = homeScoresData!
        homeYellowsArr = homeYellowsData!
        homeRedsArr = homeRedsData!
        awayScoresArr = awayScoresData!
        awayYellowsArr = awayYellowsData!
        awayRedsArr = awayRedsData!
        
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return ["matchData":matchArr, "homeScoresData": homeScoresArr, "homeYellowsData": homeYellowsArr, "homeRedsData": homeRedsArr, "awayScoresData": awayScoresArr, "awayYellowsData": awayYellowsArr, "awayRedsData": awayRedsArr]
    }
    
    
    
    //send this data to the iphone

}
