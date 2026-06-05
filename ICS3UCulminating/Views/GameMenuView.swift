//
//  GameMenuView.swift
//  ICS3UCulminating
//
//  Created by Gemini CLI on 2026-06-02.
//

import SwiftUI

struct GameMenuView: View {
    
    // MARK: - Stored properties
    @State private var viewModel = GameViewModel()
    @State private var showGame = false
    
    // MARK: - Computed properties
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Text("Flag / Capital Guess")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text("Identify the country from its flag or capital city!")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                VStack(spacing: 20) {
                    Button(action: {
                        viewModel.startGame(mode: .flag)
                        showGame = true
                    }) {
                        MenuButtonLabel(title: "Flag Guess Mode", icon: "flag.fill", color: .blue)
                    }
                    
                    Button(action: {
                        viewModel.startGame(mode: .capital)
                        showGame = true
                    }) {
                        MenuButtonLabel(title: "Capital Guess Mode", icon: "building.columns.fill", color: .purple)
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding(.top, 50)
            .navigationDestination(isPresented: $showGame) {
                GameView(viewModel: viewModel)
            }
        }
    }
}

struct MenuButtonLabel: View {
    let title: String
    let icon: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title2)
            Text(title)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(color)
        .foregroundColor(.white)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

#Preview {
GameMenuView()
}
