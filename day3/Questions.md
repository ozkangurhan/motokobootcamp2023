 #<a id="questions"> 🙋 Questions </a>

**1.True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.**

A: True, with the current threshold signature scheme.

https://internetcomputer.org/how-it-works/chain-key-technology/

**2.True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.**

A: False. Bondary nodes are not part of the consensus mechanism,just intermediaries.

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

A: False. Need a hash tree.

https://gist.github.com/nomeata/f325fcd2a6692df06e38adedf9ca1877 



