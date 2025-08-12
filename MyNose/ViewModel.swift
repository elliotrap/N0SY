//
//  ViewModel.swift
//  MyNose
//
//  Created by Elliot Rapp on 7/29/24.
//

import Foundation

import SwiftUI
import Combine

class FragranceViewModel: ObservableObject {
    
    @ObservedObject var variables = Oils.shared
    static var shared = FragranceViewModel()
    
    @Published var topNoteOils: [EssentialOil] = [
        ////        EssentialOil(name: "Basil", drops: 10),
        ////           EssentialOil(name: "Balm Mint Bush", drops: 15),
        ////           EssentialOil(name: "Bergamot", drops: 12),
        ////           EssentialOil(name: "Eucalyptus Globulus", drops: 20)
        ]
    @Published var middleNoteOils: [EssentialOil] = [
        ////        EssentialOil(name: "Basil", drops: 10),
        ////           EssentialOil(name: "Balm Mint Bush", drops: 15),
        ////           EssentialOil(name: "Bergamot", drops: 12),
        ////           EssentialOil(name: "Eucalyptus Globulus", drops: 20)
    ]
    @Published var baseNoteOils: [EssentialOil] = [
        ////        EssentialOil(name: "Basil", drops: 10),
        ////           EssentialOil(name: "Balm Mint Bush", drops: 15),
        ////           EssentialOil(name: "Bergamot", drops: 12),
        ////           EssentialOil(name: "Eucalyptus Globulus", drops: 20)
    ]


    func addTopNoteEntry() {
        guard !variables.topNoteOilName.isEmpty, let dropsInt = Int(variables.topNoteDrops) else { return }
        let newOil = EssentialOil(name: variables.topNoteOilName, drops: dropsInt)
        topNoteOils.append(newOil)
        variables.totalDropsTopNote += dropsInt
        variables.topNoteOilName = ""
        variables.topNoteDrops = ""
    }

    func addMiddleNoteEntry() {
        guard !variables.middleNoteOilName.isEmpty, let dropsInt = Int(variables.middleNoteDrops) else { return }
        let newOil = EssentialOil(name: variables.middleNoteOilName, drops: dropsInt)
        middleNoteOils.append(newOil)
        variables.totalDropsMiddleNote += dropsInt
        variables.middleNoteOilName = ""
        variables.middleNoteDrops = ""
    }

    func addBaseNoteEntry() {
        guard !variables.baseNoteOilName.isEmpty, let dropsInt = Int(variables.baseNoteDrops) else { return }
        let newOil = EssentialOil(name: variables.baseNoteOilName, drops: dropsInt)
        baseNoteOils.append(newOil)
        variables.totalDropsBaseNote += dropsInt
        variables.baseNoteOilName = ""
        variables.baseNoteDrops = ""
    }

    func deleteEntry(_ oil: EssentialOil, fromNoteType noteType: NoteType) {
        switch noteType {
        case .top:
            if let index = topNoteOils.firstIndex(where: { $0.id == oil.id }) {
                variables.totalDropsTopNote -= topNoteOils[index].drops
                topNoteOils.remove(at: index)
            }
        case .middle:
            if let index = middleNoteOils.firstIndex(where: { $0.id == oil.id }) {
                variables.totalDropsMiddleNote -= middleNoteOils[index].drops
                middleNoteOils.remove(at: index)
            }
        case .base:
            if let index = baseNoteOils.firstIndex(where: { $0.id == oil.id }) {
                variables.totalDropsBaseNote -= baseNoteOils[index].drops

                baseNoteOils.remove(at: index)
            }
        }
    }
    
    func copyRecipeToClipboard(nameOfFragrance: String) {
        let topNotes = topNoteOils.map { "\($0.name): \($0.drops) drops" }.joined(separator: "\\line ")
        let middleNotes = middleNoteOils.map { "\($0.name): \($0.drops) drops" }.joined(separator: "\\line ")
        let baseNotes = baseNoteOils.map { "\($0.name): \($0.drops) drops" }.joined(separator: "\\line ")

        let rtfString = """
        {\\rtf1\\ansi
        {\\b\\fs36 \(nameOfFragrance)}\\line\\line
        {\\b\\fs28 Top Notes:}\\line
        \(topNotes)\\line\\line
        Total Top Drops: \(variables.totalDropsTopNote)\\line\\line
        {\\b\\fs28 Middle Notes:}\\line
        \(middleNotes)\\line\\line
        Total Middle Drops: \(variables.totalDropsMiddleNote)\\line\\line
        {\\b\\fs28 Base Notes:}\\line
        \(baseNotes)\\line\\line
        Total Base Drops: \(variables.totalDropsBaseNote)
        }
        """

        if let data = rtfString.data(using: .utf8) {
            UIPasteboard.general.setData(data, forPasteboardType: "public.rtf")
        }
    }
}



enum NoteType {
    case top, middle, base
}

struct EssentialOil: Identifiable {
    let id = UUID()
    let name: String
    let drops: Int
}
