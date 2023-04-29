//
//  Pet.swift
//  PetHouse
//
//  Created by 65 on 29.04.2023.
//

struct Pet {
    let nickname: String
    let breed: String
    let photo: String
    
    static func getPetList() -> [Pet] {
        [
            Pet(nickname: "Шарик", breed: "Сибирский", photo: "sharik"),
            Pet(nickname: "Барсик", breed: "Британский", photo: "барсик")
            
        ]
    }
}
