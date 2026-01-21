#!/bin/bash
#this is day-08 : Exit code and Error handling

#checking number of arguments
if (( $# < 2 )); then
        echo "ERROR: Arguments are missing"
	echo "usage: bash $0 <dir_name> <file_name>"
	exit 1
fi


#checking directory 

check_dir(){
	
   local dir="$1"
   
         if [ ! -d "$dir" ]; then
		 echo "ERROR: dir. does not exist. creating dir. "
	         sudo mkdir -p "$dir" || 
			 {
				 echo "ERROR: creating $dir does not work "
		                    exit 2
			    }
		    else 
			    echo "dir. exist"
	 fi
    }

#checking file

    check_file() {
     local dir="$1"
     local file="$2"
	    if [ ! -f "$dir/$file" ]; then
		    echo "ERROR: file does not exist. creating $dir/$file"
		    touch  $dir/$file || 
			               {
				         echo "ERROR: creating file does not work"
		                              exit 3 
	                                            }
	    else 
		    echo "file found"
	    
	  
	    fi
		    }
    check_dir "$1"
    check_file "$1" "$2"

sleep 2
    echo "End of the script"
    
    
    exit 0

