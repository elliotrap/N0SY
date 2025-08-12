//
//  CrossAppVariables.swift
//  MyNose
//
//  Created by Elliot Rapp on 7/24/24.
//

import Foundation

class Oils: ObservableObject {
    static var shared = Oils()
    
    @Published var desiredTopDrops: Double = 0
    @Published var desiredMiddleDrops: Double = 0
    @Published var desiredBaseDrops: Double = 0
    
    @Published var actualTopPercentage: Double = 0
    @Published var actualMiddlePercentage: Double = 0
    @Published var actualBasePercentage: Double = 0
    
    @Published var topNoteOilName: String = ""
    @Published var middleNoteOilName: String = ""
    @Published var baseNoteOilName: String = ""

    @Published var totalDrops: String = ""

    
    @Published var topNoteDrops: String = ""
    @Published var middleNoteDrops: String = ""
    @Published var baseNoteDrops: String = ""
    
    @Published var totalDropsTopNote: Int = 0
    @Published var totalDropsMiddleNote: Int = 0
    @Published var totalDropsBaseNote: Int = 0

}
