```solidity
function transfer(address _to, uint256 _value) public {
    require(balances[msg.sender] >= _value, "Insufficient balance");
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
}

mapping(address => uint256) balances;

function balanceOf(address _owner) public view returns (uint256) {
    return balances[_owner];
}

event Transfer(address indexed _from, address indexed _to, uint256 _value);
```