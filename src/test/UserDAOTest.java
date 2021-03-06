package test;

import static org.junit.Assert.*;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;

import dao.UserDAO;
import model.User;

public class UserDAOTest {
	@Rule
	public ExpectedException exception = ExpectedException.none();
	
	@Test
	public void testSuccessCreateUser() throws ParseException {
		User user = new User();
		user.setName("test");
		user.setLastName("test");
		user.setEmail("test@test.com");
		user.setGender("Feminino");
		user.setPassword("test");
		user.setNickname("test");
		
		String date = "2014-10-03";
		DateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDate = formatDate.parse(date);
		user.setBirthDate(birthDate)
		UserDAO userDAO = new UserDAO();
		boolean wasCreated = false;
		
		wasCreated = userDAO.createUser(user);
		
		assertTrue(wasCreated);
		
	}