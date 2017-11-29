using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Constants {
	public class InputFileLocations {
		public static string getInputFolderPath() {
			string date = DateTime.Now.ToString("yyyyMMdd");
			string path = "/BIT_CRM/" + date + "/{*}";
			return path;
		}
	}
}
