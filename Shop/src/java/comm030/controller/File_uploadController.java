/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.controller;

import comm030.fileupload.File_upload_handle;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class File_uploadController {
	 
    // Handles the transfer of the upload file to the control panel page
    @RequestMapping(value = "/control", method = RequestMethod.POST)
    public String success(@ModelAttribute("f_upload") File_upload_handle f_upload, Model modelmap) {
        MultipartFile multipartFile = f_upload.getUpload();
	String filename = "";
                if (multipartFile != null) {
	            filename = multipartFile.getOriginalFilename();
	        }
	        modelmap.addAttribute("f_name", filename);
	        return "control";
	    }
	}
