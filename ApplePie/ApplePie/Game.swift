//
//  AppDelegate.swift
//  ApplePie
//
//  Created by Prince vasoya on 3/20/24.


import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaing: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        
        if !word.contains(letter) {
            incorrectMovesRemaing -= 1
        }
    }
}
