class Sell{
  String item;
  int quantity;

  Sell(this.item, this.quantity);

  @override
  String toString(){
    return 'Successfully sold $quantity $item!';
  }
}