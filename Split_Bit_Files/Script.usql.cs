using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Types.Sql;
using System.Collections.Generic;
using System.IO;
using System.Text;
namespace MyCustomExtractors {
	[SqlUserDefinedExtractor(AtomicFileProcessing = false)]
	public class D1_131_Extractor : IExtractor {
		private Encoding _encoding;
		private byte[] _row_delim;
		private SqlMap<string, string> _col_widths;
		public D1_131_Extractor(SqlMap<string, string> col_widths, Encoding encoding = null, string row_delim = "\r\n") {
			this._encoding = ((encoding == null) ? Encoding.UTF8 : encoding);
			this._row_delim = this._encoding.GetBytes(row_delim);
			this._col_widths = col_widths;
		}
		public override IEnumerable<IRow> Extract(IUnstructuredReader input, IUpdatableRow output) {
			foreach (Stream currentline in input.Split(this._row_delim)) {
				using (StreamReader lineReader = new StreamReader(currentline, this._encoding)) {
					string line = lineReader.ReadToEnd();
					if (line.Substring(0, 2).Equals("D1") & line.Substring(8, 3).Equals("131")) {
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
	[SqlUserDefinedExtractor(AtomicFileProcessing = false)]
	public class D1_121_Extractor : IExtractor
	{
		private Encoding _encoding;
		private byte[] _row_delim;
		private SqlMap<string, string> _col_widths;
		public D1_121_Extractor(SqlMap<string, string> col_widths, Encoding encoding = null, string row_delim = "\r\n")
		{
			this._encoding = ((encoding == null) ? Encoding.UTF8 : encoding);
			this._row_delim = this._encoding.GetBytes(row_delim);
			this._col_widths = col_widths;
		}
		public override IEnumerable<IRow> Extract(IUnstructuredReader input, IUpdatableRow output)
		{
			foreach (Stream currentline in input.Split(this._row_delim)) {
				using (StreamReader lineReader = new StreamReader(currentline, this._encoding)) {
					string line = lineReader.ReadToEnd();
					if (line.Substring(0, 2).Equals("D1") & line.Substring(8, 3).Equals("121")) {
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