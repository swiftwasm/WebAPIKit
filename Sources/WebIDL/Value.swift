/// Default and Const Values
public enum IDLValue: Decodable {
    case string(String)
    case number(String)
    case boolean(Bool)
    case null
    case infinity
    case nan
    case sequence
    case dictionary(IDLDictionary)
}
