package TableViewTest.DAO;

import java.util.List;

import TableViewTest.People;

public interface DatabaseService {
	public boolean open(String dbName, boolean isReadOnly);
	public List<People> getTable();
}
/*
 * CREATE TABLE test(
 * 	num int primary key,
 *  name varchar(20),
 *  age int
 * );
 * 
 * insert into test values(1, "이름", 10);
 * insert into test values(2, "심심", 20);
 */
