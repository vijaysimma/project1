package survey.surveytool.serviceimpl;

import org.springframework.stereotype.Service;

import survey.surveytool.service.Supervisor;
import survey.surveytool.utils.FileReadCSV;

@Service
public class SupervisorImpl implements Supervisor {
	FileReadCSV readCSV = new FileReadCSV();

	public String[] getSupervisorList() {
		
		String[] supervisors = readCSV.readCSVFile();
		
		return supervisors;
	}

}
