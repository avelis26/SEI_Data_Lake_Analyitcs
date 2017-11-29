using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Types.Sql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Constants {
	public class InputFileLocations {
		public static string getInputFolderPath() {
			string path = "/BIT_CRM/20171128/{*}";
			return path;
		}
	}
}