//
//  Profile.swift
//  loginApp
//
//  Created by user on 05.07.2022.
//


struct User {
    let username: String
    let password: String
    
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "Jeremy",
            password: "Password",
            person: Person(
                dateOfBirth: "28.06.1995",
                name: "Vladimir Proshchin",
                job: "Scrum Master",
                company: "Alfa Bank",
                hobbies: [.skateBoarding, .softwareDevelopment, .gameDevelopment],
                learningGoal: "To become a better Scrum Master",
                image: "cat.jpeg"
            )
        )
    }
}


struct Person {
    let dateOfBirth: String
    let name: String
    let job: String
    let company: String
    let hobbies: [Hobby]
    let learningGoal: String
    let image: String
    
    
}

enum Hobby: String {
    case skateBoarding = "🛹 Skateboarding"
    case softwareDevelopment = "📱 Sowtware development"
    case gameDevelopment = "🪬 Game development"
}
