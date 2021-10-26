using System;
using System.IO;

namespace tool
{
	class Program
	{
		static char[] DigitalTable = {'个', '十', '百', '千', '万'};

		static void Main(string[] args) 
		{
			const string PATH = "code.cpp";
			
			var file = new FileInfo(PATH);
			
			const string BEGIN = "#include <iostream>\nusing namespace std;\nint main()\n{\n\tcout << \"请给出一个不多于5位的正整数\" << endl;\n\tint x;\n\tcin >> x;\n\tswitch(x) {\n";
			const string TEMPLATE = "\tcase {0}:\n\t\tcout << \"是{1}位数\" << endl;\n\t\t{2}cout << \"倒过来是：{3}\" << endl;\n\t\tbreak;\n";
			const string DIGIT_TEMPLATE = "cout << \"{0}位数是：{1}\" << endl;\n\t\t";
			using (var steam = file.CreateText())
			{
				steam.Write(BEGIN);
				
				for (var i = 1; i <= 99999; ++i) 
				{
					var str = i.ToString();
					
					Console.WriteLine($"Write case {str}");
					
					var length = str.Length;
					var reversedList = str.ToCharArray();
					
					var digitInfo = string.Empty;

					for (var j = 0; j < length; ++j) 
					{
						digitInfo += string.Format(DIGIT_TEMPLATE, DigitalTable[j], reversedList[j]);
					}
					
					Array.Reverse(reversedList);
					var code = string.Format(TEMPLATE, str, length, digitInfo, new string(reversedList));
					
					steam.Write(code);
				}
				
				steam.Write("\t}\n}");
		
			}
			
			Console.WriteLine("Done.");
		}
	}
}
