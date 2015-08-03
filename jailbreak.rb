class Jailbreak
 def h1(txt)
  return "<h1> #{txt} </h1>"
 end
 def h2(txt)
  return "<h2> #{txt} </h2>"
 end
 def h3(txt)
  return "<h3> #{txt} </h3>"
 end
 def h4(txt)
  return "<h4> #{txt} </h4>"
 end
 def h5(txt)
  return "<h5> #{txt} </h5>"
 end
 def h6(txt)
  return "<h6> #{txt} </h6>"
 end
 def li(txt)
  return "<li> #{txt} </li>"
 end
 def a(txt, txt1)
  return "<a href='#{txt}'>#{txt1}</a>"
 end
 def img(txt, txt1)
  return "<img src='#{txt}' alt='#{txt1}' />"
 end
 def pre(txt)
  return "<pre> #{txt} </pre>"
 end
 def html(txt)
  return txt
 end
end

class MarkUp
 def self.convert(txt)
	jb = Jailbreak.new
	if txt.split('-')[0] == "$"
	  jb.h1(txt.split('-')[1])
	elsif txt.split('-')[0] == "$$"
	  jb.h2(txt.split('-')[1])
	elsif txt.split('-') == "$$$"
	  jb.h3(txt.split('-')[1])
	elsif txt.split('-')[0] == "$$$$"
	  jb.h4(txt.split('-')[1])
	elsif txt.split('-')[0] == "$$$$$"
	  jb.h5(txt.split('-')[1])
	elsif txt.split('-')[0] == "$$$$$$"
	  jb.h6(txt.split('-')[1])
	elsif txt.split('-')[0] == "*"
	  jb.li(txt.split('-')[1])
	elsif txt.split('-')[0].include?"["
	  arr = txt.split('-')
	  arr[0]["["] = ""
	  arr[0]["]"] = ""
	  arr[1]["("] = ""
	  arr[1][")"] = ""
	  jb.a(arr[0], arr[1])
	elsif txt.split('-')[0] == "img"
	  arr = txt.split('-')
	  jb.img(arr[1], arr[2])
	elsif txt.split('-')[0] == "pre"
	  jb.pre(txt.split('-')[1])
	else
	  jb.html(txt)
	end
 end
end
