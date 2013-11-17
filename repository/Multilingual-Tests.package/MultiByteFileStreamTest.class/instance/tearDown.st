testing
tearDown
   FileDirectory default deleteFileNamed:'foobug6933'.
   FileDirectory default deleteFileNamed: self lineEndTestFile ifAbsent: [].