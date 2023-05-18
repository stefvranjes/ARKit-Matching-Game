//
//  ARViewContainer.swift
//  AR Game
//
//  Created by Stefan on 2023-05-16.
//

import SwiftUI
import ARKit
import RealityKit

private var bodySkeleton: BodySkeleton?
private let bodySkeletonAnchor = AnchorEntity()

struct ARViewContainer: UIViewRepresentable {
    typealias UIViewType = ARView
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
        let piecesAnchor = try! Gameplay.loadPieces()
        
        arView.setupForBodyTracking()
        arView.scene.addAnchor(bodySkeletonAnchor)
        arView.scene.anchors.append(piecesAnchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
}

extension ARView: ARSessionDelegate {
    func setupForBodyTracking() {
        let configuration = ARBodyTrackingConfiguration()
        self.session.run(configuration)
        
        self.session.delegate = self
    }
    
    public func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        for anchor in anchors {
            if let bodyAnchor = anchor as? ARBodyAnchor {
                if let skeleton = bodySkeleton {
                    skeleton.update(with: bodyAnchor)
                } else {
                    bodySkeleton = BodySkeleton(for: bodyAnchor)
                    bodySkeletonAnchor.addChild(bodySkeleton!)
                }
            }
        }
    }
}
