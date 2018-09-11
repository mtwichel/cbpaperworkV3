
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
  'Quarter Roll': 1000,
  'Dime Roll': 500,
  'Nickle Roll': 200,
  'Penny Roll': 50,
}; 

const MONEY_GROUP_TYPES = {

  'Till': [
    'Five',
    'One',
    'Quarter',
    'Dime',
    'Nickle',
    'Penny',
  ],

  'BankBag': [
    'Twenty',
    'Ten',
    'Five',
    'One',
    'Quarter Rolls',
    'Dime Rolls',
    'Nickle Rolls',
    'Penny Rolls',
  ],

  'Deposit': [
    'Hundred',
    'Fifty',
    'Twenty',
    'Ten',
    'Five',
    'Two',
    'One',
    'Dollar Coin',
    'Fifty Cent Coin',
    'Quarter',
    'Dime',
    'Nickle',
    'Penny',
  ],
};

const MULTIPLES_BILL_NAME ={
  'Hundred': 'Hundreds',
  'Fifty': 'Fifties',
  'Twenty': 'Twenties',
  'Ten': 'Tens',
  'Five': 'Fives',
  'Two': 'Twos',
  'One': 'Ones',
  'Dollar Coin': 'Dollar Coins',
  'Fifty Cent Coin': 'Fifty Cent Coins',
  'Quarter': 'Quarters',
  'Dime': 'Dimes',
  'Nickle': 'Nickles',
  'Penny': 'Pennies',
  'Quarter Roll': 'Quarter Rolls',
  'Dime Roll': 'Dimes Rolls',
  'Nickle Roll': 'Nickle Rolls',
  'Penny Roll': 'Penny Rolls',
};

const BILL_IDS = {
  'Hundred': 0,
  'Fifty': 1,
  'Twenty': 2,
  'Ten': 3,
  'Five': 4,
  'Two': 5,
  'One': 6,
  'Dollar Coin': 7,
  'Fifty Cent Coin': 8,
  'Quarter': 9,
  'Dime': 10,
  'Nickle': 11,
  'Penny': 12,
  'Quarter Roll': 13,
  'Dime Roll': 14,
  'Nickle Roll': 15,
  'Penny Roll': 16,
};

class MoneyGroup{
 
  List _billTypes;
  Map<String, int> values;
  int _total;
  String _name;

  MoneyGroup(String type, String name){
    values = {};
    _total = 0;
    _name = name;
    _billTypes = MONEY_GROUP_TYPES[type];
    _billTypes.forEach((billType) => values[billType] = 0);
    _updateTotal();
  }

  int getNumberOfBillTypes(){
    return _billTypes.length;
  }

  String getMultiplesBillName(int id){
    return MULTIPLES_BILL_NAME[_billTypes[id]];
  }

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
