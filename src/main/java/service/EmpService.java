package service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import DAO.EMPDAO;
import DTO.EMP;
@Component
@Service
public class EmpService {

	@Autowired
	private SqlSession sqlsession;
	
	@Transactional(rollbackFor=Exception.class)
	public String write(EMP dto) throws Exception {
		EMPDAO empDao = sqlsession.getMapper(EMPDAO.class);
        try{
		empDao.insertEMP(dto);
		empDao.insertEMP(dto);
		empDao.insertEMP(dto);
        }catch(Exception e){
        	e.printStackTrace();
        	throw new Exception();
        }
			return"redirect:/getAllList.htm";
	}
	
	public List<EMP> list() {

		EMPDAO empDao = sqlsession.getMapper(EMPDAO.class);
		List<EMP> list = empDao.getAllList();

		

		return list;
	}
	
	
	public EMP read(int empno) {

		EMPDAO empDao = sqlsession.getMapper(EMPDAO.class);

		EMP dto = empDao.getEMP(empno);

		
		return dto;
	}
	
	
	public String delete(int empno) {

		EMPDAO empDao = sqlsession.getMapper(EMPDAO.class);

		empDao.delEMP(empno);

		return "redirect:/getAllList.htm";
	}
	
	public EMP update(int empno) {
		EMP dto = new EMP();
		try{
			EMPDAO empDao = sqlsession.getMapper(EMPDAO.class);

			dto = empDao.getEMP(empno);

		}catch(Exception e){
			
		}
		
		

		return dto;
	}
	
	public String updateok(EMP emp) throws Exception {

		EMPDAO empDao = sqlsession.getMapper(EMPDAO.class);

		try {
			empDao.updateEMP(emp);
		}catch (Exception e) {
			System.out.println("캐치타???");
			e.printStackTrace();
			throw new Exception(e);
		}
		return "redirect:/read.htm";
	}
}
