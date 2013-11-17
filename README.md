PharoCompatibility
==================

Pharo compatibility for GemStone: various extensions to Gemstone/GLASS to improve its compatibility with Pharo.

- Multilingual-TextConversion implements various text encoding algorithms
- GsPharo-Core implements a collection of Pharo-specific methods

## Installation instructions

```Smalltalk
     Metacello new
      baseline: 'PharoCompatibility';
      repository: 'github://glassdb/PharoCompatibility:master/repository';
      load: 'Core'
```

Note that this project depends upon [the GitHub GLASS project](https://github.com/glassdb/glass) and should be considered experimental for the time being.
