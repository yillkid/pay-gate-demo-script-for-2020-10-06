clear; 
echo "2020-10-06 demo flow"
echo ""
echo "1. Signup 3 paygate accounts: user(john), charging station(i13), vending machine(vm)"
echo "2. Create blapay account for this 3 paygate accounts john(station, vm), i13(main), vm(main)"
echo "3. Deposit: john-->station"
echo "4. Withdraw: john/station to i13/main (auto bonus to john/vm)"
echo "5. Withdraw: john/vm to vm/main"
echo "6. Show all balance"

echo "Press (Y/y) to continue ..."
echo ""


read input
if [ $input != "Y" ] && [ $input != "y" ]; then
echo "Exiting..."
exit 0
fi

rm -rf ../accounts;

echo "= Signup a account: john"
# bash signup_user.sh; # john
echo "= Signup a account: i13"
# bash signup_station.sh; # i13
echo "= Signup a account: vm"
# bash signup_vm.sh; # vending machine
echo "= Signin: john"
# bash signin.sh; # john
echo "= Create a blapay account: john-->station"
bash create_blapay_account_1.sh; # john, station
echo "= Create a blapay account: john-->vm"
bash create_blapay_account_2.sh; # john, vm
echo "= Create a blapay account: i13-->main"
bash create_blapay_account_3.sh; # i13, main
echo "= Create a blapay account: vm-->main"
bash create_blapay_account_4.sh; # vending machine, main
echo "= Get balance: john-->station"
bash get_balance_1.sh; # john, station 
echo "= Deposit: john-->station"
bash deposit.sh; # john, station
echo "= Withdraw: john/station --> 100 --> i13/main"
bash withdrawal_1.sh; # john/station, i13/main
echo "= Get balance: john-->station"
bash get_balance_1.sh; # john/station
echo "= Get balance: i13-->main"
bash get_balance_2.sh; # i13/main
echo "= Get balance: john-->vm"
bash get_balance_3.sh; # john/vm
echo "= Withdraw: john/vm --> 10 --> vm/main"
bash withdrawal_2.sh; # john/vm, vm/main

echo "= Total balance:"
echo "= Balance: john/station:"
bash get_balance_1.sh; # john/station
echo "= Balance: john/vm:"
bash get_balance_3.sh; # john/vm
echo "= Balance: i13/main:"
bash get_balance_2.sh; # i13/main
echo "= Balance: vm/main:"
bash get_balance_4.sh; # vm/main
