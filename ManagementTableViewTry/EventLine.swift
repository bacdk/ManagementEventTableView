//
//  EventLine.swift
//  ManagementTableViewTry
//
//  Created by miceli on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import Foundation
import UIKit

class EventLine
{
    var day: String         //Ngay trong tuan
    var events: [Event]     //Cac su kien
    
    init(daysOfWeek: String, includeEvents: [Event])
    {
        day = daysOfWeek
        events = includeEvents
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thusday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    private class func Monday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))
        
        return EventLine(daysOfWeek: "Monday", includeEvents: events)
        //Thứ Hai
    }
    
    private class func Tuesday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))

        return EventLine(daysOfWeek: "Tuesday", includeEvents: events)
        //Thứ Ba
    }
    
    private class func Wednesday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))
        
        return EventLine(daysOfWeek: "Wednesday", includeEvents: events)
        //Thứ Tư
    }
    
    private class func Thusday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))
        
        return EventLine(daysOfWeek: "Thusday", includeEvents: events)
        //Thứ Năm
    }
    
    private class func Friday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))
        
        return EventLine(daysOfWeek: "Friday", includeEvents: events)
        //Thứ Sáu
    }
    
    private class func Saturday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))
        
        return EventLine(daysOfWeek: "Saturday", includeEvents: events)
        //Thứ Bảy
    }
    
    private class func Sunday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Reading Books", description: "Description"))
        events.append(Event(titled: "Going to school", description: "Description"))
        events.append(Event(titled: "Doing homeworks", description: "Description"))
        events.append(Event(titled: "Walking", description: "Description"))
        events.append(Event(titled: "Listening Music", description: "Description"))
        events.append(Event(titled: "Learning English", description: "Description"))
        events.append(Event(titled: "Learning Guitar", description: "Description"))
        events.append(Event(titled: "Do excecise", description: "Description"))
        events.append(Event(titled: "Hangout With friends", description: "Description"))
        events.append(Event(titled: "Playing game", description: "Description"))
        
        return EventLine(daysOfWeek: "Sunday", includeEvents: events)
        // Chủ Nhật
    }
}
