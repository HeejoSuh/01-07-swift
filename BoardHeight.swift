//
//  BoardHeight.swift
//  Program that has a function called BoardFoot, that has 2 parameters, the length and the width.
// It will then calculate the height, so that the result is exactly 1 board foot and return that value.
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//

import Foundation


//-------------------
class BoardHeight {

	var width: Float?
	var length: Float?
	var height: Float?
	
	//------------------
	init() { 
	//get input
	width = (getNumericalInput(askWhat: "width"))
	length = (getNumericalInput(askWhat: "length"))
	
	BoardFoot(w: width!, l: length!)
	}
	//------------------
    func BoardFoot(w: Float, l: Float) {
    //calculate height so result is 1 board foot
        // height= volume / (width x length)
		height = 144/(l*w);
    	print("The height should be \(height!) inches.");
    }
    
    //------------------
    func getNumericalInput(askWhat: String) -> Float {
    //Gets the input from the user
    	
		var input: String? 
    	while true {
			print("Insert the length of the \(askWhat) in inches : ")
   			input = readLine(strippingNewline: true)
			//check if input is a number
			if let inputNumber = Float(input!){
				return inputNumber
			}else{
				//not an integer
				print("Try again with a number!")
			}
		}
    }
}


//have to actually use the class

let getHeight = BoardHeight()