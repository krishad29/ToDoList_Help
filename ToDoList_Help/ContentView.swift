//
//  ContentView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the root UI**

import SwiftUI

struct ContentView: View {
    
    //In Iteration 2, add @Environment here
    @State var toDoItems: [ ToDoItem ] = []
    //Add a State property called toDoItems that holds an empty array of ToDoItems
    
    //Add a State property called showNewTask that is set to false
    @State private var showNewTask = false
    
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .fontWeight(.bold)
                    .font(.system(size:40))
                
                //Add a Text View containing the string "ToDoList" and modifiers here
            
                //Add a Spacer here
                Spacer()
                
                //Add a Button here with Text("+") and delete any code in the action
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .font(.largeTitle)
                }
                
            }
            
            //Add a padding modifier here
            .padding()
            
            List{
                ForEach(toDoItems){toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                    
                }
            }
            
            //Add a Spacer here
            
            //Add a List View here
                //In Iteration 1, delte the Text View and add an if statement inside the list view that indicates to add !! to ToDoItems that are marked important
                    //In Iteration 2, add optionals to the Text views in the if statement
                        //In Iteration 2, add the onDelete modifier before the closing bracket of the For Each statement
            if showNewTask {
                NewToDoView(title: "",
                            isImportant: false, toDoItems:$toDoItems, showNewTask: $showNewTask)
                
            }
        }
        
        //Add an if statement here that indicates if showNewTask is true, then NewToDoView will be displayed
            //In Iteration 1, bind toDoItems: $toDoItems in this if statement
            //In Iteration 1, bind showNewTask: $showNewTask in this if statement
            //In Iteration 2, delete the toDoItems: $toDoItems binding


    }
    //In Iteration 2, add the deleteTask function here

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
