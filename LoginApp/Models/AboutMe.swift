//
//  AboutMe.swift
//  LoginApp
//
//  Created by Khusain on 03.04.2023.
//

struct User {
    let login: String
    let password: String
    let greet: String
    let person: Person
    
    static func getUser() -> User {
         User(
            login: "User",
            password: "Password",
            greet: "Алексей",
            person: Person(
                name: "Хусейн",
                surname: "Пахаев",
                age: 24,
                photo: "myPhoto",
                bio: "Родился в 1998 году. Окончил школу в 2015 году, отучился на бакалавра с 2015 по 2019 гг. магистратуру окончил в 2021 году. Учился в школе программирования школа-21 (2020-2021). Занимался веб-разработкой. Работал то тут, то там.",
                haveCat: true,
                whatAmIDoingNow: "Работаю",
                whyAmIWorking: "Чтобы зарабатывать",
                hobbies: [
                    Hobbies(title: "Автотюнинг", duration: "Нет предела совершенству, вот и я стараюсь совершенствовать каждые выходные свою 'ласточку'"),
                    Hobbies(title: "Игра на гитаре", duration: "Забросил пару лет назад"),
                    Hobbies(title: "Занятия спортом", duration: "Пару раз в неделю")
                ]
            )
         )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let photo: String
    let bio: String
    let haveCat: Bool
    let whatAmIDoingNow: String
    let whyAmIWorking: String
    let hobbies: [Hobbies]
}

struct Hobbies {
    let title: String
    let duration: String
}
