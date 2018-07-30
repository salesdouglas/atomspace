# CMake generated Testfile for 
# Source directory: /root/OPENCOG/atomspace/tests/haskell/haskellTest
# Build directory: /root/OPENCOG/atomspace/build/tests/haskell/haskellTest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(HaskellAtomSpace "sh" "runTest.sh" "/root/OPENCOG/atomspace/build/opencog/haskell" "/root/OPENCOG/atomspace/tests/haskell/haskellTest")
set_tests_properties(HaskellAtomSpace PROPERTIES  WORKING_DIRECTORY "/root/OPENCOG/atomspace/tests/haskell/haskellTest")
