//
//  DataLoader.swift
//  SwiftUITutor1
//
//  Created by Hakam Dev on 1/11/24.
//

import Foundation

func loadData<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let fileUrl = Bundle.main.url(forResource: fileName, withExtension: nil)
    else { fatalError() }
    
    do {
        data = try Data(contentsOf: fileUrl)
    } catch { fatalError() }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch { fatalError() }
}
