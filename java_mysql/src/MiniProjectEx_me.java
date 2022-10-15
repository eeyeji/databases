import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MiniProjectEx_me { //진행할 프로젝트 이름 
    public static void main(String[] args){  
        // connection method, hostname : localhost, port, username, password, default schema(원하는 database 이름) 항목 입력확인
        //hostname: localhost post: 3306
        //username: root
        //default schema: world
        //password: tbrs00002b
        //access to 'world' DB
        final String USER = "root";
        final String PASS = "tbrs00002b";
        final String DB_URL = "jdbc:mysql://localhost/world";
        String Query ="select code, name, continent, region " + "from country " + "where 1 = 1 " + "and name like '%an%' ";
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(Query);
        // 새로운 query 생성, select 명령문 입력 후 test 해보기
        // result grid, action output 확인
        while (rs.next()){
            System.out.print("code: " + rs.getString("code"));
            System.out.print(", name: " + rs.getString("name"));
            System.out.println(", continent: " + rs.getString("continent"));
            System.out.println(", region: " + rs.getString("region"));
        }
        } catch (SQLException e) {
           
            e.printStackTrace();
        } //연결한다. 클래스.메소드()
        

        return; // return 시켜주면 에러표시(빨간줄) 안남

    }
    
}
