//
//  ContentView.swift
//  Grader3
//
//  Created by Imelda Yoon on 12/10/23.
//

import SwiftUI

struct Applicant: Identifiable  {
    var id = UUID().uuidString
    var firstName = ""
    var lastName = ""
}
extension Applicant {
    static let examples = [
        Applicant(firstName: "Josie", lastName: "Jenkins"),
    Applicant(firstName: "Tracy", lastName: "Muns"),
    Applicant(firstName: "Bobby", lastName: "Smith"),
    ]
}
struct ApplicantEditView: View {
    let applicant: Applicant
    var save: (Applicant)->()
    var delete: (Applicant)->()
    
    @State private var vm = Applicant()
    @Environment(\.dismiss) var dismiss
    var body: some View{
        List {
            TextField("First Name", text: $vm.firstName)
            TextField("Last Name", text: $vm.lastName)
            Button(action: {
                save(vm)
                dismiss()
            }, label: {
                Text("SAVE")
            })
            Button(role: .destructive, action: {
                delete(vm)
                dismiss()
            }, label: {
                Text("DELETE")
            })
        }
        .buttonStyle(.bordered)
        .onAppear{
            vm = applicant
        }
    }
}

struct ContentView: View {
    @State private var applicants = Applicant.examples
    @State private var showSheet = false
    
    private func add(_ applicant: Applicant){
        applicants.append(applicant)
    }
    private func update(_ applicant: Applicant){
        guard let index = applicants.firstIndex(where: {$0.id == applicant.id}) else {
        return
        }
        applicants[index] = applicant
    }
    private func delete(_ applicant: Applicant){
        guard let index = applicants.firstIndex(where: {$0.id == applicant.id}) else {
        return
        }
        applicants.remove(at: index)
    }
    var body: some View {
        NavigationStack {
            List {
                ForEach(applicants) {applicant in
                    NavigationLink {
                        ApplicantEditView(applicant: applicant, save: update, delete: delete)
                    } label: {
                        Text("\(applicant.lastName), \(applicant.firstName)")
                    }

                    
                }
            }
            .navigationTitle("Applicants")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                Button {
                    showSheet = true
                } label: {
                    Text("add")
                }
            }
            .sheet(isPresented: $showSheet, content: {
                ApplicantEditView(applicant: Applicant(), save: add, delete: {_ in})
            })
        }
    }
    
}

#Preview {
    ContentView()
}
