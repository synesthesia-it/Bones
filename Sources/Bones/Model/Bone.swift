import Foundation
import Gloss
import Boomerang

public class {{ name|firstUppercase }}: Glossy, ModelType {
    var id: String
    
    public required init? (json: JSON) {
        
        guard let id: String = "id" <~~ json
            else { return nil }
        
        self.id = id
    }
    
    public func toJSON() -> JSON? {
        return jsonify([
            "id" ~~> id
            ])
    }
}
