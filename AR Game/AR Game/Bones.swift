//
//  Bones.swift
//  AR Game
//
//  Created by Stefan on 2023-05-16.
//

import Foundation

enum Bones: CaseIterable {
    case leftShoulderToLeftArm
    case leftArmToLeftForearm
    case leftForearmToLeftHand
    
    case rightShoulderToRightArm
    case rightArmToRightForearm
    case rightForearmToRightHand
    
    case spine7ToLeftShoulder
    case spine7ToRightShoulder
    
    case neck1ToSpine7
    case spine7ToSpine6
    case spine6ToSpine5
    
    case hipsToLeftUpLeg
    case leftUpLegToLeftLeg
    case leftLegToLeftFoot
    
    case hipsToRightUpLeg
    case rightUpLegToRightLeg
    case rightLegToRightFoot
    
    var name: String {
        return "\(self.jointFromName)-\(self.jointToName)"
    }
    
    var jointFromName: String {
        switch self {
        case .leftShoulderToLeftArm:
            return "left_shoulder_1_joint"
        case .leftArmToLeftForearm:
            return "left_arm_joint"
        case .leftForearmToLeftHand:
            return "left_forearm_joint"
            
        case .rightShoulderToRightArm:
            return "right_shoulder_1_joint"
        case .rightArmToRightForearm:
            return "right_arm_joint"
        case .rightForearmToRightHand:
            return "right_forearm_joint"
            
        case .spine7ToLeftShoulder:
            return "spine_7_joint"
        case .spine7ToRightShoulder:
            return "spine_7_joint"
            
        case .neck1ToSpine7:
            return "neck_1_joint"
        case .spine7ToSpine6:
            return "spine_7_joint"
        case .spine6ToSpine5:
            return "spine_6_joint"
            
        case .hipsToLeftUpLeg:
            return "hips_joint"
        case .leftUpLegToLeftLeg:
            return "left_upLeg_joint"
        case .leftLegToLeftFoot:
            return "left_leg_joint"
        
        case .hipsToRightUpLeg:
            return "hips_joint"
        case .rightUpLegToRightLeg:
            return "right_upLeg_joint"
        case .rightLegToRightFoot:
            return "right_upLeg_joint"
        }
    }
    
    var jointToName: String {
        switch self {
        case .leftShoulderToLeftArm:
            return "left_arm_joint"
        case .leftArmToLeftForearm:
            return "left_forearm_joint"
        case .leftForearmToLeftHand:
            return "left_hand_joint"
            
        case .rightShoulderToRightArm:
            return "right_shoulder_1_joint"
        case .rightArmToRightForearm:
            return "right_arm_joint"
        case .rightForearmToRightHand:
            return "right_forearm_joint"
            
        case .spine7ToLeftShoulder:
            return "spine_7_joint"
        case .spine7ToRightShoulder:
            return "spine_7_joint"
            
        case .neck1ToSpine7:
            return "neck_1_joint"
        case .spine7ToSpine6:
            return "spine_7_joint"
        case .spine6ToSpine5:
            return "spine_6_joint"
            
        case .hipsToLeftUpLeg:
            return "hips_joint"
        case .leftUpLegToLeftLeg:
            return "left_upLeg_joint"
        case .leftLegToLeftFoot:
            return "left_leg_joint"
        
        case .hipsToRightUpLeg:
            return "hips_joint"
        case .rightUpLegToRightLeg:
            return "right_upLeg_joint"
        case .rightLegToRightFoot:
            return "right_upLeg_joint"
        }
    }
}
