//
//  ViewController.swift
//  TransitionView
//
//  Created by 五島甫 on 2018/07/18.
//  Copyright © 2018年 Hajime Goshima. All rights reserved.
//

import UIKit

class TransitionDefaultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "transitionSegue", sender: nil)
    }
    @IBAction func onButtonTapTwo(_ sender: Any) {
        // let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "targetView")
        
        let storyboard: UIStoryboard = self.storyboard!
        let controller = storyboard.instantiateViewController(withIdentifier: "targetView")
        
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

