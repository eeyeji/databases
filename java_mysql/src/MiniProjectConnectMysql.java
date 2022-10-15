import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MiniProjectConnectMysql { //진행할 프로젝트 이름 
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
        String Query ="select ID, Name, Population " + "from city " + "where 1 = 1 " + "and Population >= 9230000 ";
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();

            //insert
            Query = "insert into city(ID, Name, CountryCode, District, Population) " 
                    + "values (1234569, 'Name', 'AFG', 'Maharashtra', 2000)"; 
                    // 넣을때 마다 숫자 바뀌어야 함 -> id + 1 인 조건을 만들기 위해서->max값 먼저 가져와야함
            int val = stmt.executeUpdate(Query); // insert, update, delete할 때는 executeUpdate

            //select
            Query = "select ID, Name, CountryCode, District, Population " 
                    + "from city "
                    + "where Name ='Name' " ;
            ResultSet rs = stmt.executeQuery(Query); //select할때는 executeQuery

            // result grid, action output 확인

            while (rs.next()){
            // retrieve by column name
                System.out.print("ID: " + rs.getInt("ID"));
                System.out.print(", Name: " + rs.getString("Name"));
                System.out.println(", Population: " + rs.getInt("Population"));
            }

            //update
            Query = "update city " + "set Population = 2000 " + "where Name = 'Name' " ; 
            val = stmt.executeUpdate(Query);
            
            //select
            
            System.out.println();

            //delete
            Query = "delete from city " + "where Name = 'Name' ";
            val = stmt.executeUpdate(Query);
            
            //select
            System.out.println();
        // 새로운 query 생성, select 명령문 입력 후 test 해보기
            rs = stmt.executeQuery(Query);
            // result grid, action output 확인

            while (rs.next()){
            // retrieve by column name
                System.out.print("ID: " + rs.getInt("ID"));
                System.out.print(", Name: " + rs.getString("Name"));
                System.out.println(", Population: " + rs.getInt("Population"));
            }
        } catch (SQLException e) {
           
            e.printStackTrace();
        } //연결한다. 클래스.메소드()
        

        return; // return 시켜주면 에러표시(빨간줄) 안남

    }
    
}