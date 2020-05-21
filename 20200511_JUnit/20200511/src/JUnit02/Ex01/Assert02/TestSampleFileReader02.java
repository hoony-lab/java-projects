package JUnit02.Ex01.Assert02;

import static org.junit.Assert.fail;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;

public class TestSampleFileReader02{
	@Rule
	public ExpectedException thrown = ExpectedException.none();
	
	@Test//(expected = FileNotFoundException.class)
	public void ReadAllText() throws Exception {
		final int EOF = -1;
		final String FILENAME = "sample.txt";
		final String SUBPATH = "/src/JUnit02/Ex01/Assert02/";
		BufferedReader reader = null;
		int ch;
		
		//현재 프로젝트의 경로 읽어 들이기
		String path = System.getProperty("user.dir");
		
		thrown.expect(FileNotFoundException.class);
		thrown.expectMessage(FILENAME + " 존재하지 않음."); 
//		fail();
		thrown.expect(IOException.class);
		thrown.expectMessage(" 읽기 실패.");
		fail();	
		reader = new BufferedReader(new FileReader(path + SUBPATH + FILENAME));
		while( (ch = reader.read()) != EOF)
			System.out.println((char) ch);
	}
}









