package DAO;

import java.util.List;

import DTO.EMP;

public interface EMPDAO {

	List<EMP> getAllList();
	EMP getEMP(int empno);
	int delEMP(int empno);
	int insertEMP(EMP emp);
	int updateEMP(EMP emp);
	
}
