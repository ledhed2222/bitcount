import java.lang.NumberFormatException;

public class Bitcount {
  private static final int BITS = 64;

  public static void main(String[] args) {
    if ((args.length < 1) || (args[0] == null) || (args[0].length() < 1)) {
      System.out.println("You must enter a number!");
      System.exit(1);
    }

    String raw = args[0];
    try {
      System.out.println(bitcount(Integer.parseInt(raw)));
    } catch (NumberFormatException e) {
      System.out.println(String.format("%s is not a number!", raw));
      System.exit(1);
    }
  }

  private static int bitcount(int input) {
    int count = 0;
    for (int i = 0; i < BITS; i++) {
      if ((input & 1) == 1) {
        count++;
      }
      input = input >> 1;
    }
    return count;
  }
}
