//
//  GameOverView.swift
//  ICS3UCulminating
//
//  Created by Gemini CLI on 2026-06-02.
//

import SwiftUI

struct GameOverView: View {
    
    // MARK: - Stored properties
    var viewModel: GameViewModel
    @Environment(\.dismiss) var dismiss
    
    // MARK: - Computed properties
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            Text("Game Over!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 10) {
                Text("Your Final Score")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("\(viewModel.score)")
                    .font(.system(size: 80))
                    .fontWeight(.black)
                    .foregroundColor(.blue)
            }
            .padding()
            .background(Color.blue.opacity(0.1))
            .cornerRadius(20)
            
            Text(feedbackMessage)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                viewModel.restart()
                dismiss()
            }) {
                Text("Play Again")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            .padding(.horizontal, 40)
            
            Button(action: {
                dismiss()
                // In a real app, you might want to pop to root, 
                // but since this is a fullScreenCover, dismiss is fine.
            }) {
                Text("Back to Menu")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 20)
        }
    }
    
    var feedbackMessage: String {
        let percentage = Double(viewModel.score) / Double(viewModel.maxQuestions * 10)
        if percentage >= 0.9 {
            return "Amazing! You're a geography expert! 🌍🏆"
        } else if percentage >= 0.7 {
            return "Great job! You know your countries well! 👍"
        } else if percentage >= 0.5 {
            return "Not bad! Keep practicing to improve! 📚"
        } else {
            return "Keep learning! You'll get better next time! 💪"
        }
    }
}

#Preview {
    GameOverView(viewModel: GameViewModel())
}
