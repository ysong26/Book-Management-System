package vita500.domain;

import java.util.Date;

public class BoardVO {
	
		private Integer Board_No;
		private String Board_Subject;
		private String Board_Content;
		private String User_ID;
		private Date Board_DateTime;
		private int Board_Cnt;
		
		
		public Integer getBoard_No() {
			return Board_No;
		}
		public void setBoard_No(Integer board_No) {
			Board_No = board_No;
		}
		public String getBoard_Subject() {
			return Board_Subject;
		}
		public void setBoard_Subject(String board_Subject) {
			Board_Subject = board_Subject;
		}
		public String getBoard_Content() {
			return Board_Content;
		}
		public void setBoard_Content(String board_Content) {
			Board_Content = board_Content;
		}
		public String getUser_ID() {
			return User_ID;
		}
		public void setUser_ID(String user_ID) {
			User_ID = user_ID;
		}
		
		
		public Date getBoard_DateTime() {
			return Board_DateTime;
		}
		public void setBoard_DateTime(Date board_DateTime) {
			Board_DateTime = board_DateTime;
		}
		public int getBoard_Cnt() {
			return Board_Cnt;
		}
		public void setBoard_Cnt(int board_Cnt) {
			Board_Cnt = board_Cnt;
		}
		@Override
		public String toString() {
			return "BoardVO [Board_No=" + Board_No + ", Board_Subject=" + Board_Subject + ", Board_Content="
					+ Board_Content + ", User_ID=" + User_ID + ", Board_DateTime=" + Board_DateTime + ", Board_Cnt="
					+ Board_Cnt + "]";
		}
		
		

		
	


	}
	

	

