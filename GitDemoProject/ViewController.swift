//
//  ViewController.swift
//  GitDemoProject
//
//  Created by Poonam Negi on 24/05/20.
//  Copyright © 2020 Poonam Negi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    var increment:Int = 0{
        didSet{
            counter += 1
            print("now i am changed\(counter)")
        }
        willSet{
            print("i am going to change \(counter)")
        }
    }
    
    var result: Int{
        get{
            return counter
        }
        set{
            counter = newValue
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print("Welcome to my master branch")
        print("counter :  \(counter)")
        print("result :  \(result)")
        print("counter after result called:  \(counter)")
        increment = 1
        print("counter :  \(counter)")
        print("Increment :  \(increment)")
        print("counter after increment:  \(counter)")
           increment = 5
        print("counter :  \(counter)")
        print("Increment :  \(increment)")
        print("counter after Increment:  \(counter)")
        
        result = 20
          print("counter after result set 20:  \(counter)")
        
    }

    
    
    func networkingCall(){
        let dataTask = URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.com/posts")!) { (data, response, error) in
            if let error = error{
                print(error)
                return
            }
            
            guard let data = data else {print("not data"); return}
                print(data)
            
        }
        
    }

}

