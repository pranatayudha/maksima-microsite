class RatingPARIFormatter {
  static String forOutput(int freq) {
    String? transacFreq;
    if (freq >= 15 && freq < 25) {
      transacFreq = 'AA';
    } else if (freq >= 25) {
      transacFreq = 'AAA';
    } else {
      transacFreq = '-';
    }

    return transacFreq;
  }
}
