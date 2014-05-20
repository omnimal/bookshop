/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.fileupload;

import org.springframework.web.multipart.MultipartFile;

public class File_upload_handle {
    private MultipartFile upload;
    public MultipartFile getUpload() {
        return upload;
    }
    
    public void setUpload(MultipartFile upload) {
        this.upload = upload;
    }
}
