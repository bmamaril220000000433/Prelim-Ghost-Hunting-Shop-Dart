class Buy{
  String item;
  int quantity;

  Buy(this.item, this.quantity);

  @override
  String toString(){
    return 'Successfully bought $quantity $item!';
  }
}