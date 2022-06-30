//
//  Pokemon.swift
//  PokedexSwiftUI (iOS)
//
//  Created by Brandon De Jesus Escalante Nava on 23/06/22.
//

import Foundation
import SwiftUI

public struct Pokemon: Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let imageUrl: String
    public let type: PokemonType
    
    public let description: String
    public let attack: Int
    public let defense: Int
    public let height: Int
    public let weight: Int
    
    public var favorite = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageUrl
        case type
        case description
        case attack
        case defense
        case height
        case weight
    }
}


public let MOCK_POKEMON = Pokemon(id: 1, name: "Bulbasaur", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: .grass, description: "Bulbasaur can be seen napping in bright sunlight.\nThere is a seed on its back. By soaking up the sun’s rays,\nthe seed grows progressively larger.",  attack: 10, defense: 10, height: 10, weight: 10)

public enum PokemonType: String, Decodable {
    case normal
    case fire
    case water
    case grass
    case electric
    case ice
    case fighting
    case poison
    case ground
    case flying
    case psychic
    case bug
    case rock
    case ghost
    case dragon
    case dark
    case steel
    case fairy
}

public extension PokemonType {
    var typeColor: Color {
        get {
            switch self {
            case .normal:
                return .init(rgb: 0xA8A77A)
            case .fire:
                return .init(rgb: 0xEE8130)
            case .water:
                return .init(rgb: 0x6390F0)
            case .grass:
                return .init(rgb: 0x7AC74C)
            case .electric:
                return .init(rgb: 0xF7D02C)
            case .ice:
                return .init(rgb: 0x96D9D6)
            case .fighting:
                return .init(rgb: 0xC22E28)
            case .poison:
                return .init(rgb: 0xA33EA1)
            case .ground:
                return .init(rgb: 0xE2BF65)
            case .flying:
                return .init(rgb: 0xA98FF3)
            case .psychic:
                return .init(rgb: 0xF95587)
            case .bug:
                return .init(rgb: 0xA6B91A)
            case .rock:
                return .init(rgb: 0xB6A136)
            case .ghost:
                return .init(rgb: 0x735797)
            case .dragon:
                return .init(rgb: 0x6F35FC)
            case .dark:
                return .init(rgb: 0x705746)
            case .steel:
                return .init(rgb: 0xB7B7CE)
            case .fairy:
                return .init(rgb: 0xD685AD)
            }
        }
    }
}
