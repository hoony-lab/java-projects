package junit;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.junit.Rule;
import org.junit.rules.ExpectedException;

public class TestSampleFileReader01 {
	@Rule
	public ExpectedException thrown = ExpectedException.none();

	public void ReadAllText() {

		final int EOF = -1;
		final String FILENAME = "sample.txt";
		final String SUBPATH = "/src/junit/";
		BufferedReader reader = null;
		int ch;

		String path = System.getProperty("user.dir");

		thrown.expect(IOException.class);
		thrown.expectMessage(FILENAME + " doesn't exist ~");

		//		fail();

		thrown.expect(FileNotFoundException.class);
		thrown.expectMessage(FILENAME + " doesn't exist ~");

		try {
			reader = new BufferedReader(new FileReader(path + SUBPATH + FILENAME));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		while((ch = reader.read()) != EOF) {
			System.out.println((char) ch);
		}

	}
}
