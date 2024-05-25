import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class EmployeeRegisterSystem {
    private static final String DB_URL = "jdbc:derby:C:\\\\EmployerRequest;create=true";
    private static final String CREATE_TABLE_QUERY = "CREATE TABLE Employees (id INT PRIMARY KEY, name VARCHAR(255), age INT)";
    private static final String INSERT_EMPLOYEE_QUERY = "INSERT INTO Employees (id, name, age) VALUES (?, ?, ?)";
    private static final String SELECT_EMPLOYEES_QUERY = "SELECT * FROM Employees";

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL);
            createTable(conn);

            Scanner scanner = new Scanner(System.in);

            while (true) {
                System.out.println("1. Add Employee");
                System.out.println("2. View Employees");
                System.out.println("3. Exit");
                System.out.print("Enter your choice: ");
                int choice = scanner.nextInt();
                scanner.nextLine(); // Consume newline

                switch (choice) {
                    case 1:
                        System.out.print("Enter employee ID: ");
                        int id = scanner.nextInt();
                        scanner.nextLine(); // Consume newline
                        System.out.print("Enter employee name: ");
                        String name = scanner.nextLine();
                        System.out.print("Enter employee age: ");
                        int age = scanner.nextInt();
                        scanner.nextLine(); // Consume newline
                        addEmployee(conn, id, name, age);
                        break;
                    case 2:
                        viewEmployees(conn);
                        break;
                    case 3:
                        conn.close();
                        scanner.close();
                        System.out.println("Exiting...");
                        System.exit(0);
                    default:
                        System.out.println("Invalid choice. Please try again.");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void createTable(Connection conn) throws SQLException {
        conn.createStatement().execute(CREATE_TABLE_QUERY);
    }

    private static void addEmployee(Connection conn, int id, String name, int age) throws SQLException {
        PreparedStatement statement = conn.prepareStatement(INSERT_EMPLOYEE_QUERY);
        statement.setInt(1, id);
        statement.setString(2, name);
        statement.setInt(3, age);
        statement.executeUpdate();
        System.out.println("Employee added successfully.");
    }

    private static void viewEmployees(Connection conn) throws SQLException {
        ResultSet rs = conn.createStatement().executeQuery(SELECT_EMPLOYEES_QUERY);
        System.out.println("ID\tName\tAge");
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            int age = rs.getInt("age");
            System.out.println(id + "\t" + name + "\t" + age);
        }
    }
}
