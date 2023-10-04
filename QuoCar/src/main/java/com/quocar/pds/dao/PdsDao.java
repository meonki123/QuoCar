package com.quocar.pds.dao;

import java.util.HashMap;
import java.util.List;

import com.quocar.pds.vo.FilesVo;
import com.quocar.pds.vo.PdsPagingVo;
import com.quocar.pds.vo.PdsVo;

public interface PdsDao {

	List<PdsVo> getPdsList(String menu_id);

	PdsVo getPds(HashMap<String, Object> map);

	void setWrite(HashMap<String, Object> map);

	List<FilesVo> getFileList(HashMap<String, Object> map);

	void setDelete(HashMap<String, Object> map);

	void deleteUploadFile(HashMap<String, Object> map);

	void setUpdate(HashMap<String, Object> map);

	List<PdsPagingVo> getPdsPagingList(HashMap<String, Object> map);

}
