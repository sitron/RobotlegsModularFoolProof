Very basic foolproof test of Robotlegs Modular version.
It is using SwiftSuspender beta version to be able to garbage collect mapped singletons

There is no visual output (only a few buttons), check trace output. If working you should get traces for:
- mapped objects instantiation
- objects unmap (even ModuleView mediator)
- when clicking on "Test Model", one trace for each model (one per context here)

It seem to work perfectly
