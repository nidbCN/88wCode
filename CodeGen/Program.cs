using System;
using System.IO;

namespace tool
{
	class Program
	{
		static void Main(string[] args) 
		{
			const string PATH = "code.cpp";
			
			var file = new FileInfo(PATH);
			
			const string BEGIN = "#include <iostream>\nusing namespace std;\nint main()\n{\n\tcout << \"请给出一个不多于5位的正整数\" << endl;\n\tint x;\n\tcin >> x;\n\tswitch(x) {\n";
			const string TEMPLATE = "\tcase {0}:\n\t\tcout << \"是{1}位数\" << endl;\n\t\tcout << \"个位数是：{2}\" << endl;\n\t\tcout << \"倒过来是：{3}\" << endl;\n\t\tbreak;\n";
			using (var steam = file.CreateText())
			{
				steam.Write(BEGIN);
				
				for (var i = 1; i <= 99999; ++i) 
				{
					var str = i.ToString();
					
					Console.WriteLine($"Write case {str}");
					
					var length = str.Length;
					var reversedList = str.ToCharArray();
					Array.Reverse(reversedList);
					var code = string.Format(TEMPLATE, str, length, reversedList[0], new string(reversedList));
					
					steam.Write(code);
				}
				
				steam.Write("\t}\n}");
		
			}
			
			Console.WriteLine("Done.");
		}
	}
}
