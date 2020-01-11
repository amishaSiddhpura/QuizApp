//
//  ViewController.swift
//  ProjectApp
//
//  Created by Amisha Siddhpura on 7/12/19.
//  Copyright © 2019 Amisha Siddhpura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let allQueList = QuestionFile();
    var pressed : Bool = true;
    var questionNo : Int = 0;
    var score: Int = 0;
    var questions = 20;
    var forProgress = 1;
    
   
    @IBOutlet weak var questionLabel: UILabel!
  
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabeel: UILabel!
   
    @IBOutlet weak var progressView: UIProgressView!
    

    @IBAction func trueFalseButton(_ sender: UIButton) {
        if(sender.tag==1){
            pressed = true;
        }
        else{
            pressed = false;
        }
        tocheckAnswer();
        forProgress = forProgress + 1
        questionNo = questionNo + 1;
        nextQuestion();
        updateProgressView(number: forProgress)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.layer.cornerRadius = 5
        progressView.clipsToBounds = true
        progressView.layer.sublayers![1].cornerRadius = 5
        progressView.subviews[1].clipsToBounds = true
        nextQuestion()
        
        // Do any additional setup after loading the view.
    }
    
    func updateQuestion() {
        
        scoreLabel.text = "Score: \(score)";
        progressLabeel.text = "\(questionNo+1)/20";
     
    }
    func nextQuestion() {
        if(questionNo <= 19){
            questionLabel.text = allQueList.list[questionNo].question
            
            updateQuestion();
        }
        else{
            
            let alert = UIAlertController(title: "Quiz Complete", message: "Your Score is : \(score)", preferredStyle: .alert);
            
            alert.addAction(UIAlertAction(title:"Restart", style: .default, handler: {(alert: UIAlertAction!) in self.startOver()}));
            
            self.present(alert, animated: true, completion: nil);
        }
    }

    func tocheckAnswer() {
        let correctAns = allQueList.list[questionNo].answer;
        if(correctAns == pressed){
            
        score += 1
            
        if(questionNo < 19){
            
                let alert = UIAlertController(title: "Correct Answer", message:"", preferredStyle: .alert)
                
                let imgTitle = UIImage(named:"correct")
                let imgViewTitle = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
                
                imgViewTitle.image = imgTitle
                
                alert.view.addSubview(imgViewTitle)
                
                present(alert, animated: true) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
                        guard self?.presentedViewController == alert else { return }
                        
                        self?.dismiss(animated: true, completion: nil)
                    }
                }
                //result.text = "Your answer is Correct.!"
            }
            
        }
            else{
                if(questionNo<19){
                    
                let alert = UIAlertController(title: "Incorrect Answer", message:"", preferredStyle: .alert)
                
                let imgTitle = UIImage(named:"wrong")
                let imgViewTitle = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
                
                imgViewTitle.image = imgTitle
                
                alert.view.addSubview(imgViewTitle)
                
                present(alert, animated: true) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
                        guard self?.presentedViewController == alert else { return }
                        
                        self?.dismiss(animated: true, completion: nil)
                    }
                }
            }
      
        }
        
    }
  
    
    func startOver() {
        forProgress = 1
        questionNo=0
        score = 0;
        updateProgressView(number: forProgress)
        updateQuestion();
        nextQuestion();
      
    }
    
    func updateProgressView(number:Int)
    {
        let updateProgress:Float = Float(number)/Float(questions)
        self.progressView.setProgress(updateProgress, animated: true)
    }

}

