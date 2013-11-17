"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.

gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  baseline: 'PharoCompatibility';
  repository: 'filetree://', gitPath, '/ston/repository';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfPharoCompatibility' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

