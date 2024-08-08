
/**
 * 
 */

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * 
 */
class UserFormTest {

	private UserForm user1;
	private UserForm user2;
	private UserForm user3;

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeEach
	void setUp() throws Exception {

		user1 = new UserForm("testUser1", "testPass1", "test1@example.com", "Male", "821124");
		user2 = new UserForm("testUser2", "testPass2", "test2@example.com", "Female", "821125");
		user3 = new UserForm("testUser3", "testPass3", "test3@example.com", "Other", "821126");

	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterEach
	void tearDown() throws Exception {

		// Cleanup if needed (e.g., set objects to null)
		user1 = null;
		user2 = null;
		user3 = null;
	}

	/**
	 * Test method for {@link UserForm#getUsername()}.
	 */
	@Test
	void testGetUsername() {

		// Test getter
		assertEquals("testUser1", user1.getUsername());
	}

	/**
	 * Test method for {@link UserForm#setUsername(java.lang.String)}.
	 */
	@Test
	void testSetUsername() {

		// Test setter

		user1.setUsername("newUser1");
		assertEquals("newUser1", user1.getUsername());
	}

	/**
	 * Test method for {@link UserForm#getPassword()}.
	 */
	@Test
	void testGetPassword() {

		// Test getter
		assertEquals("testPass2", user2.getPassword());
	}

	/**
	 * Test method for {@link UserForm#setPassword(java.lang.String)}.
	 */
	@Test
	void testSetPassword() {

		// Test setter
		user2.setPassword("newPass2");
		assertEquals("newPass2", user2.getPassword());
	}

	/**
	 * Test method for {@link UserForm#getEmail()}.
	 */
	@Test
	void testGetEmail() {

		// Test getter
		assertEquals("test3@example.com", user3.getEmail());

	}

	/**
	 * Test method for {@link UserForm#setEmail(java.lang.String)}.
	 */
	@Test
	void testSetEmail() {

		// Test setter
		user3.setEmail("new3@example.com");
		assertEquals("new3@example.com", user3.getEmail());
	}

	/**
	 * Test method for {@link UserForm#getGender()}.
	 */
	@Test
	void testGetGender() {

		// Test getter
		assertEquals("Male", user1.getGender());

	}

	/**
	 * Test method for {@link UserForm#setGender(java.lang.String)}.
	 */
	@Test
	void testSetGender() {
		// Test setter
		user1.setGender("Female");
		assertEquals("Female", user1.getGender());
	}

	/**
	 * Test method for {@link UserForm#getPostal()}.
	 */
	@Test
	void testGetPostalCode() {

		// Test getter
		assertEquals("821125", user2.getPostalCode());

	}

	/**
	 * Test method for {@link UserForm#setPostal(java.lang.String)}.
	 */
	@Test
	void testSetPostalCode() {

		// Test setter
		user2.setPostalCode("999999");
		assertEquals("999999", user2.getPostalCode());
	}

	@Test
	void testUsernameValidation() {

		// Test for invalid username
		user1.setUsername("User");

		// Method that validates the username
		assertFalse(user1.isValidUsername(), "Username should be invalid");

		// Test for valid username
		user1.setUsername("testUser1");
		assertTrue(user1.isValidUsername(), "Username should be valid");

		// Testing if username is null
		user1.setUsername(null);
		assertFalse(user1.isValidUsername(), "The username should be invalid when null");
	}

	@Test
	void testPasswordValidation() {

		// Test for invalid email
		user2.setPassword("12345");

		// Method that validates the password
		assertFalse(user2.isValidPassword(), "Password should be invalid");

		// Test for valid email
		user2.setPassword("testPass2");
		assertTrue(user2.isValidPassword(), "Password should be valid");

		// Testing if email is null
		user2.setPassword(null);
		assertFalse(user2.isValidPassword(), "The password should be invalid when null");
	}

	@Test
	void testEmailValidation() {

		// Test for invalid email
		user3.setEmail("invalid-email");

		// Method that validates the email
		assertFalse(user3.isValidEmail(), "Email should be invalid");

		// Test for valid email
		user3.setEmail("valid@example.com");
		assertTrue(user3.isValidEmail(), "Email should be valid");

		// Testing if email is null
		user3.setEmail(null);
		assertFalse(user3.isValidEmail(), "The email should be invalid when null");
	}

	@Test
	void testPostalCodeValidation() {

		// Test for invalid email
		user1.setPostalCode("123");

		// Method that validates the postal code
		assertFalse(user1.isValidPostalCode(), "Postal Code should be invalid");

		// Test for valid email
		user1.setPostalCode("821124");
		assertTrue(user1.isValidPostalCode(), "Postal Code should be valid");

		// Testing if email is null
		user1.setPostalCode(null);
		assertFalse(user1.isValidPostalCode(), "The postal code should be invalid when null");
	}

	@Test
	void testValidGender() {

		// Test for invalid gender
		user2.setGender("Unknown");
		
		// Method that validates the gender
		assertFalse(user2.isValidGender(), "Gender 'Unknown' should be invalid");

		// Test for valid gender
		user2.setGender("Male");
		assertTrue(user2.isValidGender(), "Gender 'Male' should be valid");

		user2.setGender("Female");
		assertTrue(user2.isValidGender(), "Gender 'Female' should be valid");

		user2.setGender("Other");
		assertTrue(user2.isValidGender(), "Gender 'Other' should be valid");

		// Testing if gender is null
		user2.setGender(null);
		assertFalse(user2.isValidGender(), "The gender should be invalid when null");
	}

}
