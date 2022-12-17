//
//  CoreDataBootcamp.swift
//  SwiftUIsection2
//
//  Created by Arun_Skyraan on 17/09/22.
//

import SwiftUI
import Foundation
import CoreData

class CoreDataViewModel : ObservableObject {
    
    let container : NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name: "DataContainer")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Error loading data. \(error)")
            }else {
                print("data loaded success")
            }
            
        }

    }
    
    func savaDetails(name : String) {
        let names = NameEntity(context: container.viewContext)

        names.name = name
        
        do {
            try container.viewContext.save()
        } catch {
            print("Failed to save. \(error)")
        }
    }
    
    func getAllDetails() -> [NameEntity] {
        let fetchRequest: NSFetchRequest<NameEntity> = NameEntity.fetchRequest()
        do {
            return try container.viewContext.fetch(fetchRequest)
        } catch {
            return[]
        }
    }
    
}



struct CoreDataBootcamp: View {
    
    
    @StateObject private var myObject = CoreDataViewModel()
    @State var name : String = ""
    
    var body: some View {
        VStack {
        TextField("enter name ", text: $name)
                .padding()
            Button(action: {
                myObject.savaDetails(name: name)
            }, label: {
                Text("Submit and see")
            })
            
            NavigationLink(destination: {
                CoreDataBootcamp1()
            }, label: {
                Text("Submit and see")
            })
        }
    }
}

struct CoreDataBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataBootcamp()
    }
}

//{
//    persistentContainer = NSPersistentContainer(name: "MyDataModel")
//    persistentContainer.loadPersistentStores { (description, error) in
//        if let error = error {
//            fatalError("Core Data Store failed \(error.localizedDescription)")
//        }
//    }
//}
