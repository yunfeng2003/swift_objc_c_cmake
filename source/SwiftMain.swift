//
//  SwiftMain.swift
//  SwiftCMake
//
//  Created by Eric Wing on 6/10/15.
//  Copyright (c) 2015 PlayControl Software LLC. All rights reserved.
//


// This function is where I consider my Swift prgogram starts. 
func main(argc: Int, argv: [String]) -> Int32
{
	var i = 0,count = argc
	while i < count
	{
		var current_arg : String = argv[i]
		print("arg[\(i)]: \(current_arg)");
		i += 1;
	}
	
	// Call a C function from Swift
	let ret_val : CInt = MyCFunctions_DoSomething()
	print("quiting with \(ret_val)")
	return ret_val;
}

