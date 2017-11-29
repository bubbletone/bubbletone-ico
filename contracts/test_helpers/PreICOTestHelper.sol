pragma solidity 0.4.18;

import '../PreICO.sol';


/// @title PreICOTestHelper pre-ico contract for test purposes. DON'T use it in production!
contract PreICOTestHelper is PreICO {
    using SafeMath for uint256;

    function PreICOTestHelper(address[] _owners, address funds) public
    PreICO(_owners, funds)
    {
    }

    function getCurrentTime() internal constant returns (uint) {
        return m_time;
    }

    function setTime(uint time) external onlyowner {
        m_time = time;
    }

    uint m_time;
}
