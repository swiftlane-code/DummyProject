//
//  ContentView.swift
//  DummyProject
//
//  Created by vmzhivetev on 29.05.2023.
//

import SwiftUI

struct DummyView: View {
	@State private var input: String = "42"
	@StateObject private var dummy = Dummy()
	
	var body: some View {
		VStack {
			Text("Result: \(dummy.result)")
				.font(.largeTitle)
				.padding()
			
			TextField("Enter a number", text: $input)
				.textFieldStyle(RoundedBorderTextFieldStyle())
				.multilineTextAlignment(.center)
				.font(.title)
				.padding()
			
			Spacer()
			
			Button(action: {
				if let number = Double(input) {
					dummy.add(number)
				}
			}) {
				Text("Add")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.blue)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
			
			Button(action: {
				if let number = Double(input) {
					dummy.subtract(number)
				}
			}) {
				Text("Subtract")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.red)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
			
			Button(action: {
				if let number = Double(input) {
					dummy.multiply(number)
				}
			}) {
				Text("Multiply")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.green)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
			
			Button(action: {
				if let number = Double(input) {
					do {
						try dummy.divide(number)
					} catch {
						print("Error: \(error.localizedDescription)")
					}
				}
			}) {
				Text("Divide")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.orange)
					.foregroundColor(.white)
					.cornerRadius(10)
					.padding(.horizontal)
			}
		}
		.padding()
	}
}

struct DummyView_Previews: PreviewProvider {
	static var previews: some View {
		DummyView()
	}
}

