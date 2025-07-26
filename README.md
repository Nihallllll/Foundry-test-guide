#Commands learned 
1. forge build           : builds up the test and the src file ,according to me 
2. forge test            : test the tests 
3. forge test -vvvvv     : detailed test result , the detail is based on number of v's min 1 max 5 , and v means verbosity
4. forge test --match-path test/counter.sol  : for perticular test file to run 
5. --gas-report          : gives the gas usage report 
6. forge fmt             : formates the code 


#Syntax
1. vm.expectRevert()     : Expects the next call to get revert
2. import "forge-std/console.sol" : Remember that this file is only to be imported in src folder not test coz Test alredy has this 
3. vm.expectRevert("")   : Expects the call to fail, and **testFail is been deprecated**
4. test_Revert ===  testFail : but try not to use this much 


#Contracts 
1. Counter.sol => Basic counter contract with setNumber and increment functions 
