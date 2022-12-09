package com.mycom.myapp.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }
    public int updateBoard(BoardVO vo){
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }
    public int deleteBoard(int seq){
        int result = sqlSession.delete("Board.deleteBoard", seq);
        return result;
    }
    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }
    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
//    @Autowired
//    JdbcTemplate jdbcTemplate;
//
//    public int insertBoard(BoardVO vo){
//        String sql = "insert into BOARD (title, writer, content, category) values ("
//                + "'" + vo.getTitle() + "',"
//                + "'" + vo.getWriter() + "',"
//                + "'" + vo.getContent() + "',"
//                + "'" + vo.getCategory() + "')";
//        return jdbcTemplate.update(sql);
//    }
//
//    public int deleteBoard(int seq){
//        String sql = "delete from BOARD where seq = " + seq;
//        return jdbcTemplate.update(sql);
//    }
//
//    public int updateBoard(BoardVO vo){
//        String sql = "update BOARD set title='" + vo.getTitle() + "',"
//                + "writer='" + vo.getWriter() + "', "
//                + "content='" + vo.getContent() + "', "
//                + "writer='" + vo.getCategory() + "' where seq=" + vo.getSeq();
//        return jdbcTemplate.update(sql);
//    }
//
//    public BoardVO getBoard(int seq){
//        String sql = "select * from BOARD where seq=" + seq;
//        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
//    }
//
//    public List<BoardVO> getBoardList(){
//        String sql = "select * from BOARD order by regdate desc";
//        return jdbcTemplate.query(sql, new BoardRowMapper());
//    }
}
