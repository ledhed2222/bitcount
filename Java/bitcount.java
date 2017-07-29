import java.lang.NumberFormatException;

public class Bitcount {

	public static void main(String[] args) {
		if ((args.length < 1) || (args[0] == null) || (args[0].length() < 1))
			System.out.println("You must enter a number!");
		else {
			try {
				System.out.println(bitcount(Integer.parseInt(args[0])));
			} catch (NumberFormatException e) {
				System.out.println("You must enter a number!");
			}
		}
	}

	private static int bitcount(int input) {
		int count = 0;
		for (int i = 0; i < 32; i++) {
			if ((input & 1) == 1) 
				count++;
			input = input >> 1;
		}
		return count;
	}
}
