package JUnit02.Ex01.Assert02;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class SampleFileReader{
	public void ReadAllText() {
		final int EOF = -1;
		final String FILENAME = "sample.txt";
		final String SUBPATH = "/src/JUnit02/Ex01/Assert02/";
		BufferedReader reader = null;
		char ch;
		
		//현재 프로젝트의 경로 읽어 들이기
		String path = System.getProperty("user.dir");
		try {
			reader = new BufferedReader(new FileReader(path + SUBPATH + FILENAME));
			
			while( (ch = (char) reader.read()) != EOF)
				System.out.println(ch);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}









