using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Types.Sql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace FilePaths {
	static public class Input {
		static public string GetInputPath() {
			string inputPath = "/BIT_CRM/bit_test_compressed/{*}";
			return inputPath;
		}
	}
	static public class Output {
		static public string GetD1121OutputPath() {
			string outputPath = "/BIT_CRM/bit_test_compressed/d1_121_output.csv";
			return outputPath;
		}
	}
}