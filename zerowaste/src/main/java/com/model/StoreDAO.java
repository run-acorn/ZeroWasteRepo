package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class StoreDAO {

	private SqlSessionFactory sql = SqlSessionManager.getSqlSessionFactory();
	private int cnt = 0;
	private SqlSession session = null;

	public int insertStore(StoreVO svo) {
		try {
			session = sql.openSession(true);
			cnt = session.insert("insertStore", svo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	public List<StoreVO> storeInfo() {
		session = sql.openSession(true);

		List<StoreVO> list = session.selectList("storeInfo");
		session.close();
		
		return list;
	}
}
