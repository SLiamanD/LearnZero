//
//  MobileStorage.swift
//  LearnZero
//
//  Created by Алексей Грачев on 04.09.2022.
//

import Foundation

protocol MobileStorage {
    func getAll() -> Set<Mobile>
    func findByImei(_ imei: String) -> Mobile?
    func save(_ mobile: Mobile) throws -> Mobile
    func delete(_ product: Mobile) throws
    func exists(_ product: Mobile) -> Bool
}

struct Mobile: Hashable {
    let imei: String
    let model: String
}   

//class publicMibileClass: MobileStorage {
//    
//    func getAll() -> Set<Mobile> {
//        <#code#>
//    }
//    
//    func findByImei(_ imei: String) -> Mobile? {
//        <#code#>
//    }
//    
//    func save(_ mobile: Mobile) throws -> Mobile {
//        <#code#>
//    }
//    
//    func delete(_ product: Mobile) throws {
//        <#code#>
//    }
//    
//    func exists(_ product: Mobile) -> Bool {
//        <#code#>
//    }
//}



