//
//  Person.swift
//  chan8786_a3
//
//  Created by Jonatham Chang on 2022-02-17.
//

import Foundation
import UIKit

class Person:Codable {

    let image: UIImage? // we need to make UIImage Codable
    let name: String
    let bio: String

    // We need the init function for this custom Person object
    init?(image: UIImage?, name: String, bio: String){
        guard !name.isEmpty else {
            return nil
        }
        guard !bio.isEmpty else {
            return nil
        }
    
        self.image = image
        self.name = name
        self.bio = bio
    } //init?
    
    //MARK: Codable functions
    public enum CodingKeys: String, CodingKey {

        case image // we want to encode the photo property
        case name
        case bio
    }

    required init(from decoder: Decoder) throws {

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // decoding the image property of the object
        let imageData = try container.decode(Data.self, forKey: .image)
        self.image = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(imageData) as? UIImage
       

        // decoding the name property
        let nameData = try container.decode(Data.self, forKey: .name)
        self.name = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(nameData) as? String ?? "no name"
        let bioData = try container.decode(Data.self, forKey: .bio)
        self.bio = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(bioData) as? String ?? "no bio"

    } // decoder
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        let imageData = try NSKeyedArchiver.archivedData(withRootObject: image ?? UIImage(named: "question-mark.jpg")!, requiringSecureCoding: true)
        try container.encode(imageData, forKey: .image)
        let nameData = try NSKeyedArchiver.archivedData(withRootObject: name, requiringSecureCoding: true)
        try container.encode(nameData, forKey: .name)
        let bioData = try NSKeyedArchiver.archivedData(withRootObject: bio, requiringSecureCoding: true)
        try container.encode(bioData, forKey: .bio)
    }
} // Person
