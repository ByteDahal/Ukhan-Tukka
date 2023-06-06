String numberchecker(String num) {
  late String nepalinum = '';
  for (int i = 0; i < num.length; i++) {
    if (num[i] == 1.toString()) {
      nepalinum = '$nepalinum१';
    } else if (num[i] == 2.toString()) {
      nepalinum = '$nepalinum२';
    } else if (num[i] == 3.toString()) {
      nepalinum = '$nepalinum३';
    } else if (num[i] == 4.toString()) {
      nepalinum = '$nepalinum४';
    } else if (num[i] == 5.toString()) {
      nepalinum = '$nepalinum५';
    } else if (num[i] == 6.toString()) {
      nepalinum = '$nepalinum६';
    } else if (num[i] == 7.toString()) {
      nepalinum = '$nepalinum७';
    } else if (num[i] == 8.toString()) {
      nepalinum = '$nepalinum८';
    } else if (num[i] == 9.toString()) {
      nepalinum = '$nepalinum९';
    } else if (num[i] == 0.toString()) {
      nepalinum = '$nepalinum०';
    }
  }
  return nepalinum;
}
