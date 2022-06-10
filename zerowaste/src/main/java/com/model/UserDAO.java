package com.model;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class UserDAO {

		private SqlSessionFactory sql = SqlSessionManager.getSqlSessionFactory();
		private int cnt = 0;
		private SqlSession session = null;
		
		public int join(UserVO uvo) {
			try {
				session = sql.openSession(true);
				cnt = session.insert("join", uvo);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return cnt;
		}
		
		public UserVO login(UserVO uvo) {
			session = sql.openSession(true);
			UserVO vo = session.selectOne("login", uvo);
			session.close();
			return vo;
		}

		public List<UserVO> treegrow() {
			session = sql.openSession(true);
			List<UserVO> vo = session.selectList("treegrow");
			session.close();
			return vo;
		}
}
