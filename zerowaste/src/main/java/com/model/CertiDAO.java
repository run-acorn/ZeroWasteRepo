package com.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class CertiDAO {

	private SqlSessionFactory sql = SqlSessionManager.getSqlSessionFactory();
	private int cnt = 0;
	private SqlSession session = null;
	
	public int write(CertiVO cvo) {
		try {
			session = sql.openSession(true);
			cnt = session.insert("write", cvo);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}			
		return cnt;
	}

	public List<CertiVO> BoardList() {
		session = sql.openSession(true);
		List<CertiVO> list = session.selectList("BoardList");
		session.close();
		
		return list;
	}

	public CertiVO boardView(int cernum) {
		
		session = sql.openSession(true);
		CertiVO cvo = session.selectOne("boardView", cernum);
		session.close();
		
		return cvo;
		
		
	}

	public int UpdateService(CertiVO cvo) {
		
		session = sql.openSession(true);
		int cnt = session.update("updateService", cvo);
		session.close();
		return cnt;
	}

	public List<CertiVO> pageList(int page) {
		session = sql.openSession(true);
		List<CertiVO> list = session.selectList("pageList", page);
		session.close();
		return list;
	}
	
	
}
