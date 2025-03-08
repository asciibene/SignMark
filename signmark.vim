function SignMark()
	let s:char = input("Character:")
" char is single letter to be used with the 'm' command  
  if s:char->strlen() == 1
		exe "sign define ".s:char."_mrk text=".s:char."→ texthl=Type linehl=PreProc"
		exe "mark ".s:char 
		call sign_place(0, '', s:char.'_mrk', "%",{'lnum' :"."})
  else
		call popup_dialog("Please insert a char (string length greater than 1)")
  endif
endfunction
