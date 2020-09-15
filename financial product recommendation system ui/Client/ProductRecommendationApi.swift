//
//  ProductRecommendationApi.swift
//  financial product recommendation system ui
//
//  Created by Frank NGAI on 14/9/2020.
//  Copyright © 2020 Frank NGAI. All rights reserved.
//

import SwiftUI

final class ProductRecommendationApi: ObservableObject {

    func GetProductRecommendationResponse(complete: @escaping ([ProductRecommendation]) -> Void) {

        let url = URL(string: "http://localhost:5000/recommendation/product")!

        let parameters: [String: Any] = [
            "user": "CUST00000134",
            "age": 20,
            "gender": "M",
            "maritalStatus": "SINGLE",
            "haveChild": "N",
            "education": "SECONDARY"
        ]

        let session = URLSession.shared

        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 60)
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        request.httpMethod = "POST"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }

        let task = session.dataTask(with: request, completionHandler: { data, response, error in
            guard let data = data,
                let response = response as? HTTPURLResponse,
                error == nil else {                                              // check for fundamental networking error
                print("error", error ?? "Unknown error")
                return
            }

            guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
                print("statusCode should be 2xx, but is \(response.statusCode)")
                print("response = \(response)")
                return
            }

//            let responseString = String(data: data, encoding: .utf8)
//            print("responseString = \(responseString)")
            
//            do {
                let prs: [ProductRecommendation] = try! JSONDecoder().decode([ProductRecommendation].self, from: data)

                complete(prs)
//            } catch let error {
//                completion(Result.failure(APPError.jsonParsingError(error as! DecodingError)))
//            }
        })

        task.resume()
    }
}


struct ProductRecommendationApi_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
