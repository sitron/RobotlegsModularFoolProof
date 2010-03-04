Very basic foolproof test of Robotlegs Modular version.
It is using SwiftSuspender beta version to be able to garbage collect mapped singletons

Tags for each version:
v1 shows that a RL (non modular) app can be added and removed easily
v2 shows that a RL modular app can be added and removed easily, even if the event used to make the inter-module connection is taken from the module (see TestEvent)
v3 shows that a RL modular app can be added multiple times (simultaneously) and removed without problem

There is no visual output (only a few buttons), check trace output. If working you should get traces for:
- mapped objects instantiation
- objects unmap (even ModuleView mediator)
- when clicking on "Test Model", one trace for each model (one per context here)

It seems to work perfectly!

References:
Stray RL modular version: http://github.com/Stray/robotlegs-utilities-Modular
SwiftSuspender beta download: http://github.com/tschneidereit/SwiftSuspenders/downloads
