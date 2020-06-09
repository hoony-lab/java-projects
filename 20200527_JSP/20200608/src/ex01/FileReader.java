package ex01;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class FileReader {
	public List<String> getFileContents(String fileName) {
		List<String> list = new ArrayList<String>();

		BufferedReader br;
		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "euc-kr"));

			String line = null;

			while ((line = br.readLine()) != null)
				list.add(line);

		} catch (UnsupportedEncodingException | FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public List<Customer> getCustomerList(List<String> lst) {
		List<Customer> customLst = new ArrayList<Customer>();

		for (String str : lst) {
			String[] strArr = str.split("\t");
			Customer customer = new Customer();

			// System.out.println(str + "\n");

			customer.setCustomerID(Integer.parseInt(strArr[0]));
			customer.setCustomerName(strArr[1]);
			customer.setContactName(strArr[2]);
			customer.setAddress(strArr[3]);
			customer.setCity(strArr[4]);
			customer.setPostalCode(strArr[5]);
			customer.setCountry(strArr[6]);

			customLst.add(customer);
		}
		return customLst;
	}

	public List<Category> getCategoryList(List<String> lst) {
		List<Category> list = new ArrayList<Category>();

		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Category o = new Category();
			o.setCategoryid(Integer.parseInt(strArr[idx++]));
			o.setCategoryname(strArr[idx++]);
			o.setDescription(strArr[idx++]);
			
			list.add(o);
		}
		
		return list;
	}
	
	
	public List<Employee> getEmployeeList(List<String> lst) {
		List<Employee> list = new ArrayList<Employee>();
		
		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Employee o = new Employee();
			o.setEmployeeid(Integer.parseInt(strArr[idx++]));
			o.setLastname(strArr[idx++]);
			o.setFirstname(strArr[idx++]);
			o.setBirthdate(strArr[idx++]);
			o.setPhoto(strArr[idx++]);
			o.setNotes(strArr[idx++]);
			
			list.add(o);
		}
		
		return list;
	}
	
	public List<Orders> getOrdersList(List<String> lst) {
		List<Orders> list = new ArrayList<Orders>();
		
		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Orders o = new Orders();
			o.setOrderid(Integer.parseInt(strArr[idx++]));
			o.setCustomerid(Integer.parseInt(strArr[idx++]));
			o.setEmployeeid(Integer.parseInt(strArr[idx++]));
			o.setOrderdate(strArr[idx++]);
			o.setShipperid(Integer.parseInt(strArr[idx++]));
			
			list.add(o);
		}
		
		return list;
	}
	
	public List<Orderdetail> getOrderdetailList(List<String> lst) {
		List<Orderdetail> list = new ArrayList<Orderdetail>();
		
		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Orderdetail o = new Orderdetail();
			o.setOrderidorderdetailid(Integer.parseInt(strArr[idx++]));
			o.setProductid(Integer.parseInt(strArr[idx++]));
			o.setQuantity(Integer.parseInt(strArr[idx++]));
			o.setOrderid(Integer.parseInt(strArr[idx++]));
			
			list.add(o);
		}
		
		return list;
	}
	
	public List<Product> getProductList(List<String> lst) {
		List<Product> list = new ArrayList<Product>();
		
		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Product o = new Product();
			o.setProductid(Integer.parseInt(strArr[idx++]));
			o.setProductname(strArr[idx++]);
			o.setSupplierid(Integer.parseInt(strArr[idx++]));
			o.setCategoryid(Integer.parseInt(strArr[idx++]));
			o.setUnit(strArr[idx++]);
			o.setPrice(Float.parseFloat(strArr[idx++]));
			
			list.add(o);
		}
		
		return list;
	}
	
	public List<Shipper> getShipperList(List<String> lst) {
		List<Shipper> list = new ArrayList<Shipper>();
		
		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Shipper o = new Shipper();
			o.setShipperid(Integer.parseInt(strArr[idx++]));
			o.setShippername(strArr[idx++]);
			o.setPhone(strArr[idx++]);
			
			list.add(o);
		}
		
		return list;
	}
	
	public List<Supplier> getSupplierList(List<String> lst) {
		List<Supplier> list = new ArrayList<Supplier>();
		
		for (String str : lst) {
			int idx = 0;
			String[] strArr = str.split("\t");
			
			Supplier o = new Supplier();
			o.setSupplierid(Integer.parseInt(strArr[idx++]));
			o.setSuppliername(strArr[idx++]);
			o.setContactname(strArr[idx++]);
			o.setAddress(strArr[idx++]);
			o.setCity(strArr[idx++]);
			o.setPostalcode(strArr[idx++]);
			o.setCountry(strArr[idx++]);
			list.add(o);
		}
		
		return list;
	}
	

}
