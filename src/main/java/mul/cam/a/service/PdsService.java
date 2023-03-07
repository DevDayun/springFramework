package mul.cam.a.service;

import java.util.List;

import mul.cam.a.dto.PdsDto;

public interface PdsService {
	List<PdsDto> pdslist();
	
	Boolean uploadPds(PdsDto dto);
	
	void downcount(int seq);
	
	PdsDto getPds(int seq);
	
	Boolean deletePds(int seq);
	
	Boolean updatePds(PdsDto pds);

}
