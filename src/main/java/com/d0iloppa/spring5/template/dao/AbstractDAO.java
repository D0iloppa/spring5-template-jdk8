/**
 * 
 */
package com.d0iloppa.spring5.template.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 
 */
public abstract class AbstractDAO {

	@Autowired(required = false)
	protected SqlSession sqlSession;

	private void logSessionError(String method, String queryId) {
		System.err.printf("❌ [%s] sqlSession is null. Query: %s%n", method, queryId);
	}

	public <T> T selectOne(String queryId) {
		if (sqlSession == null) {
			logSessionError("selectOne", queryId);
			return null;
		}
		return sqlSession.selectOne(queryId);
	}

	public <T> T selectOne(String queryId, Object param) {
		if (sqlSession == null) {
			logSessionError("selectOne", queryId);
			return null;
		}
		return sqlSession.selectOne(queryId, param);
	}

	public <T> java.util.List<T> selectList(String queryId) {
		if (sqlSession == null) {
			logSessionError("selectList", queryId);
			return java.util.Collections.emptyList(); // ✅ 빈 리스트 반환
		}
		return sqlSession.selectList(queryId);
	}

	public <T> java.util.List<T> selectList(String queryId, Object param) {
		if (sqlSession == null) {
			logSessionError("selectList", queryId);
			return java.util.Collections.emptyList();
		}
		return sqlSession.selectList(queryId, param);
	}

	public int insert(String queryId, Object param) {
		if (sqlSession == null) {
			logSessionError("insert", queryId);
			return -1;
		}
		return sqlSession.insert(queryId, param);
	}

	public int update(String queryId, Object param) {
		if (sqlSession == null) {
			logSessionError("update", queryId);
			return -1;
		}
		return sqlSession.update(queryId, param);
	}

	public int delete(String queryId, Object param) {
		if (sqlSession == null) {
			logSessionError("delete", queryId);
			return -1;
		}
		return sqlSession.delete(queryId, param);
	}

}
