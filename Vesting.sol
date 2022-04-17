pragma solidity ^0.8.9;
// SPDX-License-Identifier: UNLICENSED

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

contract Vesting is Context, Ownable{

    using SafeMath for uint256;
    
    struct VestingSchedule{
        uint256 cliff;
        uint256 vestingTime;
        uint256 vestingAmt;
        uint256 vestingAmtLeft;
        uint256 lastReleaseMonth;
    }

    mapping(address => VestingSchedule) internal locking;
    mapping(address => VestingSchedule) internal presale1Locking;
    mapping(address => VestingSchedule) internal presale2Locking;
    mapping(address => VestingSchedule) internal presale3Locking;

    address tokenCAddress;
    address presale1CAddress;
    address presale2CAddress;
    address presale3CAddress;

    modifier onlyTokenC{
        require(_msgSender() == tokenCAddress, "UnAuthorized");
        _;
    }

    modifier onlyPreSale1C{
        require(_msgSender() == presale1CAddress, "UnAuthorized");
        _;
    }

    modifier onlyPreSale2C{
        require(_msgSender() == presale2CAddress, "UnAuthorized");
        _;
    }

    modifier onlyPreSale3C{
        require(_msgSender() == presale3CAddress, "UnAuthorized");
        _;
    }

    constructor(address tokenCAdd_, address presale1CAdd_,
                address presale2CAdd_, address presale3CAdd_){
        tokenCAddress = tokenCAdd_;
        presale1CAddress = presale1CAdd_;
        presale2CAddress = presale2CAdd_;
        presale3CAddress = presale3CAdd_;
    }

    function setupVesting(uint256 cliff_, uint256 vestingT_, uint256 vestingA_, uint256 totalVesting_, address account_) external onlyTokenC{
        locking[account_].cliff = cliff_;
        locking[account_].vestingTime = vestingT_;
        locking[account_].vestingAmt = vestingA_;
        locking[account_].vestingAmtLeft = totalVesting_;
    }

    function setupP1Vesting(uint256 cliff_, uint256 vestingT_, uint256 vestingA_, uint256 totalVesting_, address account_) internal onlyPreSale1C{
        presale1Locking[account_].cliff = cliff_;
        presale1Locking[account_].vestingTime = vestingT_;
        presale1Locking[account_].vestingAmt = vestingA_;
        presale1Locking[account_].vestingAmtLeft = totalVesting_;
    }

    function setupP2Vesting(uint256 cliff_, uint256 vestingT_, uint256 vestingA_, uint256 totalVesting_, address account_) internal onlyPreSale2C{
        presale2Locking[account_].cliff = cliff_;
        presale2Locking[account_].vestingTime = vestingT_;
        presale2Locking[account_].vestingAmt = vestingA_;
        presale2Locking[account_].vestingAmtLeft = totalVesting_;
    }

    function setupP3Vesting(uint256 cliff_, uint256 vestingT_, uint256 vestingA_, uint256 totalVesting_, address account_) internal onlyPreSale3C{
        presale3Locking[account_].cliff = cliff_;
        presale3Locking[account_].vestingTime = vestingT_;
        presale3Locking[account_].vestingAmt = vestingA_;
        presale3Locking[account_].vestingAmtLeft = totalVesting_;
    }

    function checkLocked(address account_, uint256 publicSaleDate_) public view onlyTokenC returns(uint256) {
        uint256 locked = 0;

        // the account is from internal team
        if(locking[account_].vestingAmtLeft > 0){ 
            // update vesting
            updateVesting_(locking[account_], publicSaleDate_);
            locked = locked.add(locking[account_].vestingAmtLeft);
        }
        
        // the account is from presale 1 
        if(presale1Locking[account_].vestingAmtLeft > 0){ 
            // update vesting
            updateVesting_(presale1Locking[account_], publicSaleDate_);
            locked = locked.add(presale1Locking[account_].vestingAmtLeft);
        }

        // the account is from presale 2 
        if(presale2Locking[account_].vestingAmtLeft > 0){ 
            // update vesting
            updateVesting_(presale2Locking[account_], publicSaleDate_);
            locked = locked.add(presale2Locking[account_].vestingAmtLeft);
        }

        // the account is from presale 3 
        if(presale3Locking[account_].vestingAmtLeft > 0){ 
            // update vesting
            updateVesting_(presale3Locking[account_], publicSaleDate_);
            locked = locked.add(presale3Locking[account_].vestingAmtLeft);
        }

        return locked;
    }

    function updateVesting_(VestingSchedule memory vestingAcc, uint256 publicSaleDate_) private view{
        if(vestingAcc.vestingAmtLeft > 0 && publicSaleDate_ != 0){
            uint256 cliffD_ = publicSaleDate_.add(vestingAcc.cliff);
            require(block.timestamp > cliffD_, "cliff period has not ended");
            uint256 vestingTPassed = (block.timestamp.sub(cliffD_)).div(vestingAcc.vestingTime);
            vestingTPassed = vestingTPassed.add(1);
            vestingTPassed = vestingTPassed.sub(vestingAcc.lastReleaseMonth);

            // increment of vestingTPassed is done for the following reason:
            // cliff time has expired but first month after vesting has not reached
            // release the 0th period amount

            vestingAcc.vestingAmtLeft = vestingAcc.vestingAmtLeft.sub(vestingAcc.vestingAmt.mul(vestingTPassed));
            vestingAcc.lastReleaseMonth = vestingTPassed;
            if(vestingAcc.vestingAmtLeft < vestingAcc.vestingAmt)
                vestingAcc.vestingAmtLeft = 0;
        }
    }

    function setPresale1Address(address address_) external onlyOwner{
        presale1CAddress = address_;
    }

    function setPresale2Address(address address_) external onlyOwner{
        presale2CAddress = address_;
    }

    function setPresale3Address(address address_) external onlyOwner{
        presale3CAddress = address_;
    }

    function setTokenAddress(address address_) external onlyOwner{
        tokenCAddress = address_;
    }

}