//
//  HTTPManager.swift
//  Playground
//
//  Created by jiwoong on 2021/07/22.
//

import UIKit
import Alamofire

struct Response: Codable {
    let success: Bool
    let result: String
    let message: String
}

class HTTPManager {
    static let shared = HTTPManager()
    
    let header: HTTPHeaders = [
        "Content-Type" : "application/json"
    ]
    
    func getFunction(url: String) {
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   encoding: URLEncoding.default,
                   headers: ["Content-Type":"application/json", "Accept":"applicatioin/json"])
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                print(response)
            }
    }
    
    func postFunction(url: String) {
        let body: Parameters = [:]
        
        AF.request(url,
                   method: .post,
                   parameters: body,
                   encoding: JSONEncoding.default,
                   headers: header)
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                print(response)
            }
    }
}
