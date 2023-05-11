//
//  Persons.swift
//  LoginApp
//
//  Created by Сергей Поляков on 10.05.2023.
//

struct User {
    let user: String
    let password: String
    let person: Person
    let educationProgress: [Lesson]
    
    static func getUser() -> User {
        User(
            user: "user",
            password: "password",
            person:
                Person(
                    name: "Sergey",
                    surname: "Polyakov",
                    sex: "Male",
                    age: 39,
                    job: "Neopark",
                    hobby: "Snowboard"
                ),
            educationProgress:
                [
                    Lesson(
                        title: "1. Основы программирования на Swift",
                        total: 10,
                        done: 10
                    ),
                    Lesson(
                        title: "2. Работа с пользовательским интерфейсом UIKit",
                        total: 14,
                        done: 7
                    ),
                    Lesson(
                        title: "3. Работа с данными и сетью",
                        total: 8,
                        done: 0
                    ),
                    Lesson(
                        title: "4. SwiftUI",
                        total: 7,
                        done: 0
                    ),
                    Lesson(
                        title: "5. Архитектурные паттерны",
                        total: 8,
                        done: 0
                    )
                ]
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let sex: String
    let age: Int
    let job: String
    let hobby: String
    
    var photo: String {
        "\(name)\(surname)"
    }
    var fullname: String {
        "\(name) \(surname)"
    }
}

struct Lesson {
    let title: String
    let total: Int
    let done: Int
    
    var description: String {
        "\(done)/\(total)"
    }
}

