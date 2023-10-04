package com.quocar.pds.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.quocar.pds.vo.FilesVo;
import com.quocar.pds.vo.PdsPagingVo;
import com.quocar.pds.vo.PdsVo;

public interface PdsService {

	List<PdsVo> getPdsList(String menu_id);

	PdsVo getPds(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map, HttpServletRequest request);

	List<FilesVo> getFileList(HashMap<String, Object> map);

	void setDelete(HashMap<String, Object> map);

	void deleteUploadFile(HashMap<String, Object> map);

	void setUpdate(HashMap<String, Object> map, HttpServletRequest request);

	List<PdsPagingVo> getPdsPagingList(HashMap<String, Object> map);

}
