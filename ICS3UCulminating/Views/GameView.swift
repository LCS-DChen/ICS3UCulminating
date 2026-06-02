//
//  GameView.swift
//  ICS3UCulminating
//
//  Created by Gemini CLI on 2026-06-02.
//

import SwiftUI

struct GameView: View {
    
    // MARK: - Stored properties
    var viewModel: GameViewModel
    
    // MARK: - Computed properties
    var body: some View {
        VStack(spacing: 30) {
            // Header: Score and Progress
            HStack {
                VStack(alignment: .leading) {
                    Text("Score: \(viewModel.score)")
                        .font(.headline)
                    Text("Streak: \(viewModel.streak) 🔥")
                        .font(.subheadline)
                        .foregroundColor(viewModel.streak > 0 ? .orange : .gray)
                }
                Spacer()
                Text("Question \(viewModel.questionsAsked)/\(viewModel.maxQuestions)")
                    .font(.headline)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            
            Spacer()
            
            // Question Area
            if let question = viewModel.currentQuestion {
                VStack(spacing: 20) {
                    if question.mode == .flag {
                        Text(question.country.flagEmoji)
                            .font(.system(size: 100))
                            .shadow(radius: 5)
                        Text("Which country does this flag belong to?")
                            .font(.title3)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                    } else {
                        Text(question.country.capital)
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text("is the capital of which country?")
                            .font(.title3)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                    }
                }
                .padding()
                
                Spacer()
                
                // Options Area
                VStack(spacing: 15) {
                    ForEach(question.options, id: \.self) { option in
                        Button(action: {
                            withAnimation {
                                viewModel.checkAnswer(option)
                            }
                        }) {
                            Text(option)
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.1))
                                .foregroundColor(.blue)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 2)
                                )
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .navigationTitle("Guess the Country")
        .navigationBarTitleDisplayMode(.inline)
        .fullScreenCover(isPresented: Binding(
            get: { viewModel.isGameOver },
            set: { viewModel.isGameOver = $0 }
        )) {
            GameOverView(viewModel: viewModel)
        }
    }
}

#Preview {
    GameView(viewModel: GameViewModel())
}
