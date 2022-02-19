//
//  SharingPersons.swift
//  chan8786_a3
//
//  Created by Jonatham Chang on 2022-02-17.
//

import Foundation

class SharingPersons {
    static let sharedPersons = SharingPersons() // Making a singleton
    var personCollection : PersonCollection? // this is the Person Collection we work with
    var plistURL : URL {
        let documentDirectoryURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        return documentDirectoryURL.appendingPathComponent("thePerson.plist")
    }
    
// method to save the person collection to a file

    func savePersonCollection(){
    }
    
// method to restore the person collection from a file
    func restorePersonCollection(){
    }


    
}
