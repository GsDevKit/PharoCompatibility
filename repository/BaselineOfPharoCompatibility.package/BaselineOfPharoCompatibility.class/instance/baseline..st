baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'GLASS1'
          with: [ spec repository: 'github://glassdb/glass:master/repository' ];
        import: 'GLASS1';
        yourself.
      spec
        package: 'GsPharo-Core' with: [ spec requires: #('GsSqueakCommon') ];
        package: 'GsPharo-Tests' with: [ spec requires: #('GsPharo-Core') ];
        package: 'Multilingual-TextConversion';
        package: 'Multilingual-Tests'
          with: [ spec requires: #('Multilingual-TextConversion') ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Tests');
        group: 'Core' with: #('GsPharo-Core' 'Multilingual-TextConversion');
        group: 'Tests' with: #('GsPharo-Tests' 'Multilingual-Tests') ]