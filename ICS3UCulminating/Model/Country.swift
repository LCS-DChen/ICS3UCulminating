//
//  Country.swift
//  ICS3UCulminating
//
//  Created by Gemini CLI on 2026-06-02.
//

import Foundation

// MODEL
struct Country: Identifiable, Hashable {
    
    // MARK: - Stored properties
    let id = UUID()
    let name: String
    let capital: String
    let flagEmoji: String
}

// MARK: - Dataset
let allCountries = [
    Country(name: "Canada", capital: "Ottawa", flagEmoji: "🇨🇦"),
    Country(name: "United States", capital: "Washington, D.C.", flagEmoji: "🇺🇸"),
    Country(name: "United Kingdom", capital: "London", flagEmoji: "🇬🇧"),
    Country(name: "France", capital: "Paris", flagEmoji: "🇫🇷"),
    Country(name: "Germany", capital: "Berlin", flagEmoji: "🇩🇪"),
    Country(name: "Italy", capital: "Rome", flagEmoji: "🇮🇹"),
    Country(name: "Japan", capital: "Tokyo", flagEmoji: "🇯🇵"),
    Country(name: "China", capital: "Beijing", flagEmoji: "🇨🇳"),
    Country(name: "India", capital: "New Delhi", flagEmoji: "🇮🇳"),
    Country(name: "Brazil", capital: "Brasília", flagEmoji: "🇧🇷"),
    Country(name: "Australia", capital: "Canberra", flagEmoji: "🇦🇺"),
    Country(name: "South Africa", capital: "Pretoria", flagEmoji: "🇿🇦"),
    Country(name: "Mexico", capital: "Mexico City", flagEmoji: "🇲🇽"),
    Country(name: "South Korea", capital: "Seoul", flagEmoji: "🇰🇷"),
    Country(name: "Spain", capital: "Madrid", flagEmoji: "🇪🇸"),
    Country(name: "Russia", capital: "Moscow", flagEmoji: "🇷🇺"),
    Country(name: "Argentina", capital: "Buenos Aires", flagEmoji: "🇦🇷"),
    Country(name: "Egypt", capital: "Cairo", flagEmoji: "🇪🇬"),
    Country(name: "Greece", capital: "Athens", flagEmoji: "🇬🇷"),
    Country(name: "Turkey", capital: "Ankara", flagEmoji: "🇹🇷"),
    Country(name: "Thailand", capital: "Bangkok", flagEmoji: "🇹🇭"),
    Country(name: "Vietnam", capital: "Hanoi", flagEmoji: "🇻🇳"),
    Country(name: "Sweden", capital: "Stockholm", flagEmoji: "🇸🇪"),
    Country(name: "Norway", capital: "Oslo", flagEmoji: "🇳🇴"),
    Country(name: "Switzerland", capital: "Bern", flagEmoji: "🇨🇭"),
    Country(name: "Netherlands", capital: "Amsterdam", flagEmoji: "🇳🇱"),
    Country(name: "Portugal", capital: "Lisbon", flagEmoji: "🇵🇹"),
    Country(name: "Ireland", capital: "Dublin", flagEmoji: "🇮🇪"),
    Country(name: "New Zealand", capital: "Wellington", flagEmoji: "🇳🇿"),
    Country(name: "Indonesia", capital: "Jakarta", flagEmoji: "🇮🇩")
]
