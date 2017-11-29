using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Types.Sql;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace MyCustomExtractors {
	[SqlUserDefinedExtractor(AtomicFileProcessing = false)]
	public class FixedWidthExtractor : IExtractor {
		private string _transType;
		private string _recordID;
		private Encoding _encoding;
		private byte[] _row_delim;
		private SqlMap<string, string> _col_widths;
		public FixedWidthExtractor(SqlMap<string, string> col_widths, string transType = null, string recordID = null, Encoding encoding = null, string row_delim = "\n") {
			this._encoding = ((encoding == null) ? Encoding.UTF8 : encoding);
			this._row_delim = this._encoding.GetBytes(row_delim);
			this._col_widths = col_widths;
			this._transType = transType;
			this._recordID = recordID;
		}
		public override IEnumerable<IRow> Extract(IUnstructuredReader input, IUpdatableRow output) {
			foreach (Stream currentline in input.Split(this._row_delim)) {
				using (StreamReader lineReader = new StreamReader(currentline, this._encoding)) {
					string line = lineReader.ReadToEnd();
					if (line.Substring(0, 2).Equals(this._recordID) & line.Substring(8, 3).Equals(this._transType)) {
						int start_parse = 0;
						int i = 0;
						foreach (var col_width in this._col_widths) {
							int chars_to_read = int.Parse(col_width.Value);
							string value = line.Substring(start_parse, chars_to_read);
							output.Set(i, value);
							start_parse += chars_to_read;
							i++;
						}
						yield return output.AsReadOnly();
					}
				}
			}
		}
	}
}
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