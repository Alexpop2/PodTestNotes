//
//  DataRepository.swift
//  notes test grpc
//
//  Created by Рабочий on 04/03/2019.
//  Copyright © 2019 Рабочий. All rights reserved.
//

import Foundation
import SwiftGRPC

class DataRepository {
    
    static let shared = DataRepository()
    private init() {}
    private let client = NoteServiceServiceClient.init(address: "127.0.0.1:50051", secure: false)
    
    func listNotes(completion: @escaping([Note]?, CallResult?) -> Void) {
        _ = try? client.list(Empty(), completion: { (notes, result) in
            DispatchQueue.main.async {
                completion(notes?.notes, result)
            }
        })
    }
    
    
}
