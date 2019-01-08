pragma solidity 0.5.2;

//@title User Permission 
//@author Aditya Hegde

contract Round2{
    

    mapping (address => mapping (address => bool)) private allowance; /*user address approves others.
		So the mapping inside the mapping keeps track of addresses that the user has approved*/
		    
	    //grants permission for users. Only the user can do it.	
	function grantPermission(address _user) public returns (bool) {
	    address user = _user;
	    allowance [msg.sender][_user] = true;
	    return true;
	}	
	
	//checks if the other address has given permission or not
	function permissionAllowed(address userallowed) public view returns (bool) {
	    return allowance[userallowed][msg.sender];
	    
	    }

	    
}