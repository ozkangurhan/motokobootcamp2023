 #<a id="questions"> 🙋 Questions </a>

**1.True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.**

A: True, with the current threshold signature scheme.

https://internetcomputer.org/how-it-works/chain-key-technology/

**2.True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.**

A: True. When you make an "update call" to a canister, the boundary nodes will participate in the consensus protocol to validate and propagate the update to the rest of the network. This process is necessary to ensure that the state of the canister is updated correctly and that all nodes in the network have the same view of the state.

On the other hand, when you make a "query call" to a canister, the boundary nodes do not participate in the consensus protocol. Instead, the query is handled by the canister's runtime, which can respond to the query directly without the need for consensus. This allows for faster and more efficient handling of read-only operations.

It's important to note that query calls are only read-only operations and do not change the state of the canister, that's why there's no need for consensus. But in case of update calls, it will change the state of the canister, therefore the need for consensus.

https://eprint.iacr.org/2021/632.pdf

https://forum.dfinity.org/t/boundary-node-roadmap/15562


**3.True or False: I can create a certified variable that will certify the response of the following actor:** 

```
actor {
    public func hello(name : Text) : async Text {
        return ("hello # name");
    };
}
```

A: False. Need hash tree.

https://gist.github.com/nomeata/f325fcd2a6692df06e38adedf9ca1877 



