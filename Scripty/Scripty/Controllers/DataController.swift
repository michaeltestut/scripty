//
//  DataController.swift
//  Scripty
//
//  Created by Michael Testut on 2/3/23.
//
import CoreData
import Foundation

class DataController:ObservableObject{
    let container = NSPersistentContainer(name:"ActingSceneModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}


