Very basic foolproof test of Robotlegs Modular version.
It is using SwiftSuspender beta version to be able to garbage collect mapped singletons

Tags for each version:
v1 shows that a RL (non modular) app can be added and removed easily
v2 shows that a RL modular app can be added and removed easily, even if the event used to make the inter-module connection is taken from the module (see TestEvent)
v3 shows that a RL modular app can be added multiple times (simultaneously) and removed without problem
v4 shows that all events mapped to ModuleCommandMap must be manually unmapped. Otherwise ModuleCommandMap is never released (see comments in BaseMediator) 

There is no visual output (only a few buttons), check trace output. If working you should get traces for:
- mapped objects instantiation
- objects unmap (even ModuleView mediator)
- when clicking on "Test Model", it tests that the model exists (just calling a dumb method on it) 

Except for v4 (see above) it seems to work perfectly!

References:
Stray RL modular version: http://github.com/Stray/robotlegs-utilities-Modular
SwiftSuspender beta download: http://github.com/tschneidereit/SwiftSuspenders/downloads
Keith Peters's Minimal Comps: http://www.minimalcomps.com/
