package survey.surveytool.utils;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileReadCSV {
	
	
	public static void main(String[] args) {
		 
		FileReadCSV obj = new FileReadCSV();
        obj.readCSVFile();
 
  }
 
  public String[] readCSVFile() {
 
        String csvFile = "C:\\surveytool\\supervisor.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        String[] supervisors = null ;
 
        try {
 
               br = new BufferedReader(new FileReader(csvFile));
               while ((line = br.readLine()) != null) {
 
                       // use comma as separator
                       supervisors = line.split(cvsSplitBy);
 
                      
               }
 
        } catch (FileNotFoundException e) {
               e.printStackTrace();
        } catch (IOException e) {
               e.printStackTrace();
        } finally {
               if (br != null) {
                       try {
                               br.close();
                       } catch (IOException e) {
                               e.printStackTrace();
                       }
               }
        }
 
        System.out.println(supervisors);
        return supervisors;
  }

	

	

}
