//
//  SCNNode+Extensions.swift
//  HomeMax
//
//  Created by Arun Rathore on 08/08/2023.
//

import SceneKit

extension SCNScene {
    /// Add AR models from SCNAssets from specified assets name
    func addContentFromAssets(named name : Assets) -> SCNScene {
        let assetsURL = "Art.scnassets/" + "\(name.rawValue)"+".scn"
        let scene = SCNScene(named: assetsURL)!
        return scene
    }
}
