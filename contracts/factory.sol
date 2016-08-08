import 'base.sol';

contract ERC20BaseFactory {
    function createERC20Base(uint initial_balance) returns (ERC20Base b) {
        b = new ERC20Base(initial_balance);
        b.transfer(msg.sender, initial_balance);
        return b;
    }
}
