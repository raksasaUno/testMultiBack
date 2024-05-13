import Set "mo:map/Set";
import {phash} "mo:map/Map";
import Principal "mo:base/Principal";
import Internal "mo:⛔";
import User "actorClass";

actor {
    stable let actors = Set.new<Principal>();

    public func newActor(name : Text) : async Principal {
        Internal.cyclesAdd<system>(13_846_199_230 + 6_153_891_538);
        let newCanister = await User.User(name);
        let userPrincipal = Principal.fromActor(newCanister);
        Set.add<Principal>(actors, phash, userPrincipal);
        userPrincipal
    };

    public query func getCanistersID(): async [Text]{
        let actorPrincipals = Set.toArray<Principal>(actors);
        let size = Set.size(actors);
        Internal.Array_tabulate<Text>(size, func x = Principal.toText(actorPrincipals[x]));
    };

    
};
