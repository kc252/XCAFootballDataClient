//
//  File.swift
//
//
//  Created by Kevin Campbell on 31/05/2024.
//

import Foundation


public struct Match: Identifiable, Decodable {
    
    public let area: Area?
    public let competition: Competition?
    public let season: Season?
    
    public let id: Int
    public let utcDate: Double
    public let status: String?
    public let minute: Int?
    public let injuryTime: Int?
    public let attendance: Int?
    public let venue: String?
    public let matchday: Int?
    public let stage: String?
    public let lastUpdatedTime: String?
    public let homeTeam: LiveTeam?
    public let awayTeam: LiveTeam?
    public let score: Score?
    public let goals: [Goal]?
    public let penalties: [Penalty]?
    public let bookings: [Booking]?
    public let substitutions: [Substitution]
    public let odds: Odds
    public let referees: [Coach]
    
}

//public enum Status: Decodable {
//    case SCHEDULED , TIMED , IN_PLAY , PAUSED , EXTRA_TIME , PENALTY_SHOOTOUT , FINISHED , SUSPENDED , POSTPONED , CANCELLED , AWARDED
//}

public struct Season: Identifiable, Decodable {
    public let id: Int
    public let startDate, endDate: String?
    public let currentMatchday: Int
    public let winner: String?
    public let stages: [String]?
}

//public enum Stage: Decodable {
//    case FINAL , THIRD_PLACE , SEMI_FINALS , QUARTER_FINALS , LAST_16 , LAST_32 , LAST_64 , ROUND_4 , ROUND_3 , ROUND_2 , ROUND_1 , GROUP_STAGE , PRELIMINARY_ROUND , QUALIFICATION , QUALIFICATION_ROUND_1 , QUALIFICATION_ROUND_2 , QUALIFICATION_ROUND_3 , PLAYOFF_ROUND_1 , PLAYOFF_ROUND_2 , PLAYOFFS , REGULAR_SEASON , CLAUSURA , APERTURA , CHAMPIONSHIP , RELEGATION , RELEGATION_ROUND
//}

public struct LiveTeam: Identifiable, Decodable {
    public let id: Int
    public let name: String?
    public let shortName: String?
    public let tla: String?
    public let crest: String?
    public let coach: Coach?
    public let leagueRank: Int?
    public let formation: String?
    public let lineup: [Player]?
    public let bench: [Player]?
    public let statistics: [String:Int]
}

public struct Coach: Decodable {
    public let id: Int?
    public let name: String?
    public let nationality: String?
    public let type: String?
}

//public struct Statistics: Decodable {
//    
//    public var corner_kicks: Int?
//    public var free_kicks: Int?
//    public var goal_kicks: Int?
//    public var offsides: Int?
//    public var fouls: Int?
//    public var ball_possession: Int?
//    public var saves: Int?
//    public var throw_ins: Int?
//    public var shots: Int?
//    public var shots_on_goal: Int?
//    public var shots_off_goal: Int?
//    public var yellow_cards: Int?
//    public var yellow_red_cards: Int?
//    public var red_cards: Int?
//    
//}

public struct Score: Decodable {
    
    public let winner: String?
    public let duration: Duration?
    public let fulltime: Result?
    public let halftime: Result?
    
}

public enum Duration: Decodable {
    case REGULAR , EXTRA_TIME , PENALTY_SHOOTOUT
}

public struct Result: Decodable {
    public var home: Int?
    public var away: Int?
}

public struct Goal: Decodable {
    public var minute: Int?
    public var injuryTime: Int?
    public var type: String
    public var team: Team?
    public var score: FullTime
    public var assist: Player?
}

public struct FullTime: Decodable {
    public let home, away: Int
}

public struct Odds: Decodable {
    public let homeWin, draw, awayWin: Double
}

public struct Booking: Decodable {
    public let minute: Int
    public let team, player: Player
    public let card: String
}

public struct Penalty: Decodable {
    public let player, team: Player
    public let scored: Bool
}

public struct Substitution: Decodable {
    public let minute: Int
    public let team, playerOut, playerIn: Player
}

//public enum Card: Decodable {
//    case YELLOW , RED
//}


public struct LiveMatchesResponse: Decodable {
    
    public var matches: [Match]?
    
}
