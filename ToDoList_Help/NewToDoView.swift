//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    //In Iteration 2, add @Environment here
    
    //Add a State property called title that will hold a String
    @State var title: String
    //Add a State property called isImportant that will hold a Boolean
    @State var isImportant: Bool
    
    //Bind the ToDoItems array here
        //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    
    var body: some View {
        VStack {
            //Add Text View containing "Task title" here
            Text("Task Title")
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
                .frame(width: 0.0, height: 60.0)
            
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            TextField("Enter the task description", text: $title)
                .padding(.leading)
            
                .frame(width: 300.0, height: 50.0)
                .border(Color.gray, width: 1)

            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            Toggle(isOn: $isImportant) {
                Text("Is it Important?")
            }
            .padding(50)
            //Add a padding modifier
            
            //Add Button here, delete any code in the action and with the text "Add"
            Button(action: {
                
            }){
                Text("Add")
                
            }
            
            //Add a padding modifier
            .padding()
            .frame(width: 100.0, height: 35.0)
            .background(.blue)
            .cornerRadius(30)
            .foregroundColor(.white)
          
        }
    }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
            //Add toDoItems: .constant([]) here (Iteration 1)
            //Add showNewTask: .constant(true) (Iteration 1)
            //Delete toDoItems: .constant([]) (Iteration 2_


        
    }
}
