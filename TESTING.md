Tested with Factorio 2.1.24 using headless modes.

Fresh creation with the literal required dependency closure, followed by two 240-tick loads, passed.
A populated ownership migration fixture retained whole-root cycles, shared references, registered metatables, a script inventory containing 42 items, and a rendering object in two 240-tick loads. Existing Lua migrations are guarded against replay into adopted state.

These checks do not claim complete gameplay or visual coverage.

Public dependency-namespace closure was rechecked with maintained public companion providers in a fresh create and two 1200-tick runs.
