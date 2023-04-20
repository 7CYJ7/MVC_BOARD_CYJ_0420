package com.yongjin.board.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.yongjin.board.dao.BDao;
import com.yongjin.board.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		// model 안에 있는 request 객체를 빼기 위해 Map 형식으로 매핑후 Map의 키값인
		// request로 request객체를 뺌
		
		String bid = request.getParameter("bid");
		
		BDao dao = new BDao();
		BDto dto = dao.content_view(bid);
		
		model.addAttribute("content", dto);

	}

}
