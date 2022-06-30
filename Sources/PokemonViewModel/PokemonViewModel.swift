//
//  PokemonViewModel.swift
//  PokedexSwiftUI (iOS)
//
//  Created by Brandon De Jesus Escalante Nava on 23/06/22.
//

import Foundation

public class PokemonViewModel: ObservableObject {
    @Published public var pokemon = [Pokemon]()
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    public init() {
        fetchPokemon()
    }
    
    func fetchPokemon() {
        guard let url = URL(string: baseUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("El error: \(error)")
                return
            }
            
            guard let data = data?.removeStringInData(removedString: "null,") else { return }
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
}

extension Data {
    func removeStringInData(removedString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil }
        return data
    }
}
