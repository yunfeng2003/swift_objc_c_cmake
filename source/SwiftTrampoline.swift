
import Foundation
@objc class MySwiftEntryClass : NSObject
{
	@objc static func enterMain(argc:Int, argv:UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) -> Int32
	{
		print("argc: \(argc)")
		
		var string_array : [String] = [String]()

		var i = 0,count = argc
		while i < count
		{
			let current_arg : String = String(cString: argv[i])
			print("arg[\(i)]: \(current_arg)");
			string_array.append(current_arg)
			i += 1
		}
		
		
		return main(argc: argc, argv: string_array)
		
	}
}

