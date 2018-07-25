import "../../common/ErrorCodes.sol";
import "../../common/Version.sol";
import "./UserRole.sol";
import "./User.sol";

/**
 * Processor data contract
 */
contract Processor is User {
  // NOTE: members must be public to be indexed for search
  bytes32 loc;
  bytes32 cropName;
  uint quantity;


  function Processor(address _account, string _username, bytes32 _pwHash, uint _id, bytes32 _loc) 
    public User(_account, _username, _pwHash, _id, UserRole.PROCESSOR) {
      loc = _loc;
  }


}
