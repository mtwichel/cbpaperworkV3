
const BILL_VALUES = {
  'Hundred': 10000,
  'Fifty': 5000,
  'Twenty': 2000,
  'Ten': 1000,
  'Five': 500,
  'Two': 200,
  'One': 100,
  'Dollar Coin': 100,
  'Fifty Cent Coin': 50,
  'Quarter': 25,
  'Dime': 10,
  'Nickle': 5,
  'Penny': 1,
  'Quarter Rolls': 1000,
  'Dime Rolls': 500,
  'Nickle Rolls': 200,
  'Penny Rolls': 50,
}; 

class Till extends MoneyGroup{

  static const BILL_TYPES = [
    'Five',
    'One',
    'Quarter',
    'Dime',
    'Nickle',
    'Penny',
  ];

  Till(){
    //initialize empty till
    BILL_TYPES.forEach((type) => values[type] = 0);
    _updateTotal();
  }

}

class BankBag extends MoneyGroup{

  static const BILL_TYPES = [
    'Twenty',
    'Ten',
    'Five',
    'One',
    'Quarter Rolls',
    'Dime Rolls',
    'Nickle Rolls',
    'Penny Rolls',
  ];

  Till(){
    //initialize empty till
    BILL_TYPES.forEach((type) => values[type] = 0);
    _updateTotal();
  }

}

abstract class MoneyGroup{
  int _total;
  Map<String, int> values;


  void _updateTotal() {
    _total = 0;
    values.forEach((name,amount) => 
    _total += amount * BILL_VALUES[name]); 
  }
  int getTotal(){
    _updateTotal();
    return _total;
  }
  int getValue(String identifier){
    return values[identifier];
  }
  void setValue(String identifier, int newValue){
    values[identifier] = newValue;
  }
}