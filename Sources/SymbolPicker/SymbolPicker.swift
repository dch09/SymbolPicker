//
//  SymbolPicker.swift
//  SymbolPicker
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import SwiftUI

public struct SymbolPicker: View {
    @State private var selectedCategory: SymbolCategory = .all
    
    private var filteredSymbols: [String] {
        let copiedSymbols = selectedCategory.symbols.map { $0 }
        guard !searchText.isEmpty else { return selectedCategory.symbols }
        return copiedSymbols.filter { $0.contains(searchText.lowercased()) }
    }
    
    let style = DefaultSymbolPickerStyle()
    
    // MARK: - Properties
    
    @Binding public var selectedSymbol: String
    @State private var searchText = ""
    @Environment(\.presentationMode) private var presentationMode
    
    public init(_ symbol: Binding<String>,
                symbolCornerRadius _: CGFloat? = nil,
                symbolSize _: CGSize? = nil)
    {
        _selectedSymbol = symbol
    }
    
    @ViewBuilder
    private var searchableSymbolGrid: some View {
#if os(iOS)
        if #available(iOS 15.0, *) {
            symbolGrid
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        } else {
            VStack {
                TextField("search_placeholder", text: $searchText)
                    .padding(8)
                    .padding(.horizontal, 8)
                    .background(style.palette.background)
                    .cornerRadius(8.0)
                    .padding(.horizontal, 16.0)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                symbolGrid
                    .padding()
            }
        }
#elseif os(macOS)
        VStack(spacing: 10) {
            TextField("search_placeholder", text: $searchText)
                .disableAutocorrection(true)
            symbolGrid
        }
#else
        symbolGrid
            .searchable(text: $searchText, placement: .automatic)
#endif
    }
    
    private var symbolGrid: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: style.gridDimension,
                                                   maximum: style.gridDimension))]) {
                ForEach(filteredSymbols, id: \.self) { symbol in
                    Button {
                        selectedSymbol = symbol
#if !os(macOS)
                        presentationMode.wrappedValue.dismiss()
#endif
                    } label: {
                        if selectedSymbol == symbol {
                            Image(systemName: symbol)
                                .font(.system(size: style.cellStyle.symbolSize))
                                .frame(maxWidth: .infinity, minHeight: style.gridDimension)
                                .background(Color.accentColor)
                                .cornerRadius(style.cellStyle.cornerRadius)
                                .foregroundColor(.white)
                        } else {
                            Image(systemName: symbol)
                                .font(.system(size: style.cellStyle.symbolSize))
                                .frame(maxWidth: .infinity, minHeight: style.gridDimension)
                                .background(style.palette.background)
                                .cornerRadius(style.cellStyle.cornerRadius)
                                .foregroundColor(.primary)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
        
    public var body: some View {
#if !os(macOS)
        NavigationView {
            ZStack {
                style.palette.background.edgesIgnoringSafeArea(.all)
                searchableSymbolGrid
            }
#if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
#endif
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
#else
        VStack(alignment: .leading, spacing: 10) {
            searchableSymbolGrid
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Divider()
            HStack {
                Button {
                    selectedSymbol = ""
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                }
                .keyboardShortcut(.cancelAction)
                Spacer()
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Done")
                }
            }
        }
        .padding()
        .frame(width: 520, height: 300, alignment: .center)
#endif
    }
}

struct SymbolPicker_Previews: PreviewProvider {
    @State static var symbol: String = "square.and.arrow.up"

    static var previews: some View {
        Group {
            SymbolPicker(Self.$symbol)
            SymbolPicker(Self.$symbol)
                .preferredColorScheme(.dark)
        }
    }
}
