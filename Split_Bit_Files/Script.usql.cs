using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Types.Sql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace MyCustomExtractors
{
	[SqlUserDefinedExtractor(AtomicFileProcessing = false)]
	public class FixedWidthExtractor : IExtractor
	{
		private Encoding _encoding;
		private byte[] _row_delim;
		private SqlMap<string, string> _col_widths;

		public FixedWidthExtractor(SqlMap<string, string> col_widths, Encoding encoding = null, string row_delim = "\r\n")
		{
			this._encoding = ((encoding == null) ? Encoding.UTF8 : encoding);
			this._row_delim = this._encoding.GetBytes(row_delim);
			this._col_widths = col_widths;
		}

		public override IEnumerable<IRow> Extract(IUnstructuredReader input, IUpdatableRow output)
		{
			foreach (Stream currentline in input.Split(this._row_delim))
			{
				using (StreamReader lineReader = new StreamReader(currentline, this._encoding))
				{

					string line = lineReader.ReadToEnd();

					//read new line of input
					int start_parse = 0;

					//for each column
					int i = 0;
					foreach (var col_width in this._col_widths)
					{
						//read chars associated with fixed-width column
						int chars_to_read = int.Parse(col_width.Value);
						string value = line.Substring(start_parse, chars_to_read);

						//assign value to output (w/ appropriate type)
						switch (output.Schema[i].Type.Name)
						{
							case ("String"):
								output.Set(i, value);
								break;
							case ("Int32"):
								output.Set(i, Int32.Parse(value));
								break;
							case ("Single"):
								output.Set(i, Single.Parse(value));
								break;
							case ("Decimal"):
								output.Set(i, Decimal.Parse(value));
								break;
							case ("DateTime"):
								output.Set(i, DateTime.Parse(value));
								break;
							case ("Boolean"):
								output.Set(i, Boolean.Parse(value));
								break;
							case ("Int64"):
								output.Set(i, Int64.Parse(value));
								break;
							case ("Int16"):
								output.Set(i, Int16.Parse(value));
								break;
							case ("Double"):
								output.Set(i, Double.Parse(value));
								break;
							case ("Char"):
								output.Set(i, Char.Parse(value));
								break;
							case ("Guid"):
								output.Set(i, Guid.Parse(value));
								break;
							case ("Byte"):
								output.Set(i, Byte.Parse(value));
								break;
							case ("SByte"):
								output.Set(i, SByte.Parse(value));
								break;
							case ("Byte[]"):
								output.Set(i, this._encoding.GetBytes(value));
								break;
							case ("UInt32"):
								output.Set(i, UInt32.Parse(value));
								break;
							case ("UInt64"):
								output.Set(i, UInt64.Parse(value));
								break;
							case ("UInt16"):
								output.Set(i, UInt16.Parse(value));
								break;
							default:
								throw (new Exception("Unknown data type specified: " + output.Schema[i].Type.Name));
						}

						////write data to output as string
						//output.Set<string>(i, value);

						//move to start of next column
						start_parse += chars_to_read;
						i++;
					}

					//send output 
					yield return output.AsReadOnly();
				}
			}
		}
	}
}