
/**
 * 
 */
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/**
 * 
 */
public class UserForm {

	/**
	 * 
	 */
	private String username;
	private String password;
	private String email;
	private String gender;
	private String postalCode;

	public UserForm(String username, String password, String email, String gender, String postalCode) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.postalCode = postalCode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	// Method to validate username
	public boolean isValidUsername() {
		// Regex pattern: at least 5 characters, only letters and numbers
		String usernamePattern = "^[a-zA-Z0-9]{5,}$";
		return username != null && Pattern.matches(usernamePattern, username);
	}

	// Method to validate password
	public boolean isValidPassword() {
		// Simple regex pattern for validating password

		/*
		 * Pattern Explanation: At least one digit: The password must include at least
		 * one numeric digit (0-9). At least one letter: The password must include at
		 * least one letter (either lowercase a-z or uppercase A-Z). Minimum length: The
		 * password must be at least 8 characters long.
		 */

		String passwordPattern = "^(?=.*\\d)(?=.*[a-zA-Z]).{8,}$";
		return password != null && Pattern.matches(passwordPattern, password);
	}

	// Method to validate email
	public boolean isValidEmail() {
		// Simple regex pattern for validating email addresses
		String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
		return email != null && Pattern.matches(emailPattern, email);
	}

	// Method to validate postal code
	public boolean isValidPostalCode() {
		// Regex pattern: exactly 6 digits
		String postalCodePattern = "^\\d{6}$";
		return postalCode != null && Pattern.matches(postalCodePattern, postalCode);
	}
	
	// Method to validate gender
	public boolean isValidGender() {
        // Define a list of valid genders
        List<String> validGenders = Arrays.asList("Male", "Female", "Other");
        // Check if the gender is not null and is in the list of valid genders
        return gender != null && validGenders.contains(gender);
    }

	/**
	 * @param args
	 */

}
