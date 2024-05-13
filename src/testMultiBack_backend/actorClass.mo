shared actor class User(name: Text){
    var counter = 0;
    public func getName(): async Text{
        counter += 1;
        name
    };
    public func getCounter(): async Nat {counter};
};