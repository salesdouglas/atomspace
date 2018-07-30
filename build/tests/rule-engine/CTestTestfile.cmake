# CMake generated Testfile for 
# Source directory: /root/OPENCOG/atomspace/tests/rule-engine
# Build directory: /root/OPENCOG/atomspace/build/tests/rule-engine
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ChainerUtilsUTest "ChainerUtilsUTest")
add_test(UREConfigUTest "UREConfigUTest")
add_test(RuleUTest "RuleUTest")
subdirs(forwardchainer)
subdirs(backwardchainer)
