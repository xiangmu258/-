package springmvc_demo.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {
     //访问上传页面
	    @RequestMapping("/upload")
	     public String updoad() {
		    return "upload";
     }
@RequestMapping("/upload_submit")
public ModelAndView fileUpload(MultipartFile file,HttpServletRequest request)
		throws IOException {
	//获取文件保存到服务器上的物理地址（项目物理地址/upload/文件名）
	String realPath=request.getServletContext().getRealPath("/");//获取项目物理地址
	String filename = file.getOriginalFilename();//获取文件名
	String path = realPath+"/upload/"+ filename;
	//通过给定路径来创建一个File实例
	File f = new File(path);
	//将上传的文件传输到File中
	file.transferTo(f);
	//返回视图
	ModelAndView mv = new ModelAndView("upload_succ");
	mv.addObject("filename", filename);//将文件名传递到下一个页面
	return mv;
}
}