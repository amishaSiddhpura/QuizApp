//
//  QuestionFile.swift
//  ProjectApp
//
//  Created by Amisha Siddhpura on 7/18/19.
//  Copyright © 2019 Amisha Siddhpura. All rights reserved.
//

import Foundation

class QuestionFile{
    var list = [Question]();
    
    init(){
        
        let item = Question(givenQuestion: "Albert Einstein was awarded the Nobel Prize in Physics.",givenAns: true)
        list.append(item)
        
        list.append(Question(givenQuestion: "“Paprika” is the Hungarian word for “pepper.”", givenAns: true))
        
        list.append(Question(givenQuestion: "The American Civil War ended in 1776.", givenAns: false))
        
        list.append(Question(givenQuestion: "The total surface area of two human lungs is approximately 70 square metres.", givenAns: true))
        
        list.append(Question(givenQuestion: "The largest planet in our solar system is Neptune.", givenAns: false))
        
        list.append(Question(givenQuestion: "The world’s tallest living man is 251cm / 8 ft 3 in. (9th February 2011)", givenAns: true))
        
        list.append(Question(givenQuestion: "The most expensive car number plate, showing only the number ‘1’, was bought in the United Arab Emirates for 52.2 million dirham, the approximate equivalent of £7.2 million. (16th February 2008).", givenAns: true))
        
        list.append(Question(givenQuestion: "The record for the longest rail tunnel is held by the Channel Tunnel between Britain and France. (15th October 2010)", givenAns: false))
        
        list.append(Question(givenQuestion: "Michael Jackson had a pet python called ‘Crusher’.", givenAns: true))
        
        list.append(Question(givenQuestion: "111,111,111 x 111,111,111 = 12,345,678,987,654,321", givenAns: true))
        
        list.append(Question(givenQuestion: "The world’s smallest book is 1cm wide, 1cm tall and 4mm deep.", givenAns: false))
        
        list.append(Question(givenQuestion: "No piece of square dry paper can be folded in half more than 7 times.", givenAns: false))
        
        list.append(Question(givenQuestion: "A right triangle can never be equilateral.", givenAns: true))
        
        list.append(Question(givenQuestion: " Brazil is the only country in the Americas whose official language is Portuguese.", givenAns: true))
        
        list.append(Question(givenQuestion: "Thomas Jefferson was the second president of the United States..", givenAns: false))
        list.append(Question(givenQuestion: "No bird can fly backwards..", givenAns: false))
        list.append(Question(givenQuestion: "The word “can’t” is an example of a contraction.",givenAns: true))
        list.append(Question(givenQuestion: "Hot water freezes faster than cold water.", givenAns: true))
        list.append(Question(givenQuestion: "The U.S. Supreme court is made up of 12 judges.", givenAns: false))
        list.append(Question(givenQuestion: "The Bible book of Acts was written by Luke.", givenAns: true))
           }
    
}
