import Foundation
import ObjectMapper

public class PSMoney: Mappable {
    public let amount: String
    public let currency: String
    
    public init(amount: String, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    required public init?(map: Map) {
        do {
            amount = try map.value("amount")
            currency = try map.value("currency")
        } catch {
            return nil
        }
    }
    
    public func mapping(map: Map) {
    }
}
