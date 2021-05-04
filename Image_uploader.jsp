
 

   <%@page import="pack.*"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<!DOCTYPE html>
<%@page import="pack.*"%>
 
 <jsp:useBean id="xx" scope="request" class="pack.OfficeImage"/>
       

<%
    
    String s=(String)session.getAttribute("im");
String contentType = request.getContentType();
System.out.println("Content type is :: " +contentType);
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();

byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead<formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}

String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

//User u=(User)session.getAttribute("x");
//products pp=(products)session.getAttribute("product");
 
//pp.setImage(saveFile);
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;

pos = file.indexOf("\n", pos) + 1;


int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

//FileOutputStreamfileOut = new FileOutputStream(saveFile);
 
 
File fdest=new File("C:\\Users\\ARMAND\\Documents\\NetBeansProjects\\Regus_Kigali\\web\\Office_Images\\");
if(fdest.exists()){
}else{
fdest.mkdir();
}

 
        
//Posts cr=(Posts)session.getAttribute("mssg");
//System.out.println("Posts :"+cr);
 
FileOutputStream fileOut1 = new FileOutputStream(fdest+"\\"+s+"!"+saveFile);

//fileOut.write(dataBytes);
fileOut1.write(dataBytes, startPos, (endPos - startPos));
fileOut1.flush();
fileOut1.close();
        OfficeImage of=new OfficeImage();
        of.setFileName(s+"!"+saveFile);
        of.setImageId(OfficeImage.getMaxID());
        xx.setMsg("<h3>Office Image Successfully Added</h3>");
        of.setOfficeId(Integer.parseInt(s));
        of.insert();
  
 
  
}

%>
<jsp:forward page="Image_upload_Form.jsp"/>
 
 
