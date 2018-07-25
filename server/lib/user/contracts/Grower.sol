import "../../common/ErrorCodes.sol";
import "../../common/Version.sol";
import "./UserRole.sol";
import "./User.sol";

/**
 * Grower data contract
 */
contract Grower is User {
  // NOTE: members must be public to be indexed for search
  bytes32 loc;
  bytes32 cropName;
  uint quantity;


  function Grower(address _account, string _username, bytes32 _pwHash, uint _id) 
    public User(_account, _username, _pwHash, _id, UserRole.GROWER) {
  }


  function setParams(bytes32 _loc, bytes32 _cropName, uint _quantity) public {
      loc = _loc;
      cropName = _cropName;
      quantity = _quantity;
  }
 

}
