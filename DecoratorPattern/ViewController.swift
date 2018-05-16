//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by kuanhuachen on 2018/5/16.
//  Copyright © 2018年 athemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let m4a1AttackPoint = PubgPlayerManager().M4A1Level1VestPlayer().attackPoint()
        
        print (" @@@@@ ", PubgPlayerManager().AK47Level1VestPlayer().attackPoint(), m4a1AttackPoint)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

