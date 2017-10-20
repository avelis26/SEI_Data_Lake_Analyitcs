using Microsoft.Analytics.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace USQL_Programmability
{
	[SqlUserDefinedExtractor(AtomicFileProcessing = false)]
	public class BitDataFileExtractor : IExtractor
	{
		private Encoding _encoding;
		private byte[] _row_delim;
		private char _col_delim;
		public BitDataFileExtractor(Encoding encoding, string row_delim = "\r\n", char col_delim = '\t')
		{
			this._encoding = ((encoding == null) ? Encoding.UTF8 : encoding);
			this._row_delim = this._encoding.GetBytes(row_delim);
			this._col_delim = col_delim;
		}
		public override IEnumerable<IRow> Extract(IUnstructuredReader input, IUpdatableRow output)
		{
			string line;
			//Read the input line by line
			foreach (Stream current in input.Split(_encoding.GetBytes("\r\n")))
			{
				using (System.IO.StreamReader streamReader = new StreamReader(current, this._encoding))
				{
					line = streamReader.ReadToEnd().Trim();
					//Split the input by the column delimiter
					string[] parts = line.Split(this._col_delim);
					int count = 0; // start with first column
					foreach (string part in parts)
					{
						if (count == 0)
						{  // for column “guid”, re-generated guid
							Guid new_guid = Guid.NewGuid();
							output.Set<Guid>(count, new_guid);
						}
						else if (count == 2)
						{
							// for column “user”, convert to UPPER case
							output.Set<string>(count, part.ToUpper());
						}
						else
						{
							// keep the rest of the columns as-is
							output.Set<string>(count, part);
						}
						count += 1;
					}
				}
				yield return output.AsReadOnly();
			}
			yield break;
		}
	}
}