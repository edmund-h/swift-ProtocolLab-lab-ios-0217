//
//  Ships.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



enum Direction {
    case north, south, east, west
}

protocol SteerAbility {
    var direction: Direction {get set}
//    func steerInDirection(_ direction: Direction) //<- this causes it to break because it takes precedence over the default implementation
}

extension SteerAbility {
    mutating func steerInDirection(_ direction: Direction){
        self.direction = direction
    }
}

class SailBoat: SteerAbility {
    var direction: Direction = .north
}

class RowBoat: SteerAbility{
    var direction: Direction = .north
}

class SteamBoat: SteerAbility{
    var direction: Direction = .north
}
