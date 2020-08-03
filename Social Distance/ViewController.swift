//
//  ViewController.swift
//  Social Distance
//
//  Created by Alex Baratti on 8/2/20.
//  Copyright © 2020 Alex Baratti. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet weak var arSceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        arSceneView.session.run(ARWorldTrackingConfiguration()) // Track the world
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        arSceneView.session.pause() // Stop tracking world to save on resources
    }

}

