# pay-gate-demo-script-for-2020-10-06

## Run
bash demo_flow.sh

## Script log
```
2020-10-06 demo flow

1. Signup 3 paygate accounts: user(john), charging station(i13), vending machine(vm)
2. Create blapay account for this 3 paygate accounts john(station, vm), i13(main), vm(main)
3. Deposit: john-->station
4. Withdraw: john/station to i13/main (auto bonus to john/vm)
5. Withdraw: john/vm to vm/main
6. Show all balance
Press (Y/y) to continue ...

y
= Signup a account: john
{
  "did": "FCJYKGTYCZEJKEORPINUDUPCIMFYIYXGW9HLHFCMXTYUBVOYURAKIHJJXMWZJARHIGGJTFSQGO9QBIZVC", 
  "status": "OK"
}
= Signup a account: i13
{
  "did": "G9E9EFZTWMUQUGALPUEWPHBIKWZAVPCHSFPHAOFLXBQUBEYEP9ERCYMIZCKBWHCALWLUESAOAB9E9WX9A", 
  "status": "OK"
}
= Signup a account: vm
{
  "did": "CLNMYQGPRJQVHDIYWTMLSUYJTDYYQWSMPUJZQORXGXP9NAJBWPATVCWLYLDBWIZVPBLVDH9KGTDSYWZSC", 
  "status": "OK"
}
= Signin: john
{
  "did": "FCJYKGTYCZEJKEORPINUDUPCIMFYIYXGW9HLHFCMXTYUBVOYURAKIHJJXMWZJARHIGGJTFSQGO9QBIZVC", 
  "status": "OK"
}
= Create a blapay account: john-->station
{
  "msg": {
    "id": "bla_12459f4e46c40c521e7adc85e389f5429762d0a2", 
    "private": "83ebeaa30a479fb20c1ddb24b683d3b0d2fa03bbadaed9979b12c35b6b979ff7", 
    "public": "b17b9a87d73fd8ae807eb8ef354f3ea631e678f1e3fd975507853fa5ed7adeb67d69e8d4cd13e92d056195d47e45a091665906ad05cd7e10ba5e7c8154309a2f"
  }, 
  "status": "OK"
}
= Create a blapay account: john-->vm
{
  "msg": {
    "id": "bla_12b76fa11e0cb433e22be319fb7f8223e06de150", 
    "private": "e1fe37b72f4d1ea54ed043139f54284bafaddfc172863c6db489e6139f0ed5ff", 
    "public": "0bfd27f014aab375b850e4b76cfe9b853756b6d8c0d45009866801c87886f64d9f4083306fcfc5789391b6454a970619bceb9ade3d2bdb5e6b125704a0092eaf"
  }, 
  "status": "OK"
}
= Create a blapay account: i13-->main
{
  "msg": {
    "id": "bla_dd752e58ae60be6ed904be152562c51bd32231da", 
    "private": "4e2f00734f8f8038ba3b490c5656baa8653eb0ff742052e17008a48d92db79ea", 
    "public": "3b2690126ff191016b402827a9db4fb6bf6b22aba838b211a4657af3a0d956bdf7bbb55a7c187db2f0292d2faef79b2ca8d5e5ceea66ebef6018f6fd76052a68"
  }, 
  "status": "OK"
}
= Create a blapay account: vm-->main
{
  "msg": {
    "id": "bla_362f357d6d7d5f2675706c62f116fd6cc0d41a79", 
    "private": "a492e72b85f28279b41852696c5ea25f3d3baa9f93cc0465ada55fc0f40d5bea", 
    "public": "3e0f9f250178b5ea687fe9071f1dd1acdfc48410a9a791f67a89e22133fbc52bfd5ea4153774bbec908e04b59ba819f8ab01f0e0c09e631402a73aab91fdfbb6"
  }, 
  "status": "OK"
}
= Get balance: john-->station
{
  "balance": "0", 
  "status": "OK"
}
= Deposit: john-->station
{"balance": "1000", "status": "OK"}
= Withdraw: john/station --> 100 --> i13/main
{
  "status": "OK"
}
= Get balance: john-->station
{
  "balance": "900", 
  "status": "OK"
}
= Get balance: i13-->main
{
  "balance": "100", 
  "status": "OK"
}
= Get balance: john-->vm
{
  "balance": "100", 
  "status": "OK"
}
= Withdraw: john/vm --> 10 --> vm/main
{
  "status": "OK"
}
= Total balance:
= Balance: john/station:
{
  "balance": "900", 
  "status": "OK"
}
= Balance: john/vm:
{
  "balance": "90", 
  "status": "OK"
}
= Balance: i13/main:
{
  "balance": "100", 
  "status": "OK"
}
= Balance: vm/main:
{
  "balance": "10", 
  "status": "OK"
}
```
