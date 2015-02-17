package survey.surveytool.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import survey.surveytool.domain.Supervisors;
import survey.surveytool.service.Supervisor;

@Controller
public class SurveyController {




	@Autowired
	Supervisor supervisor;

	@RequestMapping("/")
	public ModelAndView showMessage() {
		System.out.println("in controller");

		ModelAndView mv = new ModelAndView("selectsupervisor");

		mv.addObject("supervisor",new Supervisors().getSupervisorName());
		return mv;
	}

	@ModelAttribute("supervisorlist")
	public String[]  gets(){
		String[] supervisors = supervisor.getSupervisorList();

		return supervisors;
	}




	@RequestMapping(value="/questions" , method=RequestMethod.POST)
	public ModelAndView questions(@RequestParam("super") String answer1) {
		System.out.println("q in controller");
		//System.out.println(h +"LLL");
		ModelAndView mv = new ModelAndView("selectsupervisor");


		return mv;
	}

	@RequestMapping(value="/answer" , method=RequestMethod.POST)
	public ModelAndView answers(@RequestParam("one") String answer1 ,
			@RequestParam("two") String answer2 ,
			@RequestParam("three") String answer3 ,
			@RequestParam("four") String answer4 ,
			@RequestParam("five") String answer5 ,
			//	@RequestParam("six") String answer6 ,
			@RequestParam("supervisor") String supervisor ) {
		System.out.println("q in controller" + supervisor);

		List<String> results = new ArrayList<String>();

		results.add(supervisor);
		results.add(answer1);
		results.add(answer2);
		results.add(answer3);
		results.add(answer4);
		results.add(answer5);


		writeToExcel(results);
		//	    FileInputStream file;
		//		try {
		//			file = new FileInputStream(new File("C:\\surveytool\\new.xls"));
		//			
		//			 HSSFWorkbook workbook = new HSSFWorkbook(file);
		//			    HSSFSheet sheet = workbook.getSheetAt(0);
		//			    
		//			    Iterator<Row> rowi = sheet.iterator();
		//			    while(rowi.hasNext()){
		//			    	Row r = rowi.next();
		//			    	System.out.println(r.getCell(1).getStringCellValue().length());
		//			    	if(r.getCell(1).getStringCellValue().length()>0){
		//			    	System.out.println(r.getRowNum());
		//			    	sheet.createRow(r.getRowNum());
		//			    	}
		//			    	
		//			    }
		//			    
		//			    
		//			    
		//			    
		//		} catch (FileNotFoundException e) {
		//			// TODO Auto-generated catch block
		//			e.printStackTrace();
		//		} catch (IOException e) {
		//			// TODO Auto-generated catch block
		//			e.printStackTrace();
		//		}






		ModelAndView mv = new ModelAndView("thanks");


		return mv;
	}

	public static void  writeToExcel(List<String> results ){


		FileInputStream file;
		try {
			file = new FileInputStream(new File("C:\\surveytool\\new.xls"));

			HSSFWorkbook workbook = new HSSFWorkbook(file);
			HSSFSheet sheet = workbook.getSheetAt(0);


			int hh = sheet.getLastRowNum();
			System.out.println(hh  + " last row count");
			Iterator<Row> rowi = sheet.iterator();
			//			    while(rowi.hasNext()){
			//			    	Row r = rowi.next();
			//			    	System.out.println(r.getCell(0).getStringCellValue().length());
			//			    	if(r.getCell(0).getStringCellValue().length()==0){
			//			    	System.out.println(r.getRowNum());
			//			    	
			Row rr =	sheet.createRow(sheet.getLastRowNum()+ 1);

			for(int i =0 ; i<results.size();i++){
				rr.createCell(i).setCellValue(results.get(i));
			}
			//	}

			//			    }





			file.close();

			FileOutputStream outFile =new FileOutputStream(new File("C:\\surveytool\\new.xls"));
			workbook.write(outFile);
			outFile.close();



		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}





	}

	public static void main(String ar[])
	{

		//writeToExcel();

	}





}
