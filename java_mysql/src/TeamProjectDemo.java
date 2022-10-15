
public class TeamProjectDemo {//1
    public static void main(String[] args){
       // Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
       // Statement stmt = conn.createStatement(); //공통으로 쿼리문을 쓰기위해서 만들어줌
       //빈 화면 하나가 statement ->stmt로 변수화 시켜줘서 클래스들마다 공통으로 사용할 수 있다는 뜻?
       //만약에 이 작업 안해주면 각 클래스안에 Statement 만들어서 해야함

        //선택
        System.out.println("선택");

        
        //다른클래스 참조 - teamprojectpolls
        //설문
        TeamProjectPolls polls =new TeamProjectPolls(); //-> 각각의 화면으로 구현
        //TeamProjectPolls polls =new TeamProjectPolls(stmt); -> 하나의 화면 안에 들어간다는 소리? 아규먼트에 stmt를 넣어줘야 사용 가능
        //pools인스턴스화 
        int val =  polls.PollFunction(); //1-2-1

        //다른클래스 참조 - teamprojectstatics
        //통계
        TeamProjectStatics statics =new TeamProjectStatics();
        //TeamProjectStatics statics =new TeamProjectStatics(stmt);
        //pools인스턴스화 
        val =  statics.StaticFunction(); //1-2-1-3
        return;    
    }
    
}
