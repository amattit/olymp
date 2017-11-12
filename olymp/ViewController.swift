//
//  ViewController.swift
//  olymp
//
//  Created by Mikhail Seregin on 12.11.2017.
//  Copyright © 2017 Mikhail Seregin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var shapeView: ShapeView!
    
    var botShapeView:[BotShapeView] = []
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("start complete")
        
        for _ in 0...10 {
            
            let location = CGPoint(x: Double(arc4random_uniform(300)), y: Double(arc4random_uniform(600)))
            
            let bot = BotShapeView(frame: CGRect(x: location.x, y: location.y, width: 30, height: 30))
            bot.layer.cornerRadius = bot.radius
            bot.backgroundColor = UIColor.red
            
            botShapeView.append(bot)
            
        }
        
        for bot in botShapeView {
            
            
            self.view.addSubview(bot)
            
        }
        
        
        
//        createPanGestureRecognizer(targetView: shapeView)
//        shapeView.backgroundColor = UIColor.yellow
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

