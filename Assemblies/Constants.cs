using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Constants {
	public class InputFileLocations {
		public string getInputFolderPath() {
			string date = DateTime.Now.ToString("yyyyMMdd");
			string path = "/BIT_CRM/" + date + "/{*}";
			return path;
		}
	}
	public class OutputFileLocations {
		string outputRoot = "/Parsed/";
		public string getD1_120path() {
			string path = outputRoot + "d1_120_output.csv";
			return path;
		}
		public string getD1_127path() {
			string path = outputRoot + "d1_127_output.csv";
			return path;
		}
		public string getD1_135path() {
			string path = outputRoot + "d1_135_output.csv";
			return path;
		}
	}
}
