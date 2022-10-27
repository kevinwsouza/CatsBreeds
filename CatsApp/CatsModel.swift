//
//  HomeScreenModel.swift
//  CatsApp
//
//  Created by Kevin Souza on 25/10/22.
//

import Foundation
typealias Cats = [Cat]



struct Cat: Codable {
    var id: String?
    var name: String?
    var temperament: String?
    var life_span: String?
    var alt_names: String?
    var wikipedia_url: String?
    var origin: String?
    var weight_imperial: String?
    var experimental: Int?
    var hairless: Int?
    var natural: Int?
    var rare: Int?
    var rex: Int?
    var suppress_tail: Int?
    var short_legs: Int?
    var hypoallergenic: Int?
    var adaptability: Int?
    var affection_level: Int?
    var country_code: String?
    var child_friendly: Int?
    var dog_friendly: Int?
    var energy_level: Int?
    var grooming: Int?
    var health_issues: Int?
    var intelligence: Int?
    var shedding_level: Int?
    var social_needs: Int?
    var stranger_friendly: Int?
    var vocalisation: Int?
    var image: Image?
}

struct Image: Codable {
    let id: String?
    let width: Int?
    let height: Int?
    let url: String?
}



