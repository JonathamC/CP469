//
//  PersonLIst.swift
//  chan8786_a3
//
//  Created by Jonatham Chang on 2022-02-17.
//

import Foundation

import UIKit
class PersonCollection: Codable{

    var list = [Person]()

    var current:Int  // index to the current person in PersonCollection

    static let UNKNOWN_PERSON = Person(image: UIImage(named: "question-mark.jpeg"), name: "Name unknown", bio: "No bio")

   

    init() {

        current = 0;

    }

// helper functions

}
