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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        arSceneView.session.run(ARWorldTrackingConfiguration()) // Track the world
        renderSocialDistanceRing()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        arSceneView.session.pause() // Stop tracking world to save on resources
    }
    
    func renderSocialDistanceRing() {
        let ring = SCNTorus(ringRadius: 1.83, pipeRadius: 0.01)
        ring.materials[0].diffuse.contents = UIColor.blue
        let node = SCNNode()
        let scene = SCNScene()
        
        node.geometry = ring
        node.position = SCNVector3(0,-1.5,0)
        
        scene.rootNode.addChildNode(node)
        arSceneView.scene = scene
    }

}

