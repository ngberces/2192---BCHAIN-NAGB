// MERCADO, KARL MATTHEW H. / WD-401
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Enum{
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

     function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function accept() public {
        status = Status.Accepted;
    }

    function reset() public {
        delete status;
    }
}