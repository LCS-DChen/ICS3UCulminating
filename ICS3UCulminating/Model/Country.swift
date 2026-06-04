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
    Country(name: "Indonesia", capital: "Jakarta", flagEmoji: "🇮🇩"),
    Country(name: "Denmark", capital: "Copenhagen", flagEmoji: "🇩🇰"),
    Country(name: "Finland", capital: "Helsinki", flagEmoji: "🇫🇮"),
    Country(name: "Belgium", capital: "Brussels", flagEmoji: "🇧🇪"),
    Country(name: "Austria", capital: "Vienna", flagEmoji: "🇦🇹"),
    Country(name: "Czech Republic", capital: "Prague", flagEmoji: "🇨🇿"),
    Country(name: "Poland", capital: "Warsaw", flagEmoji: "🇵🇱"),
    Country(name: "Ukraine", capital: "Kyiv", flagEmoji: "🇺🇦"),
    Country(name: "Hungary", capital: "Budapest", flagEmoji: "🇭🇺"),
    Country(name: "Romania", capital: "Bucharest", flagEmoji: "🇷🇴"),
    Country(name: "Singapore", capital: "Singapore", flagEmoji: "🇸🇬"),
    Country(name: "Malaysia", capital: "Kuala Lumpur", flagEmoji: "🇲🇾"),
    Country(name: "Philippines", capital: "Manila", flagEmoji: "🇵🇭"),
    Country(name: "Pakistan", capital: "Islamabad", flagEmoji: "🇵🇰"),
    Country(name: "Iran", capital: "Tehran", flagEmoji: "🇮🇷"),
    Country(name: "Israel", capital: "Jerusalem", flagEmoji: "🇮🇱"),
    Country(name: "Saudi Arabia", capital: "Riyadh", flagEmoji: "🇸🇦"),
    Country(name: "United Arab Emirates", capital: "Abu Dhabi", flagEmoji: "🇦🇪"),
    Country(name: "Colombia", capital: "Bogotá", flagEmoji: "🇨🇴"),
    Country(name: "Peru", capital: "Lima", flagEmoji: "🇵🇪"),
    Country(name: "Chile", capital: "Santiago", flagEmoji: "🇨🇱"),
    Country(name: "Venezuela", capital: "Caracas", flagEmoji: "🇻🇪"),
    Country(name: "Nigeria", capital: "Abuja", flagEmoji: "🇳🇬"),
    Country(name: "Kenya", capital: "Nairobi", flagEmoji: "🇰🇪"),
    Country(name: "Morocco", capital: "Rabat", flagEmoji: "🇲🇦"),
    Country(name: "Ireland", capital: "Dublin", flagEmoji: "🇮🇪"),
    Country(name: "Croatia", capital: "Zagreb", flagEmoji: "🇭🇷"),
    Country(name: "Iceland", capital: "Reykjavík", flagEmoji: "🇮🇸"),
    Country(name: "Jamaica", capital: "Kingston", flagEmoji: "🇯🇲"),
    Country(name: "Cuba", capital: "Havana", flagEmoji: "🇨🇺"),
    Country(name: "Costa Rica", capital: "San José", flagEmoji: "🇨🇷")
]
