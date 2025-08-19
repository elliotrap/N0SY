//
//  ContentView.swift
//  MyNose
//
//  Created by Elliot Rapp on 7/24/24.
//

import SwiftUI

struct ContentView: View {
//    init() {
//        for familyName in UIFont.familyNames {
//            print(familyName)
//
//            for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                print("-- \(fontName)}")
//            }
//        }
//    }
    @ObservedObject var variables = Oils.shared

    @ObservedObject var viewModel = FragranceViewModel.shared

    @State private var nameFragranceScreen = true
    
    @State private var nameOfFragrance: String = {
        let df = DateFormatter()
        df.dateStyle = .medium   // e.g., Aug 13, 2025
        df.timeStyle = .none
        return df.string(from: Date())
    }()

    @State private var fontNames: [String] = []
    
    @State private var topLeaning = false
    
    @State private var middleLeaning = true
    
    @State private var bottomLeaning = false
    @FocusState private var isTotalDropsFocused: Bool
    
    


    var body: some View {
        

        ZStack {

            Rectangle()
                .foregroundColor(Color("softPink"))
                .opacity(0.6)
                .frame(width: 700)
            

            ScrollView(showsIndicators: false) {

        
                VStack {
                    
                    HStack {
                        Spacer()
                            .frame(width: 5)
                        if nameFragranceScreen {
                            // put this code in a struct and i'll call it here.
                            VStack {
                                Spacer()
                                    .frame(height: 90)
                                ZStack {
                                    HStack {
                                        Spacer()
                                            .frame(width: 10)
                                        VStack {
                                            Spacer()
                                                .frame(height: 10)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .frame(width: 255, height: 55)
                                                    .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                                                
                                                
                                                Rectangle()
                                                    .foregroundColor(.gray)
                                                    .frame(width: 250, height: 50)
                                                    .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                                                
                                            }
                                        }
                                    }
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width: 255, height: 55)
                                            .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                                        
                                        
                                        Rectangle()
                                            .foregroundColor(.gray)
                                            .frame(width: 250, height: 50)
                                            .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                                        
                                        Text("N   O   S   Y")
                                            .font(.custom("BeVietnamPro-Light", size: 30))
                                        
                                            .padding()
                                        HStack {
                                            Spacer()
                                                .frame(width: 13)
                                            VStack {
                                                Spacer()
                                                    .frame(height: 4)
                                                
                                                ZStack {
                                                    Text("N   O   S   Y")
                                                        .font(.custom("BeVietnamPro-Light", size: 30))
                                                        .padding()
                                                    
                                                    
                                                }
                                            }
                                        }
                                    }
                                }
                                .padding(.bottom, 40)
                                .scaleEffect(1.2)

                                ZStack {
                                    VStack(spacing: 20) {
                                        VStack {
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .frame(width: 355, height: 155)
                                                    .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))
                                                
                                                
                                                Rectangle()
                                                    .foregroundColor(.gray)
                                                    .frame(width: 350, height: 150)
                                                    .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))
                                                
                                                HStack {
                                                    
                                                    VStack {
                                                        
                                                        ZStack {
                                                            Rectangle()
                                                                .foregroundColor(.black)
                                                                .frame(width: 355, height: 155)
                                                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))
                                                            
                                                            Rectangle()
                                                                .foregroundColor(.gray)
                                                                .frame(width: 350, height: 150)
                                                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))
                                                            
                                                            
                                                        }
                                                        Spacer()
                                                            .frame(height: 15)
                                                    }
                                                    Spacer()
                                                        .frame(width: 15)
                                                }
                                                
                    VStack(spacing: 10) {
                        Text("Name your fragrance")
                            .font(.custom("BeVietnamPro-Medium", size: 20))

                        // Beveled input to match app style
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 235, height: 48)
                                .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topLeft, .bottomRight]))

                            HStack(spacing: 8) {
                                Image(systemName: "pencil")
                                    .font(.system(size: 16))
                                    .opacity(0.6)
                                TextField("Enter fragrance name", text: $nameOfFragrance)
                                    .characterLimit($nameOfFragrance, limit: 20)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .textInputAutocapitalization(.words)
                                    .disableAutocorrection(true)
                                    .submitLabel(.done)
                                    .accessibilityLabel("Fragrance name")

                            }
                            .padding(.horizontal, 10)
                            .frame(width: 231, height: 44)
                            .background(Color(.white))
                            .foregroundColor(.black).opacity(0.89)
                            .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topLeft, .bottomRight]))
                            // Clear button
                            .overlay(alignment: .trailing) {
                                if !nameOfFragrance.isEmpty {
                                    Button(action: { nameOfFragrance = "" }) {
                                        Image(systemName: "xmark.circle.fill")
                                            .font(.system(size: 15))
                                            .opacity(0.6)
                                    }
                                    .buttonStyle(.plain)
                                    .padding(.trailing, 8)
                                }
                            }
                        }
                    }
                                                .padding(.bottom, 20)
                                                
                                            }
                                        }
                                        
                                        
                                        
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(.black)
                                                .frame(width: 355, height: 155)
                                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))
                                            
                                            
                                            Rectangle()
                                                .foregroundColor(.gray)
                                                .frame(width: 350, height: 150)
                                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))
                                            
                                            HStack {
                                                
                                                VStack {
                                                    
                                                    ZStack {
                                                        Rectangle()
                                                            .foregroundColor(.black)
                                                            .frame(width: 355, height: 155)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))
                                                        
                                                        Rectangle()
                                                            .foregroundColor(.gray)
                                                            .frame(width: 350, height: 150)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))
                                                        
                                                        
                                                    }
                                                    Spacer()
                                                        .frame(height: 15)
                                                }
                                                Spacer()
                                                    .frame(width: 15)
                                            }
                                            
            VStack(spacing: 10) {
                Text("How many drops of oil?")
                    .font(.custom("BeVietnamPro-Medium", size: 20))

                // Beveled input to match the app style, with larger hit areas
                ZStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 144, height: 48)
                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topLeft, .bottomRight]))

                    HStack(spacing: 0) {
                        // minus button (bigger hit target, still -1)
                        Button(action: {
                            let n = Int(variables.totalDrops) ?? 0
                            variables.totalDrops = String(max(0, n - 1))
                        }) {
                            Image(systemName: "minus")
                                .font(.system(size: 16))
                                .frame(width: 44, height: 44) // bigger tap area per HIG
                                .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        

                        TextField("Drops", text: $variables.totalDrops)
                            .font(.custom("BeVietnamPro-Light", size: 16))
                            .keyboardType(.numberPad)
                            .multilineTextAlignment(.center)
                            .frame(width: 140, height: 44)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .opacity(0.89)
                            .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topLeft, .bottomRight]))
                            .accessibilityLabel("Total desired drops")
                            .focused($isTotalDropsFocused)
                            .toolbar {
                                ToolbarItemGroup(placement: .keyboard) {
                                    Spacer()
                                    Button("Done") { isTotalDropsFocused = false }
                                }
                            }

                        // plus button (bigger hit target, +5)
                        Button(action: {
                            let n = Int(variables.totalDrops) ?? 0
                            variables.totalDrops = String(min(999, n + 5))
                        }) {
                            Image(systemName: "plus")
                                .font(.system(size: 16))
                                .frame(width: 44, height: 44) // bigger tap area per HIG
                                .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                    }
                    .padding(.horizontal, 10)
                    .frame(width: 251, height: 44)
                    .foregroundColor(.black)
                }
            }
       .padding(.bottom, 20)
    }
                                        
                                        
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(.black)
                                                .frame(width: 355, height: 155)
                                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))
                                            
                                            
                                            Rectangle()
                                                .foregroundColor(.gray)
                                                .frame(width: 350, height: 150)
                                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))
                                            
                                            HStack {
                                                
                                                VStack {
                                                    
                                                    ZStack {
                                                        Rectangle()
                                                            .foregroundColor(.black)
                                                            .frame(width: 355, height: 155)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))
                                                        
                                                        Rectangle()
                                                            .foregroundColor(.gray)
                                                            .frame(width: 350, height: 150)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))
                                                        
                                                        
                                                    }
                                                    Spacer()
                                                        .frame(height: 15)
                                                }
                                                Spacer()
                                                    .frame(width: 15)
                                            }
                                            VStack {
                                                HStack {
                                                    Spacer()
                                                        .frame(width: 20)
                                                    Text("Is your fragrance top or base leaning?")
                                                        .font(.custom("BeVietnamPro-Medium", size: 20))
                                                        .multilineTextAlignment(.center)
                                                        .lineLimit(2)
                                                        .frame(width: 200)
                                                    
                                                    
                                                    
                                                }
                                                HStack {
                                                    ZStack {
                                                        Rectangle()
                                                            .foregroundColor(.black)
                                                            .frame(width: 66, height: 58)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topLeft, .bottomRight]))
                                                        
                                                        Button(action: {
                                                            topLeaning = true
                                                            middleLeaning = false
                                                            bottomLeaning = false
                                                        } ) {
                                                            Text("TOP")
                                                                .underline(false)
                                                                .font(.custom("BeVietnamPro-Light", size: 15))
                                                                .frame(width: 62, height: 54)
                                                                .background(topLeaning ? Color.gray : Color("softBlue"))

                                                                .foregroundColor(.black)
                                                                .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topLeft, .bottomRight]))
                                                        }
                                                        .buttonStyle(.borderless)
                                                    }
                                                    ZStack {
                                                        RoundedRectangle(cornerRadius: 12)
                                                            .foregroundColor(.black)
                                                            .frame(width: 66, height: 58)
                                                        Button(action: {
                                                            middleLeaning = true
                                                            topLeaning = false
                                                            bottomLeaning = false
                                                        } ) {
                                                            Text("ALL")
                                                                .underline(false)
                                                                .font(.custom("BeVietnamPro-Light", size: 15))
                                                                .frame(width: 62, height: 54)
                                                                .background(middleLeaning ? Color.gray : Color("softBlue"))
                                                                .foregroundColor(.black)
                                                                .cornerRadius(10)
                                                        }
                                                        .buttonStyle(.borderless)
                                                    }
                                                    
                                                    ZStack {
                                                        Rectangle()
                                                            .foregroundColor(.black)
                                                            .frame(width: 66, height: 58)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                                        
                                                        Button(action: {
                                                            middleLeaning = false
                                                            topLeaning = false
                                                            bottomLeaning = true
                                                        } ) {
                                                            Text("BASE")
                                                                .underline(false)
                                                                .font(.custom("BeVietnamPro-Light", size: 15))
                                                                .frame(width: 62, height: 54)
                                                                .background(bottomLeaning ? Color.gray : Color("softBlue"))
                                                                .foregroundColor(.black)
                                                                .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                                            
                                                        }
                                                        .buttonStyle(.borderless)
                                                    }
                                                }
                                            }
                                            .padding(.bottom, 20)
                                            
                                        }
                                    }
                                }

                                        Spacer()
                                            .frame(height: 20)
                                        ZStack {
                                            Rectangle()
                                                .foregroundColor(.black)
                                                .frame(width: 140, height: 58)
                                                .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.bottomLeft, .bottomRight]))
                                            
                                            Button(action: {
                                                withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                                    nameFragranceScreen = false

                                                }
                                                
                                            } ) {
                                                Text("ENTER")
                                                    .underline(false)
                                                    .font(.custom("BeVietnamPro-Light", size: 20))
                                                    .frame(width: 136, height: 54)
                                                    .background(Color("softBlue"))
                                                    .foregroundColor(.black)
                                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.bottomLeft, .bottomRight]))
                                                
                                        }
                                        .buttonStyle(.borderless)
                                }
                            }
                        } else if nameFragranceScreen == false {
                           
                            VStack {
                                Spacer()
                                    .frame(height: 55)
                                
                                    HStack {
                                 
                                    ZStack {
                                        HStack {
                                            Spacer()
                                                .frame(width: 8)
                                            VStack {
                                                Spacer()
                                                    .frame(height: 8)
                                                
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .foregroundColor(.black)
                                                        .frame(width: 45, height: 45)
                                                    
                                                    
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .foregroundColor(.gray)
                                                        .frame(width: 40, height: 40)
                                                    
                                                }
                                            }
                                        }
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 50)
                                                .foregroundColor(.black)
                                                .frame(width: 45, height: 45)
                                            
                                            
                                            RoundedRectangle(cornerRadius: 50)
                                                .foregroundColor(.gray)
                                                .frame(width: 40, height: 40)
                                            
                                            
                                            Button(action: {
                                                withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                                    nameFragranceScreen = true
                                                    
                                                }
                                            }) {
                                                Image(systemName: "arrow.left")
                                                    .font(.system(size: 25))
                                                    .foregroundColor(Color(.black))
                                            }
                                            .buttonStyle(.borderless)

                                            
                                            
                                            
                                        }
                                    }
                                    .padding(.top, 5)

                                      
                                    ZStack {
                                        HStack {
                                            Spacer()
                                                .frame(width: 10)
                                            VStack {
                                                Spacer()
                                                    .frame(height: 10)
                                                
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .foregroundColor(.black)
                                                        .frame(width: 255, height: 55)
                                                    
                                                    
                                                    RoundedRectangle(cornerRadius: 50)
                                                        .foregroundColor(.gray)
                                                        .frame(width: 250, height: 50)
                                                    
                                                }
                                            }
                                        }
                                        
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 50)
                                                .foregroundColor(.black)
                                                .frame(width: 255, height: 55)
                                            
                                            
                                            RoundedRectangle(cornerRadius: 50)
                                                .foregroundColor(.gray)
                                                .frame(width: 250, height: 50)
                                            
                                            Text("\(nameOfFragrance)")
                                                .font(.custom("BeVietnamPro-Medium", size: 30))
                                                .padding()
                                            
                                        }
                                          
                                        }
                                        
                
                                 

                                    
                                
                            
                                }
                                    .padding(.trailing, 40)
                                
                                VStack(spacing: 20) {
                                    
                                    if topLeaning {
                                        
                                        TopNoteStruct()
                                        
                                        MiddleNoteStruct()
                                        ZStack {

                                         Rectangle()
                                                .foregroundColor(.black)
                                                .frame(width: 355, height: 65)
                                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                                            
                                         Rectangle()
                                                .foregroundColor(.gray)
                                                .frame(width: 350, height: 60)
                                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                                            HStack {
                                                
                                                VStack {
                                                    
                                                    ZStack {
                                                     Rectangle()
                                                            .foregroundColor(.black)
                                                            .frame(width: 355, height: 65)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                                                     Rectangle()
                                                            .foregroundColor(.gray)
                                                            .frame(width: 350, height: 60)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                                                        
                                                    }
                                                    Spacer()
                                                        .frame(height: 15)
                                                }
                                                Spacer()
                                                    .frame(width: 15)
                                                
                                            }
                                            HStack {
                                                ZStack {
                                                    
                                                Text("Base Notes")
                                                    .font(.custom("BeVietnamPro-Medium", size: 35))
                                        
                                                    Rectangle()
                                                        .frame(width: 200, height: 2)
                                                        .rotationEffect(.degrees(10))
                                                    Rectangle()
                                                        .frame(width: 200, height: 2)
                                                        .rotationEffect(.degrees(170))
                                               
                                                }
                                             
                                            }
                                            .padding(.bottom, 15)
                                        }
                                        

                                    } else if bottomLeaning {
                                        
                                        ZStack {
 
                                         Rectangle()
                                                .foregroundColor(.black)
                                                .frame(width: 355, height: 65)
                                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                                            
                                         Rectangle()
                                                .foregroundColor(.gray)
                                                .frame(width: 350, height: 60)
                                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                                            HStack {
                                                
                                                VStack {
                                                    
                                                    ZStack {
                                                     Rectangle()
                                                            .foregroundColor(.black)
                                                            .frame(width: 355, height: 65)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                                                     Rectangle()
                                                            .foregroundColor(.gray)
                                                            .frame(width: 350, height: 60)
                                                            .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                                                        
                                                    }
                                                    Spacer()
                                                        .frame(height: 15)
                                                }
                                                Spacer()
                                                    .frame(width: 15)
                                                
                                            }
                                            HStack {
                                                ZStack {
                                                    
                                                Text("Top Notes")
                                                    .font(.custom("BeVietnamPro-Medium", size: 35))
                                        
                                                    Rectangle()
                                                        .frame(width: 200, height: 2)
                                                        .rotationEffect(.degrees(10))
                                                    Rectangle()
                                                        .frame(width: 200, height: 2)
                                                        .rotationEffect(.degrees(170))

                                                }
                                             
                                            }
                                            .padding(.bottom, 15)
                                        }
                                        
                                        MiddleNoteStruct()
                                        
                                        BaseNoteStruct()
                                        
                                    } else if middleLeaning {
                                        
                                        TopNoteStruct()

                                        MiddleNoteStruct()
                                        
                                        BaseNoteStruct()
                                            .padding(.bottom, 20)
                                    }
                                }
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 140, height: 90)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                    
                                    Button(action: {
                                        viewModel.copyRecipeToClipboard(nameOfFragrance: nameOfFragrance)
                                    }) {
                                        Text("Copy Recipe")
                                            .underline(false)
                                            .font(.custom("BeVietnamPro-Medium", size: 17))
                                            .frame(width: 134, height: 85)
                                            .background(Color("softBlue"))
                                            .foregroundColor(.black)
                                            .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                        
                                    }
                                    .buttonStyle(.borderless)
                                    
                                    
                                }
                                .padding(.bottom, 15)
                            }
                        }
                    }
                }
            }
            .onAppear {
                      startTimer()
                  }
            .onChange(of: nameFragranceScreen) { isNaming in
                if isNaming && nameOfFragrance.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    nameOfFragrance = defaultFragranceName()
                }
            }

        }
        .edgesIgnoringSafeArea(.all)
        .frame(minWidth: 700, maxWidth: 900)

        .environment(\.sizeCategory, .small)


    }
    
    struct AddAromaScreen: View {
        var body: some View {
            
        }
    }
    
    private func defaultFragranceName() -> String {
        let df = DateFormatter()
        df.dateStyle = .medium   // e.g., Aug 12, 2025
        df.timeStyle = .none
        return df.string(from: Date())
    }

    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            calculateFragrance()
        }
    }
    private func calculateFragrance() {
        guard let D = Double(variables.totalDrops) else {
            // Handle invalid input
            return
        }


        // Desired Drops
        if topLeaning {
            variables.desiredTopDrops = D * 0.40
            variables.desiredMiddleDrops = D * 0.60
        } else if bottomLeaning {
            variables.desiredMiddleDrops = D * 0.60
            variables.desiredBaseDrops = D * 0.40
        } else {
            variables.desiredTopDrops = D * 0.30
            variables.desiredMiddleDrops = D * 0.50
            variables.desiredBaseDrops = D * 0.20
        }
        // Actual Percentages
        if D != 0 {
            variables.actualTopPercentage = (variables.desiredTopDrops / D) * 100
            variables.actualMiddlePercentage = (variables.desiredMiddleDrops / D) * 100
            variables.actualBasePercentage = (variables.desiredBaseDrops / D) * 100
        } else {
            variables.actualTopPercentage = 0
            variables.actualMiddlePercentage = 0
            variables.actualBasePercentage = 0
        }
    }
}



struct TopNoteStruct: View {
    @ObservedObject var variables = Oils.shared
    @ObservedObject var viewModel = FragranceViewModel.shared

    
    
    @State private var topNoteContainerHeight = 350
    @State private var topNoteOutsideContainerHeight = 355
    
    @State private var topNoteBackgroundContainerHeight = 350
    @State private var topNoteBackgroundOutsideContainerHeight = 355


    @State private var topNotesMinimize: Bool = false
    @State private var topNoteHints: Bool = false

    @State private var showTopDropsPicker = false
    @State private var pendingTopOil: String? = nil
    @State private var selectedTopDrops: Int = 1
    @State private var selectedTopDropsText: String = "1"
    @FocusState private var isTopDropsFocused: Bool

    private func quickAddTop(_ oil: String, drops: String = "1") {
        variables.topNoteOilName = oil
        variables.topNoteDrops = drops
        withAnimation(.spring(response: 0.3, dampingFraction: 1, blendDuration: 0.1)) {
            viewModel.addTopNoteEntry()
        }
    }


    // TOP — most fresh → least fresh
    let topNoteEssentialOilNames = [
        "Peppermint",
        "Spearmint",
        "Eucalyptus",
        "Lime",
        "Lemon",
        "Grapefruit",
        "Bergamot",
        "Sweet Orange",
        "Mandarin",
        "Lemongrass",
        "Citronella",
        "Petitgrain",
        "Neroli",
        "Tea Tree",
        "Pine Needle",
        "Fir Needle",
        "Rosemary",
        "Basil (Linalool)",
        "Coriander Seed",
        "Ginger"
    ]
    var body: some View {

        ZStack {
            ZStack {
   
             Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 355, height: CGFloat(topNotesMinimize || topNoteHints ? topNoteOutsideContainerHeight : 355 + viewModel.topNoteOils.count * 60))
                    .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                
             Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 350, height: CGFloat(topNotesMinimize || topNoteHints ? topNoteContainerHeight : 350 + viewModel.topNoteOils.count * 60))
                    .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                HStack {
                    
                    VStack {
                        
                        ZStack {
                         Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 355, height: CGFloat(topNotesMinimize || topNoteHints ? topNoteBackgroundOutsideContainerHeight : 355 + viewModel.topNoteOils.count * 60))
                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                         Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 350, height: CGFloat(topNotesMinimize || topNoteHints ?  topNoteBackgroundContainerHeight : 350 + viewModel.topNoteOils.count * 60))
                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                            
                        }
                        Spacer()
                            .frame(height: 15)
                    }
                    Spacer()
                        .frame(width: 15)
                }
            }
            .padding(.leading, 2.5)
            .sheet(isPresented: $showTopDropsPicker) {
                let sheetPink = Color(red: 251/255, green: 195/255, blue: 255/255) // #FBC3FF
                let corner: CGFloat = 50     // match presentationCornerRadius

                ZStack {
                    sheetPink.ignoresSafeArea()

                    // Off-center layered card (black underlay + gray plate)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 305, height: 220)
                            .clipShape(TopLeftEdgeRectangle(radius: 24, corners: [.topLeft, .bottomRight]))

                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 300, height: 215)
                            .clipShape(TopLeftEdgeRectangle(radius: 22, corners: [.topLeft, .bottomRight]))

                        VStack(spacing: 14) {

                            // Title + close “x”
                            HStack {
                                Text("Add Drops")
                                    .font(.custom("BeVietnamPro-Medium", size: 22))
                                Spacer()
                                Button(action: { showTopDropsPicker = false }) {
                                    Image(systemName: "x.square.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(.black))
                                }
                                .buttonStyle(.plain)
                            }
                            .frame(width: 270)

                            // Oil name
                            if let oil = pendingTopOil {
                                Text(oil)
                                    .font(.custom("BeVietnamPro-Bold", size: 18))
                            }
                            
                    

                            // Drops input field (plus/minus + textfield)
                            HStack(spacing: 0) {
                                // minus button (bigger hit target, −1)
                                Button(action: {
                                    let n = Int(selectedTopDropsText.trimmingCharacters(in: .whitespacesAndNewlines)) ?? selectedTopDrops
                                    selectedTopDropsText = String(max(1, n - 1))
                                }) {
                                    Image(systemName: "minus")
                                        .font(.system(size: 16))
                                        .frame(width: 44, height: 44) // bigger tap area per HIG
                                        .contentShape(Rectangle())
                                }
                                .buttonStyle(.plain)
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 144, height: 48)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topLeft, .bottomRight]))
                                    
                                    
                                    TextField("Drops", text: $selectedTopDropsText)
                                        .font(.custom("BeVietnamPro-Light", size: 16))
                                        .keyboardType(.numberPad)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 140, height: 44)
                                        .background(Color.white)
                                        .foregroundColor(.black)
                                        .opacity(0.89)
                                        .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topLeft, .bottomRight]))
                                        .accessibilityLabel("Drops to add")
                                        .focused($isTopDropsFocused)
                                        .toolbar {
                                            ToolbarItemGroup(placement: .keyboard) {
                                                Spacer()
                                                Button("Done") { isTopDropsFocused = false }
                                            }
                                        }
                                }
                                // plus button (bigger hit target, +5)
                                Button(action: {
                                    let n = Int(selectedTopDropsText.trimmingCharacters(in: .whitespacesAndNewlines)) ?? selectedTopDrops
                                    selectedTopDropsText = String(min(200, n + 5))
                                }) {
                                    Image(systemName: "plus")
                                        .font(.system(size: 16))
                                        .frame(width: 44, height: 44) // bigger tap area per HIG
                                        .contentShape(Rectangle())
                                }
                                .buttonStyle(.plain)
                            }
                            .padding(.horizontal, 10)
                            .frame(width: 251, height: 44)
                            .foregroundColor(.black)

                            // Action buttons (twin beveled buttons)
                            HStack(spacing: 12) {

                                // Cancel
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 50)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))

                                    Button("Cancel") { showTopDropsPicker = false }
                                        .font(.custom("BeVietnamPro-Light", size: 16))
                                        .frame(width: 106, height: 46)
                                        .background(Color("softBlue"))
                                        .foregroundColor(.black)
                                        .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                }
                                .buttonStyle(.borderless)

                                // Add
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 50)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))

                                    Button("Add") {
                                        if let oil = pendingTopOil {
                                            let raw = selectedTopDropsText.trimmingCharacters(in: .whitespacesAndNewlines)
                                            let n = Int(raw) ?? selectedTopDrops
                                            let clamped = max(1, min(200, n))
                                            quickAddTop(oil, drops: String(clamped))
                                        }
                                        showTopDropsPicker = false
                                        topNoteHints = false
                                    }
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 106, height: 46)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                }
                                .buttonStyle(.borderless)
                            }
                            .padding(.top, 6)
                        }
                        .frame(width: 280)
                    }
                    .padding(.top, 40)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: corner, style: .continuous)
                        .stroke(Color.black, lineWidth: 3)
                        .frame(width: 399, height: 281)
                        .allowsHitTesting(false)
                        .padding(.top, 44)
                )
                .presentationDetents([.height(240)])
                .presentationCornerRadius(52)
                .presentationDragIndicator(.hidden)
                .presentationBackground(sheetPink)
            }
        
            
            
            if topNoteHints {
                ZStack {
                    VStack {
                    HStack {
                        ScrollView {
                            ForEach(topNoteEssentialOilNames, id: \.self) { oil in
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color(.black))
                                        .opacity(0.5)
                                        .frame(width: 10, height: 50)
                                    ZStack {
                                        Rectangle()
                                            .fill(Color("softGray"))
                                            .frame(width: 250, height: 50)
                                            .clipShape(TrailingRoundedRectangle(radius: 10))
                                            .overlay(
                                                HStack {
                                                    Text(oil)
                                                        .font(.custom("BeVietnamPro-Bold", size: 17))
                                                        .padding(.leading, 10)
                                                    Spacer()
                                                    Button(action: {
                                                        pendingTopOil = oil
                                                        selectedTopDrops = 1
                                                        selectedTopDropsText = "1"
                                                        showTopDropsPicker = true
                                                    }) {
                                                        HStack(spacing: 4) {
                                                            Image(systemName: "plus.circle.fill").font(.system(size: 14))
                                                            Text("Add").font(.custom("BeVietnamPro-Light", size: 13))
                                                        }
                                                        .frame(height: 28)
                                                        .padding(.horizontal, 8)
                                                        .background(Color("softBlue"))
                                                        .foregroundColor(.black)
                                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                                    }
                                                    .buttonStyle(.plain)
                                                    .padding(.trailing, 8)

                                                }
                                            )
                                    }
                                }
                                .cornerRadius(10)
                            }
                            .frame(width: 340)

                       
                            
                        }
                        .frame(width: 350, height: 335)
                        
                        Spacer()
                            .frame(width: 10)
                        }
                    Spacer()
                        .frame(height: 15)
                    }
                  
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 290)
                            ZStack {
                                Button(action: {
                                    withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                        topNoteHints = false
                                        topNoteContainerHeight = 360
                                        topNoteOutsideContainerHeight = 365
                                        
                                        topNoteBackgroundContainerHeight = 360
                                        topNoteBackgroundOutsideContainerHeight = 365
                                        
                                        
                                    }
                                }) {
                                    Image(systemName: "x.square.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color(.black))
                                }
                                .buttonStyle(.borderless)
                                
                            }
                        }
                        Spacer()
                            .frame(height: 300)
                    }
                    
                }
            } else if topNoteHints == false && topNotesMinimize == false {

                VStack {
             
                    HStack {
                        
                        Text("Top Notes")
                            .font(.custom("BeVietnamPro-Medium", size: 35))
                        ZStack {
        
                        }
                     
                    }
                    
                    
              
                    
                        // Input fields for essential oil name and drops
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 203, height: 37)
                                TextField("Enter oil name", text: $variables.topNoteOilName)
                                    .font(.custom("BeVietnamPro-Light", size: 15))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 200)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 103, height: 37)
                                TextField("Enter drops", text: $variables.topNoteDrops)
                                    .font(.custom("BeVietnamPro-Light", size: 15))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 100)
                                    .keyboardType(.numberPad)
                            }
                        }
                    
                    
          
                    HStack(spacing: 12) {
                        // Add via text fields (was the info button’s “job” conceptually)
                        Button(action: {
                            withAnimation(.spring(response: 0.3, dampingFraction: 1, blendDuration: 0.1)) {
                                viewModel.addTopNoteEntry()
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 115, height: 56)
                                    .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                Text("Add Aroma")
                                    .underline(false)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 110, height: 52)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                            }
                        }
                        .buttonStyle(.borderless)

                        // Open the hints list (this used to be your big Add button)
                        Button(action: {
                            withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                topNoteHints = true
                                topNoteContainerHeight = 360
                                topNoteOutsideContainerHeight = 365
                                topNoteBackgroundContainerHeight = 360
                                topNoteBackgroundOutsideContainerHeight = 365
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 115, height: 56)
                                    .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                Text("Hints")
                                    .underline(false)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 110, height: 52)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                            }
                        }
                        .buttonStyle(.borderless)
                    }
                        
                        Spacer()
                        .frame(height: 10)
                        
                        // List of essential oil entries
                        VStack {
                            ForEach(viewModel.topNoteOils) { oil in
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color("softGreen"))
                                        .frame(width: 10, height: 50)
                                    
                                    ZStack {
                                        Rectangle()
                                            .fill(Color("softGray"))
                                            .frame(width: 300, height: 50)
                                            .clipShape(TrailingRoundedRectangle(radius: 10))
                                        
                                        
                                        Button(action: {
                                            withAnimation(.spring(response: 0.3, dampingFraction: 1, blendDuration: 0.1)) {
                                                viewModel.deleteEntry(oil, fromNoteType: NoteType.top)
                                            }
                                        }, label: {
                                            Image(systemName: "clear.fill")
                                                .font(.system(size: 21))
                                                .foregroundColor(.black)
                                                .opacity(0.4)
                                            
                                        }
                                               
                                        )
                                        .frame(width: 20, height: 20)
                                        .cornerRadius(5)
                                        .padding(.leading, 250)
                                        
                                        
                                        
                                        VStack {
                                            Text(oil.name)
                                                .font(.custom("BeVietnamPro-Bold", size: 17))
                                            
                                            Text("\(oil.drops) drops")
                                                .font(.custom("BeVietnamPro-Thin", size: 12))
                                            
                                        }
                                    }
                                }
                                .cornerRadius(10)
                            }
                        }
                    
                    Spacer()
                    .frame(height: 20)
                    
                        VStack(spacing: 10) {
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Desired Drops: \(variables.desiredTopDrops, specifier: "%.2f")")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                    
                                }
                            }
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                ZStack {
                                    
                                    // Display total top drops
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Total Top Drops: \(variables.totalDropsTopNote)")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                    
                                }
                            }
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                
                                ZStack {
                                    
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))

                                    Text("Actual Percentages: \(variables.actualTopPercentage, specifier: "%.0f")%")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                }
                            }
              
                        }
                    
                    Spacer()
                    .frame(height: 20)
                    
                        Button(action: {
                            withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                topNotesMinimize = true
                                topNoteContainerHeight = 60
                                topNoteOutsideContainerHeight = 65
                                
                                topNoteBackgroundContainerHeight = 60
                                topNoteBackgroundOutsideContainerHeight = 65
                                
                            }
                        }, label: {
                            Image(systemName: "chevron.up")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 100, height: 10)
                            
                        })
                        .buttonStyle(.plain)
                        
                        
                        
                 
                }
                

            } else if topNotesMinimize {
                VStack(spacing: 0) {
                        Text("Top Notes")
                        .font(.custom("BeVietnamPro-Medium", size: 35))

                
                    Button(action: {
                        withAnimation(.spring(response: 1, dampingFraction: 0.8, blendDuration: 0.5)) {
                            topNotesMinimize = false
                            topNoteContainerHeight = 270
                            topNoteOutsideContainerHeight = 275
                            
                            topNoteBackgroundContainerHeight = 270
                            topNoteBackgroundOutsideContainerHeight = 275
                            
                        }
                    }, label: {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 100, height: 10)

                    })
                    .buttonStyle(.plain)

                    Spacer()
                        .frame(height: 15)
                }
                
            }
            }
                .environment(\.sizeCategory, .small)
        
    }
    



}

struct MiddleNoteStruct: View {
    @ObservedObject var variables = Oils.shared
    @ObservedObject var viewModel = FragranceViewModel.shared
    
    @State private var middleNoteContainerHeight = 350
    @State private var middleNoteOutsideContainerHeight = 355
    
    @State private var middleNoteBackgroundContainerHeight = 350
    @State private var middleNoteBackgroundOutsideContainerHeight = 355


    @State private var middleNotesMinimize: Bool = false
    @State private var middleNoteHints: Bool = false

    @State private var showMiddleDropsPicker = false
    @State private var pendingMiddleOil: String? = nil
    @State private var selectedMiddleDrops: Int = 1
    @State private var selectedMiddleDropsText: String = "1"
    @FocusState private var isMiddleDropsFocused: Bool

    private func quickAddMiddle(_ oil: String, drops: String = "1") {
        variables.middleNoteOilName = oil
        variables.middleNoteDrops = drops
        withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1)) {
            viewModel.addMiddleNoteEntry()
        }
    }
//    @State private var essentialOils: [EssentialOil] = [
////        EssentialOil(name: "Basil", drops: 10),
////           EssentialOil(name: "Balm Mint Bush", drops: 15),
////           EssentialOil(name: "Bergamot", drops: 12),
////           EssentialOil(name: "Eucalyptus Globulus", drops: 20)
//    ]
    // MIDDLE — most fresh → most grounding (lavender up top, as requested)
    let middleNoteEssentialOilNames = [
        "Lavender",
        "Palmarosa",
        "Geranium",
        "Cardamom",
        "Clary Sage",
        "Roman Chamomile",
        "Cypress",
        "Sweet Marjoram",
        "Ho Wood",
        "Black Pepper",
        "Rose (Absolute)",
        "Jasmine (Absolute)",
        "Ylang Ylang",
        "Cinnamon Leaf",
        "Nutmeg",
        "Bay Laurel"
    ]
    
    var body: some View {

        ZStack {
            ZStack {
   
             Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 355, height: CGFloat(middleNotesMinimize || middleNoteHints ? middleNoteOutsideContainerHeight : 355 + viewModel.middleNoteOils.count * 60))
                    .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                
             Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 350, height: CGFloat(middleNotesMinimize || middleNoteHints ? middleNoteContainerHeight : 350 + viewModel.middleNoteOils.count * 60))
                    .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                HStack {
                    
                    VStack {
                        
                        ZStack {
                         Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 355, height: CGFloat(middleNotesMinimize || middleNoteHints ? middleNoteBackgroundOutsideContainerHeight : 355 + viewModel.middleNoteOils.count * 60))
                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                         Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 350, height: CGFloat(middleNotesMinimize || middleNoteHints ?  middleNoteBackgroundContainerHeight : 350 + viewModel.middleNoteOils.count * 60))
                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                            
                        }
                        Spacer()
                            .frame(height: 15)
                    }
                    Spacer()
                        .frame(width: 15)
                }
            }
            .padding(.leading, 2.5)
            .sheet(isPresented: $showMiddleDropsPicker) {
                let sheetPink = Color(red: 251/255, green: 195/255, blue: 255/255) // #FBC3FF
                let corner: CGFloat = 50     // match presentationCornerRadius

                ZStack {
                    sheetPink.ignoresSafeArea()

                    // Off-center layered card (black underlay + gray plate)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 305, height: 220)
                            .clipShape(TopLeftEdgeRectangle(radius: 24, corners: [.topLeft, .bottomRight]))

                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 300, height: 215)
                            .clipShape(TopLeftEdgeRectangle(radius: 22, corners: [.topLeft, .bottomRight]))

                        VStack(spacing: 14) {

                            // Title + close “x”
                            HStack {
                                Text("Add Drops")
                                    .font(.custom("BeVietnamPro-Medium", size: 22))
                                Spacer()
                                Button(action: { showMiddleDropsPicker = false }) {
                                    Image(systemName: "x.square.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(.black))
                                }
                                .buttonStyle(.plain)
                            }
                            .frame(width: 270)

                            // Oil name
                            if let oil = pendingMiddleOil {
                                Text(oil)
                                    .font(.custom("BeVietnamPro-Bold", size: 18))
                            }

                            // Drops input field (plus/minus + textfield)
                            HStack(spacing: 0) {
                                // minus button (−1)
                                Button(action: {
                                    let n = Int(selectedMiddleDropsText.trimmingCharacters(in: .whitespacesAndNewlines)) ?? selectedMiddleDrops
                                    selectedMiddleDropsText = String(max(1, n - 1))
                                }) {
                                    Image(systemName: "minus")
                                        .font(.system(size: 16))
                                        .frame(width: 44, height: 44)
                                        .contentShape(Rectangle())
                                }
                                .buttonStyle(.plain)

                                TextField("Drops", text: $selectedMiddleDropsText)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 140, height: 44)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .opacity(0.89)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topLeft, .bottomRight]))
                                    .accessibilityLabel("Drops to add")
                                    .focused($isMiddleDropsFocused)
                                    .toolbar {
                                        ToolbarItemGroup(placement: .keyboard) {
                                            Spacer()
                                            Button("Done") { isMiddleDropsFocused = false }
                                        }
                                    }

                                // plus button (+5)
                                Button(action: {
                                    let n = Int(selectedMiddleDropsText.trimmingCharacters(in: .whitespacesAndNewlines)) ?? selectedMiddleDrops
                                    selectedMiddleDropsText = String(min(200, n + 5))
                                }) {
                                    Image(systemName: "plus")
                                        .font(.system(size: 16))
                                        .frame(width: 44, height: 44)
                                        .contentShape(Rectangle())
                                }
                                .buttonStyle(.plain)
                            }
                            .padding(.horizontal, 10)
                            .frame(width: 251, height: 44)
                            .foregroundColor(.black)

                            // Action buttons (twin beveled buttons)
                            HStack(spacing: 12) {

                                // Cancel
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 50)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))

                                    Button("Cancel") { showMiddleDropsPicker = false }
                                        .font(.custom("BeVietnamPro-Light", size: 16))
                                        .frame(width: 106, height: 46)
                                        .background(Color("softBlue"))
                                        .foregroundColor(.black)
                                        .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                }
                                .buttonStyle(.borderless)

                                // Add
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 50)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))

                                    Button("Add") {
                                        if let oil = pendingMiddleOil {
                                            let raw = selectedMiddleDropsText.trimmingCharacters(in: .whitespacesAndNewlines)
                                            let n = Int(raw) ?? selectedMiddleDrops
                                            let clamped = max(1, min(200, n))
                                            quickAddMiddle(oil, drops: String(clamped))
                                        }
                                        showMiddleDropsPicker = false
                                        middleNoteHints = false
                                    }
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 106, height: 46)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                }
                                .buttonStyle(.borderless)
                            }
                            .padding(.top, 6)
                        }
                        .frame(width: 280)
                    }
                    .padding(.top, 40)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: corner, style: .continuous)
                        .stroke(Color.black, lineWidth: 3)
                        .frame(width: 399, height: 281)
                        .allowsHitTesting(false)
                        .padding(.top, 44)
                )
                .presentationDetents([.height(240)])
                .presentationCornerRadius(52)
                .presentationDragIndicator(.hidden)
                .presentationBackground(sheetPink)
            }
            
            if middleNoteHints {
                ZStack {
                    VStack {
                    HStack {
                        ScrollView {
                            ForEach(middleNoteEssentialOilNames, id: \.self) { oil in
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color(.black))
                                        .opacity(0.5)
                                        .frame(width: 10, height: 50)
                                    ZStack {
                                        Rectangle()
                                            .fill(Color("softGray"))
                                            .frame(width: 250, height: 50)
                                            .clipShape(TrailingRoundedRectangle(radius: 10))
                                            .overlay(
                                                HStack {
                                                    Text(oil)
                                                        .font(.custom("BeVietnamPro-Bold", size: 17))
                                                        .padding(.leading, 10)

                                                    Spacer()
                                                    Button(action: {
                                                        pendingMiddleOil = oil
                                                        selectedMiddleDrops = 1
                                                        selectedMiddleDropsText = "1"
                                                        showMiddleDropsPicker = true
                                                    }) {
                                                        HStack(spacing: 4) {
                                                            Image(systemName: "plus.circle.fill").font(.system(size: 14))
                                                            Text("Add").font(.custom("BeVietnamPro-Light", size: 13))
                                                        }
                                                        .frame(height: 28)
                                                        .padding(.horizontal, 8)
                                                        .background(Color("softBlue"))
                                                        .foregroundColor(.black)
                                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                                    }
                                                    .buttonStyle(.plain)
                                                    .padding(.trailing, 8)
                                                }
                                            )
                                    }
                                }
                                .cornerRadius(10)
                            }
                            .frame(width: 340)

                       
                            
                        }
                        .frame(width: 350, height: 335)
                        
                        Spacer()
                            .frame(width: 10)
                        }
                    Spacer()
                        .frame(height: 15)
                    }
                  
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 290)
                            ZStack {
                                Button(action: {
                                    withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                        middleNoteHints = false
                                        middleNoteContainerHeight = 360
                                        middleNoteOutsideContainerHeight = 365
                                        
                                        middleNoteBackgroundContainerHeight = 360
                                        middleNoteBackgroundOutsideContainerHeight = 365
                                        
                                        
                                    }
                                }) {
                                    Image(systemName: "x.square.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color(.black))
                                }
                                .buttonStyle(.borderless)
                                
                            }
                        }
                        Spacer()
                            .frame(height: 300)
                    }
                    
                }
            } else if middleNoteHints == false && middleNotesMinimize == false {

                VStack {
             
                    HStack {
                        
                        Text("Middle Notes")
                            .font(.custom("BeVietnamPro-Medium", size: 35))
                     
                    }
                    
                    
              
                    
                        // Input fields for essential oil name and drops
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 203, height: 37)
                                TextField("Enter oil name", text: $variables.middleNoteOilName)
                                    .font(.custom("BeVietnamPro-Light", size: 15))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 200)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 103, height: 37)
                                TextField("Enter drops", text: $variables.middleNoteDrops)
                                    .font(.custom("BeVietnamPro-Light", size: 15))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 100)
                                    .keyboardType(.numberPad)
                            }
                        }
                        
                    HStack(spacing: 12) {
                        // Add via text fields
                        Button(action: {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1)) {
                                viewModel.addMiddleNoteEntry()
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 115, height: 56)
                                    .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                Text("Add Aroma")
                                    .underline(false)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 110, height: 52)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                            }
                        }
                        .buttonStyle(.borderless)

                        // Open the hints list
                        Button(action: {
                            withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                middleNoteHints = true
                                middleNoteContainerHeight = 360
                                middleNoteOutsideContainerHeight = 365
                                middleNoteBackgroundContainerHeight = 360
                                middleNoteBackgroundOutsideContainerHeight = 365
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 115, height: 56)
                                    .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                Text("Hints")
                                    .underline(false)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 110, height: 52)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                            }
                        }
                        .buttonStyle(.borderless)
                    }
                        .buttonStyle(.borderless)
                        
                        Spacer()
                        .frame(height: 10)
                        
                        // List of essential oil entries
                        VStack {
                            ForEach(viewModel.middleNoteOils) { oil in
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color("softGreen"))
                                        .frame(width: 10, height: 50)
                                    
                                    ZStack {
                                        Rectangle()
                                            .fill(Color("softGray"))
                                            .frame(width: 300, height: 50)
                                            .clipShape(TrailingRoundedRectangle(radius: 10))
                                        
                                        
                                        Button(action: {
                                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1)) {
                                                viewModel.deleteEntry(oil, fromNoteType: NoteType.middle)
                                            }
                                        }, label: {
                                            Image(systemName: "clear.fill")
                                                .font(.system(size: 21))
                                                .foregroundColor(.black)
                                                .opacity(0.4)
                                            
                                        }
                                               
                                        )
                                        .frame(width: 20, height: 20)
                                        .cornerRadius(5)
                                        .padding(.leading, 250)
                                        
                                        
                                        
                                        VStack {
                                            Text(oil.name)
                                                .font(.custom("BeVietnamPro-Bold", size: 17))
                                            
                                            Text("\(oil.drops) drops")
                                                .font(.custom("BeVietnamPro-Thin", size: 12))
                                            
                                        }
                                    }
                                }
                                .cornerRadius(10)
                            }
                        }
                    
                    Spacer()
                    .frame(height: 20)
                    
                        VStack(spacing: 10) {
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Desired Drops: \(variables.desiredMiddleDrops, specifier: "%.2f")")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                    
                                }
                            }
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    Text("Total Middle Drops: \(variables.totalDropsMiddleNote)")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                }
                            }
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                
                                ZStack {
                                    
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Actual Percentages: \(variables.actualMiddlePercentage, specifier: "%.0f")%")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                }
                            }
              
                        }
                    
                    Spacer()
                    .frame(height: 20)
                    
                        Button(action: {
                            withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                middleNotesMinimize = true
                                middleNoteContainerHeight = 60
                                middleNoteOutsideContainerHeight = 65
                                
                                middleNoteBackgroundContainerHeight = 60
                                middleNoteBackgroundOutsideContainerHeight = 65
                                
                            }
                        }, label: {
                            Image(systemName: "chevron.up")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 100, height: 10)
                            
                        })
                        .buttonStyle(.plain)
                        
                        
                        
                 
                }

            } else if middleNotesMinimize {
                VStack(spacing: 0) {
                        Text("Middle Notes")
                        .font(.custom("BeVietnamPro-Medium", size: 35))

                
                    Button(action: {
                        withAnimation(.spring(response: 1, dampingFraction: 0.8, blendDuration: 0.5)) {
                            middleNotesMinimize = false
                            middleNoteContainerHeight = 270
                            middleNoteOutsideContainerHeight = 275
                            
                            middleNoteBackgroundContainerHeight = 270
                            middleNoteBackgroundOutsideContainerHeight = 275
                            
                        }
                    }, label: {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 100, height: 10)

                    })
                    .buttonStyle(.plain)

                    Spacer()
                        .frame(height: 15)
                }
            }
            }
                .environment(\.sizeCategory, .small)
        
    }

}


struct BaseNoteStruct: View {
    
    @ObservedObject var variables = Oils.shared
    @ObservedObject var viewModel = FragranceViewModel.shared

    @State private var baseNoteContainerHeight = 350
    @State private var baseNoteOutsideContainerHeight = 355
    
    @State private var baseNoteBackgroundContainerHeight = 350
    @State private var baseNoteBackgroundOutsideContainerHeight = 355


    @State private var baseNotesMinimize: Bool = false
    @State private var baseNoteHints: Bool = false

    @State private var showBaseDropsPicker = false
    @State private var pendingBaseOil: String? = nil
    @State private var selectedBaseDrops: Int = 1
    @State private var selectedBaseDropsText: String = "1"
    @FocusState private var isBaseDropsFocused: Bool
    
    private func quickAddBase(_ oil: String, drops: String = "1") {
        variables.baseNoteOilName = oil
        variables.baseNoteDrops = drops
        withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1)) {
            viewModel.addBaseNoteEntry()
        }
    }


    
    // BASE — most grounding → deepest/darkest
    let baseNoteEssentialOilNames = [
        "Cedarwood (Atlas)",
        "Amyris",
        "Sandalwood",
        "Frankincense",
        "Copaiba Balsam",
        "Ambrette Seed",
        "Patchouli",
        "Vetiver",
        "Myrrh",
        "Guaiacwood",
        "Benzoin",
        "Vanilla (Absolute)",
        "Tonka Bean (Absolute)",
        "Labdanum",
        "Peru Balsam",
        "Opoponax (Sweet Myrrh)",
        "Oakmoss"
    ]
    
    var body: some View {

        ZStack {
            ZStack {
   
             Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 355, height: CGFloat(baseNotesMinimize || baseNoteHints ? baseNoteOutsideContainerHeight : 355 + viewModel.baseNoteOils.count * 60))
                    .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                
             Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 350, height: CGFloat(baseNotesMinimize || baseNoteHints ? baseNoteContainerHeight : 350 + viewModel.baseNoteOils.count * 60))
                    .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                HStack {
                    
                    VStack {
                        
                        ZStack {
                         Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 355, height: CGFloat(baseNotesMinimize || baseNoteHints ? baseNoteBackgroundOutsideContainerHeight : 355 + viewModel.baseNoteOils.count * 60))
                                .clipShape(TopLeftEdgeRectangle(radius: 29, corners: [.topLeft, .bottomRight]))

                         Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 350, height: CGFloat(baseNotesMinimize || baseNoteHints ?  baseNoteBackgroundContainerHeight : 350 + viewModel.baseNoteOils.count * 60))
                                .clipShape(TopLeftEdgeRectangle(radius: 27, corners: [.topLeft, .bottomRight]))

                            
                        }
                        Spacer()
                            .frame(height: 15)
                    }
                    Spacer()
                        .frame(width: 15)
                }
            }
            .padding(.leading, 2.5)
            .sheet(isPresented: $showBaseDropsPicker) {
                let sheetPink = Color(red: 251/255, green: 195/255, blue: 255/255) // #FBC3FF
                let corner: CGFloat = 50     // match presentationCornerRadius

                ZStack {
                    sheetPink.ignoresSafeArea()

                    // Off-center layered card (black underlay + gray plate)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 305, height: 220)
                            .clipShape(TopLeftEdgeRectangle(radius: 24, corners: [.topLeft, .bottomRight]))

                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 300, height: 215)
                            .clipShape(TopLeftEdgeRectangle(radius: 22, corners: [.topLeft, .bottomRight]))

                        VStack(spacing: 14) {

                            // Title + close “x”
                            HStack {
                                Text("Add Drops")
                                    .font(.custom("BeVietnamPro-Medium", size: 22))
                                Spacer()
                                Button(action: { showBaseDropsPicker = false }) {
                                    Image(systemName: "x.square.fill")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(.black))
                                }
                                .buttonStyle(.plain)
                            }
                            .frame(width: 270)

                            // Oil name
                            if let oil = pendingBaseOil {
                                Text(oil)
                                    .font(.custom("BeVietnamPro-Bold", size: 18))
                            }

                            // Drops input field (plus/minus + textfield)
                            HStack(spacing: 0) {
                                // minus button (−1)
                                Button(action: {
                                    let n = Int(selectedBaseDropsText.trimmingCharacters(in: .whitespacesAndNewlines)) ?? selectedBaseDrops
                                    selectedBaseDropsText = String(max(1, n - 1))
                                }) {
                                    Image(systemName: "minus")
                                        .font(.system(size: 16))
                                        .frame(width: 44, height: 44)
                                        .contentShape(Rectangle())
                                }
                                .buttonStyle(.plain)

                                TextField("Drops", text: $selectedBaseDropsText)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 140, height: 44)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .opacity(0.89)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topLeft, .bottomRight]))
                                    .accessibilityLabel("Drops to add")
                                    .focused($isBaseDropsFocused)
                                    .toolbar {
                                        ToolbarItemGroup(placement: .keyboard) {
                                            Spacer()
                                            Button("Done") { isBaseDropsFocused = false }
                                        }
                                    }

                                // plus button (+5)
                                Button(action: {
                                    let n = Int(selectedBaseDropsText.trimmingCharacters(in: .whitespacesAndNewlines)) ?? selectedBaseDrops
                                    selectedBaseDropsText = String(min(200, n + 5))
                                }) {
                                    Image(systemName: "plus")
                                        .font(.system(size: 16))
                                        .frame(width: 44, height: 44)
                                        .contentShape(Rectangle())
                                }
                                .buttonStyle(.plain)
                            }
                            .padding(.horizontal, 10)
                            .frame(width: 251, height: 44)
                            .foregroundColor(.black)

                            // Action buttons (twin beveled buttons)
                            HStack(spacing: 12) {

                                // Cancel
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 50)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))

                                    Button("Cancel") { showBaseDropsPicker = false }
                                        .font(.custom("BeVietnamPro-Light", size: 16))
                                        .frame(width: 106, height: 46)
                                        .background(Color("softBlue"))
                                        .foregroundColor(.black)
                                        .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                }
                                .buttonStyle(.borderless)

                                // Add
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 110, height: 50)
                                        .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))

                                    Button("Add") {
                                        if let oil = pendingBaseOil {
                                            let raw = selectedBaseDropsText.trimmingCharacters(in: .whitespacesAndNewlines)
                                            let n = Int(raw) ?? selectedBaseDrops
                                            let clamped = max(1, min(200, n))
                                            quickAddBase(oil, drops: String(clamped))
                                        }
                                        showBaseDropsPicker = false
                                        baseNoteHints = false
                                    }
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 106, height: 46)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                                }
                                .buttonStyle(.borderless)
                            }
                            .padding(.top, 6)
                        }
                        .frame(width: 280)
                    }
                    .padding(.top, 40)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: corner, style: .continuous)
                        .stroke(Color.black, lineWidth: 3)
                        .frame(width: 399, height: 281)
                        .allowsHitTesting(false)
                        .padding(.top, 44)
                )
                .presentationDetents([.height(240)])
                .presentationCornerRadius(52)
                .presentationDragIndicator(.hidden)
                .presentationBackground(sheetPink)
            }
            
            if baseNoteHints {
                ZStack {
                    VStack {
                    HStack {
                        ScrollView {
                            ForEach(baseNoteEssentialOilNames, id: \.self) { oil in
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color(.black))
                                        .opacity(0.5)
                                        .frame(width: 10, height: 50)
                                    ZStack {
                                        Rectangle()
                                            .fill(Color("softGray"))
                                            .frame(width: 250, height: 50)
                                            .clipShape(TrailingRoundedRectangle(radius: 10))
                                            .overlay(
                                                HStack {
                                                    Text(oil)
                                                        .font(.custom("BeVietnamPro-Bold", size: 17))
                                                        .padding(.leading, 10)

                                                    Spacer()
                                                    Button(action: {
                                                        pendingBaseOil = oil
                                                        selectedBaseDrops = 1
                                                        selectedBaseDropsText = "1"
                                                        showBaseDropsPicker = true
                                                    }) {
                                                        HStack(spacing: 4) {
                                                            Image(systemName: "plus.circle.fill").font(.system(size: 14))
                                                            Text("Add").font(.custom("BeVietnamPro-Light", size: 13))
                                                        }
                                                        .frame(height: 28)
                                                        .padding(.horizontal, 8)
                                                        .background(Color("softBlue"))
                                                        .foregroundColor(.black)
                                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                                    }
                                                    .buttonStyle(.plain)
                                                    .padding(.trailing, 8)
                                                }
                                            )
                                    }
                                }
                                .cornerRadius(10)
                            }
                            .frame(width: 340)

                       
                            
                        }
                        .frame(width: 350, height: 335)
                        
                        Spacer()
                            .frame(width: 10)
                        }
                    Spacer()
                        .frame(height: 15)
                    }
                  
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 290)
                            ZStack {
                                Button(action: {
                                    withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                        baseNoteHints = false
                                        baseNoteContainerHeight = 360
                                        baseNoteOutsideContainerHeight = 365
                                        
                                        baseNoteBackgroundContainerHeight = 360
                                        baseNoteBackgroundOutsideContainerHeight = 365
                                        
                                        
                                    }
                                }) {
                                    Image(systemName: "x.square.fill")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color(.black))
                                }
                                .buttonStyle(.borderless)
                                
                            }
                        }
                        Spacer()
                            .frame(height: 300)
                    }
                    
                }
            } else if baseNoteHints == false && baseNotesMinimize == false {

                VStack {
             
                    HStack {
                        
                        Text("Base Notes")
                            .font(.custom("BeVietnamPro-Medium", size: 35))

                     
                    }
                    
                    
              
                    
                        // Input fields for essential oil name and drops
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 203, height: 37)
                                TextField("Enter oil name", text: $variables.baseNoteOilName)
                                    .font(.custom("BeVietnamPro-Light", size: 15))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 200)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 103, height: 37)
                                TextField("Enter drops", text: $variables.baseNoteDrops)
                                    .font(.custom("BeVietnamPro-Light", size: 15))
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 100)
                                    .keyboardType(.numberPad)
                            }
                        }
                        
                        // Button to add the entry to the list
                    HStack(spacing: 12) {
                        Button(action: {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1)) {
                                viewModel.addBaseNoteEntry()
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 115, height: 56)
                                    .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                Text("Add Aroma")
                                    .underline(false)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 110, height: 52)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                            }
                        }
                        .buttonStyle(.borderless)

                        Button(action: {
                            withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                baseNoteHints = true
                                baseNoteContainerHeight = 360
                                baseNoteOutsideContainerHeight = 365
                                baseNoteBackgroundContainerHeight = 360
                                baseNoteBackgroundOutsideContainerHeight = 365
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 115, height: 56)
                                    .clipShape(TopLeftEdgeRectangle(radius: 12, corners: [.topRight, .bottomLeft]))
                                Text("Hints")
                                    .underline(false)
                                    .font(.custom("BeVietnamPro-Light", size: 16))
                                    .frame(width: 110, height: 52)
                                    .background(Color("softBlue"))
                                    .foregroundColor(.black)
                                    .clipShape(TopLeftEdgeRectangle(radius: 10, corners: [.topRight, .bottomLeft]))
                            }
                        }
                        .buttonStyle(.borderless)
                    }
                        .buttonStyle(.borderless)
                        
                        Spacer()
                        .frame(height: 10)
                        
                        // List of essential oil entries
                        VStack {
                            ForEach(viewModel.baseNoteOils) { oil in
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(Color("softGreen"))
                                        .frame(width: 10, height: 50)
                                    
                                    ZStack {
                                        Rectangle()
                                            .fill(Color("softGray"))
                                            .frame(width: 300, height: 50)
                                            .clipShape(TrailingRoundedRectangle(radius: 10))
                                        
                                        
                                        Button(action: {
                                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.1)) {
                                                viewModel.deleteEntry(oil, fromNoteType: NoteType.base)
                                            }
                                        }, label: {
                                            Image(systemName: "clear.fill")
                                                .font(.system(size: 21))
                                                .foregroundColor(.black)
                                                .opacity(0.4)
                                            
                                        }
                                               
                                        )
                                        .frame(width: 20, height: 20)
                                        .cornerRadius(5)
                                        .padding(.leading, 250)
                                        
                                        
                                        
                                        VStack {
                                            Text(oil.name)
                                                .font(.custom("BeVietnamPro-Bold", size: 17))
                                            
                                            Text("\(oil.drops) drops")
                                                .font(.custom("BeVietnamPro-Thin", size: 12))
                                            
                                        }
                                    }
                                }
                                .cornerRadius(10)
                            }
                        }
                    
                    Spacer()
                    .frame(height: 20)
                    
                        VStack(spacing: 10) {
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Desired Drops: \(variables.desiredBaseDrops, specifier: "%.2f")")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                    
                                }
                            }
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                ZStack {
                                    
                                    // Display total top drops
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Total Top Drops: \(variables.totalDropsBaseNote)")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                    
                                }
                            }
                            
                            HStack(spacing: 0) {
                                Rectangle()
                                    .fill(Color(.black))
                                    .opacity(0.5)
                                    .frame(width: 5, height: 20)
                                    .clipShape(LeadingRoundedRectangle(radius: 10))
                                
                                ZStack {
                                    
                                    Rectangle()
                                        .foregroundColor(Color("softGray"))
                                        .frame(width: 190, height: 20)
                                        .clipShape(TrailingRoundedRectangle(radius: 5))
                                    
                                    Text("Actual Percentages: \(variables.actualBasePercentage, specifier: "%.0f")%")
                                        .font(.custom("BeVietnamPro-Light", size: 15))
                                }
                            }
              
                        }
                    
                    Spacer()
                    .frame(height: 20)
                    
                        Button(action: {
                            withAnimation(.spring(response: 2, dampingFraction: 0.8)) {
                                baseNotesMinimize = true
                                baseNoteContainerHeight = 60
                                baseNoteOutsideContainerHeight = 65
                                
                                baseNoteBackgroundContainerHeight = 60
                                baseNoteBackgroundOutsideContainerHeight = 65
                                
                            }
                        }, label: {
                            Image(systemName: "chevron.up")
                                .resizable()
                                .foregroundColor(.black)
                                .frame(width: 100, height: 10)
                            
                        })
                        .buttonStyle(.plain)
                        
                        
                        
                 
                }

            } else if baseNotesMinimize {
                VStack(spacing: 0) {
                        Text("Base Notes")
                        .font(.custom("BeVietnamPro-Medium", size: 35))

                
                    Button(action: {
                        withAnimation(.spring(response: 1, dampingFraction: 0.8, blendDuration: 0.5)) {
                            baseNotesMinimize = false
                            baseNoteContainerHeight = 270
                            baseNoteOutsideContainerHeight = 275
                            
                            baseNoteBackgroundContainerHeight = 270
                            baseNoteBackgroundOutsideContainerHeight = 275
                            
                        }
                    }, label: {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 100, height: 10)

                    })
                    .buttonStyle(.plain)

                    Spacer()
                        .frame(height: 15)
                }
            }
            }
                .environment(\.sizeCategory, .small)
        
    }

}
struct TrailingRoundedRectangle: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = [.topRight, .bottomRight]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct LeadingRoundedRectangle: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = [.topLeft, .bottomLeft]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct TopLeftEdgeRectangle: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = [.topRight, .bottomLeft, .bottomRight]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
    





struct CharacterLimitModifier: ViewModifier {
    @Binding var text: String
    let limit: Int

    func body(content: Content) -> some View {
        content
            .onChange(of: text) { newValue, transaction in
                      if newValue.count > limit {
                          text = String(newValue.prefix(limit))
                      }
                  }
    }
}

extension View {
    func characterLimit(_ text: Binding<String>, limit: Int) -> some View {
        self.modifier(CharacterLimitModifier(text: text, limit: limit))
    }
}
#Preview {
    ContentView()
}
