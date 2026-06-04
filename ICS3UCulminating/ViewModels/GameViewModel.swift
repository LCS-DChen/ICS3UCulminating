//
//  GameViewModel.swift
//  ICS3UCulminating
//
//  Created by Gemini CLI on 2026-06-02.
//

import Foundation
import Observation

// ENUMS
enum GameMode {
    case flag
    case capital
}

// MODELS
struct Question {
    let country: Country
    let options: [String]
    let mode: GameMode
}

// VIEW MODEL
@Observable
class GameViewModel {
    
    // MARK: - Stored properties
    private var allCountriesList: [Country]
    private var usedCountries: [Country] = []
    var gameMode: GameMode = .flag
    var currentQuestion: Question?
    var score: Int = 0
    var streak: Int = 0
    var questionsAsked: Int = 0
    var isGameOver: Bool = false
    let maxQuestions: Int = 10
    
    // MARK: - Initializer
    init(countries: [Country] = allCountries) {
        self.allCountriesList = countries
    }
    
    // MARK: - Functions
    
    // Start or restart the game
    func startGame(mode: GameMode) {
        self.gameMode = mode
        self.score = 0
        self.streak = 0
        self.questionsAsked = 0
        self.isGameOver = false
        self.usedCountries = []
        generateQuestion()
    }
    
    // Generate a new question
    func generateQuestion() {
        guard questionsAsked < maxQuestions else {
            isGameOver = true
            return
        }
        
        // Pick a random country for the question that hasn't been used this round
        var correctCountry: Country?
        while correctCountry == nil {
            let candidate = allCountriesList.randomElement()!
            if !usedCountries.contains(where: { $0.id == candidate.id }) {
                correctCountry = candidate
            }
        }
        
        // Add to used list
        guard let finalCountry = correctCountry else { return }
        usedCountries.append(finalCountry)

        // Pick 3 random incorrect countries
        var distractors: [Country] = []
        while distractors.count < 3 {
            if let randomCountry = allCountriesList.randomElement(),
               randomCountry.id != finalCountry.id,
               !distractors.contains(where: { $0.id == randomCountry.id }) {
                distractors.append(randomCountry)
            }
        }

        // Prepare options based on game mode
        var options: [String] = []
        options.append(finalCountry.name)
        for distractor in distractors {
            options.append(distractor.name)
        }

        // Shuffle options so the correct one isn't always first
        options.shuffle()

        currentQuestion = Question(country: finalCountry, options: options, mode: gameMode)
        questionsAsked += 1

    }
    
    // Check if the selected answer is correct
    func checkAnswer(_ selectedOption: String) {
        guard let question = currentQuestion else { return }
        
        if selectedOption == question.country.name {
            // Correct answer
            score += 10
            streak += 1
            
            // Bonus for every 3 consecutive correct answers
            if streak % 3 == 0 {
                score += 5
            }
        } else {
            // Incorrect answer
            streak = 0
        }
        
        // Generate next question
        generateQuestion()
    }
    
    func restart() {
        startGame(mode: self.gameMode)
    }
}


