module metaschool::calculator
{
    struct Calculator has key {
        result: vector<u8>
    }   

    fun create_calculator(account: &signer) acquires Calculator {
        if (exists<Calculator>(signer::address_of(account))) {
            let calculator = borrow_global_mut<Calculator>(
                signer::address_of(account)
            );
            calculator.result = 0;
        } else {
            move_to(account, Calculator{result:0});
        }


    }

    fun add(account: &signer, num_1: u64, num_2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"I am an add function";

        get_result(account);
    }

    fun subtract(account: &signer, num_1: u64, num_2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"I am a subtract function";

        get_result(account);
    }

    fun multiply(account: &signer, num_1: u64, num_2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"I am a multiply function";

        get_result(account);
    }

    fun divide(account: &signer, num_1: u64, num_2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"I am a divide function";

        get_result(account);
    }

    fun power(account: &signer, num_1: u64, num_2: u64) acquires Calculator {
        let calculator = borrow_global_mut<Calculator>(signer::address_of(account));
        calculator.result = b"I am a power function";

        get_result(account);
    }

    fun get_result(account: &signer): vector<u8> acquires Calculator {
        let calculator = borrow_global<Calculator>(signer::address_of(signer));
        calculator.result
    }


}