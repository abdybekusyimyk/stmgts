void main(List<String> args) {
  var larii = 4;
  var gari = 7;

  var oshui = (larii + gari) - 1;

  var lariatbaikaldy = (oshui - larii);
  var gariatbaikaldy = (oshui - gari);

  if (lariatbaikaldy > gariatbaikaldy) {
    print(
        'gari akcha ber larige (lari=>$lariatbaikaldy gari=> $gariatbaikaldy)');
  } else {
    print('gariber larige');
  }
  // print(lariatbaikaldy);
  // print(gariatbaikaldy);
}
