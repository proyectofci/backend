  package GENERAL;

import java.text.NumberFormat;
import java.util.Locale;

public class CurrencyFormat {

  public String getCurrency(double amount) {
    Locale locale = new Locale("en", "US");
    NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);

    return currencyFormatter.format(amount);
  }

}
