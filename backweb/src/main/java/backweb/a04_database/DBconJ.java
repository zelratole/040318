package backweb.a04_database;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.util.logging.Level;
import java.util.logging.Logger;
// import backweb.a04_database.DBconJ
public class DBconJ {
    private static final Logger LOGGER = Logger.getLogger(DBCon.class.getName());
    private static DataSource dataSource;

    static {
        try {
            // JNDI 초기 설정
            Context ctx = new InitialContext();
            dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/mydb");
        } catch (NamingException e) {
            LOGGER.log(Level.SEVERE, "DataSource 찾기 실패: {0}", e.getMessage());
            throw new RuntimeException("DataSource 찾기 실패: " + e.getMessage(), e);
        }
    }

    public static Connection getConnection() throws SQLException {
        // DataSource에서 Connection 객체 가져오기
        return dataSource.getConnection();
    }

    public static void main(String[] args) {
        // try-with-resources 구문을 사용하여 자원 자동 해제
        try (Connection conn = getConnection()) {
            System.out.println("접속 성공!");
        } catch (SQLException e) {
            // 연결 실패 시 예외 처리
            LOGGER.log(Level.SEVERE, "연결 에러 발생: {0}", e.getMessage());
        }
    }
}
