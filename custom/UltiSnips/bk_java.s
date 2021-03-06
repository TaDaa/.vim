###########################################################################
#                            TEXTMATE SNIPPETS                            #
###########################################################################

# Many of the snippets here use a global option called
# "g:ultisnips_java_brace_style" which, if set to "nl" will put a newline
# before '{' braces.
# Setting "g:ultisnips_java_junit" will change how the test method snippet
# looks, it is defaulted to junit4, setting this option to 3 will remove the
# @Test annotation from the method


snippet sleep "try sleep catch" b
try {
	Thread.sleep(${1:1000});
} catch (InterruptedException e){ ${:\n\te.printStackTrace();}\n
}
endsnippet

snippet /nwa/ "new Object or variable" !r
`!p 
#test if there is a space in t[1]
javahelpers = __import__('javahelpers')

type_var = javahelpers.getType(t[1])
if (type_var == "" or type_var == t[1]):
	result =  t[2]
else:
	result = type_var
if (result != ""):
	original = result
	part = result.split("<",1)
	part0 = part[0]
	tests = [
	("List","ArrayList"),
	("Map","HashMap")
	]
	for i in range(0,len(tests)):
		if (part0 == tests[i][0]):
			result = tests[i][1]
			break
		elif (part0 == tests[i][1]):
			result = tests[i][0]
			break
	if len(part) > 1 and result != original:
		result += '<' + part[1]
if type_var != "" and type_var != t[1]:
	snip.rv = ""
else:
	snip.rv =  result + " "
	result = ""
`${1} = new `!p
snip.rv = result
`${2}(${3})

endsnippet

snippet "\bnw\b" "new Object or variable" r
new $1($2)
endsnippet

snippet "\bo\b" "brackets" r
{
	$1
}
endsnippet

snippet "\b[\,]t\b" "type" r
<$1>
endsnippet

global !p
vim.cnt = 0 ;
def endSpace(snap,target):
	vim = __import__('vim')
	match = vim.match
	snip = vim.snip
	snip.rv += "String"
	vim.cnt += 1
	#snip.rv = str(vim.cnt)
	if match.group(2):
		snip.rv+=" " + match.group(2)
	snap.expand_anon(snip.rv)
endglobal
snippet "\b(str){1}([a-zA-Z]{0,1})\b$" "String" r
String`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet
#String`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1

snippet /\bob\b|\bobj\b/ "Object" r
Object`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bin\b" "int" r
int`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\obi\b|\oin\b|\boint\b" "integer" r
Integer`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bf\b|\bfl\b" "float" r
float`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bof\b|\bofl\b" "Float" r
Float`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bd\b|\bdbl\b" "double" r
double`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bod\b|\bodbl\b" "Double" r
Double`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bc\b|\bch\b" "char" r
char`!p res = ' ' if t[1] != '' and t[3].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\boc\b|\boch\b" "Char" r
Char`!p res = ' ' if t[1] != '' and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bbo\b|\bboo\b|\bbool\b" "boolean" r
boolean`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bobo\b|\bobool\b" "boolean" r
Boolean`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bby\b" "byte" r
byte`!p res = ' ' if t[1] != '' and t[3].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\boby\b" "Byte" r
Byte`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bv\b|\bvo\b|\bvoid\b" "void" r
void`!p res = ' ' if t[1] != '' and t[1].find(" ") != 0 and t[1] != ')' and t[1] != ']' and t[1] != ',' and t[1] != '>' and t[1] != '.' else '' `$1
endsnippet

snippet "\bfi\b|\bfin\b|\bfinal\b" "final" r
final`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
`$1
endsnippet

snippet "\bst\b|\bstatic\b" "static" r
static`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
`$1
endsnippet

#unused in java
#snippet "\bcon\b|\bcons\b" "const" r
#const ${1}
#endsnippet

#aa &&
snippet "\b[,]{0,1}aa\b" "and &&" r
&& 
endsnippet

#oo ||
snippet "\b[,]{0,1}oo\b" "or ||" r
|| 
endsnippet

#p ()
snippet "\b[,]{0,1}pa\b" "parenthesis" r
($1)
endsnippet

#par ([])
#snippet "\b[,]{0,1}par\b" "parenthesis with array" r
#([${1}])
#endsnippet

#ar []
snippet "\b[,]{0,1}ar\b" "array" r
[$1]
endsnippet
snippet "\b[,]{0,1}arl\b" "array" r
[]
endsnippet

snippet wh "while" w
while ($1) {`!p
if (t[2] and t[2].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''
`${2}`!p
if (t[2] and t[2].find('\n') != 0):
	snip += '}'
else:
	res = '}'
`
endsnippet

#do
snippet dw "do while" w
do {`!p
if (t[1] and t[1].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res=""
`$1`!p
if (t[1] and t[1].find('\n') != 0):
	snip += '}'
else:
	res="}"
` while (${2});
endsnippet

snippet for "for loop - no vars" w
for (${1};${2};${3}) {`!p
if (t[4] and t[4].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''`${4}`!p
if (t[4] and t[4].find('\n') != 0):
	snip += '}'
else:
	res = '}'`
endsnippet

#flu
snippet flu "for loop - increment up and cached length (incrementer then length then ln)" w
for (${1};${1/(int[\s\t]*)|((=|,).*)//g}<${1/(.*,)|(=.*)|(int[\s\t]*.*)//g)/};${1/(int[\s\t]*)|((=|,).*)//g}++) {`!p
if (t[2] and t[2].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''`${2}`!p
if (t[2] and t[2].find('\n') != 0):
	snip += '}'
else:
	res = '}'`
endsnippet

#fld
snippet fld "for loop - increment down and cached length (decrementer, assume 0)" w
for (${1};${1/(int[\s\t]*)|((=|,).*)//g}>=0;${1/(int[\s\t]*)|((=|,).*)//g}--) {`!p
if (t[2] and t[2].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''`${2}`!p
if (t[2] and t[2].find('\n') != 0):
	snip += '}'
else:
	res = '}'`
endsnippet

snippet "\bsw\b|\bswitch\b" "switch..." r
switch (${1}) {`!p
if (t[2] and t[2].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''
`${2:case }`!p
if (t[3] and t[3].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''
`${3:default:}${4:break;}
}
endsnippet

#STRING -single
snippet "(?<!')(?![.])+'p" "single quote" r
'+
'${1}'
endsnippet

#STRING -single
snippet "''p\b" "single quote" r
'${1}'+
'${2}'
endsnippet

#STRING -double
snippet "(?<!\")(?![.])+\"p" "single quote" r
"+
"${1}"
endsnippet

#STRING -double
snippet "\"\"p\b" "double quote" r
"${1}"+
"${2}"
endsnippet

#CASE
snippet "\bcase\b|\bca\b" "case..." r
case ${1}:${2}`!p
if (t[2] and t[3] and t[2].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''
`${3:break;}
endsnippet

#DEFAULT
snippet "\bdf\b|\bdef\b|\bdefault\b" "default..." r
default: ${1}`!p
if (t[1] and t[2] and t[1].find('\n') != 0):
	snip >> 1
	snip += ' '
else:
	res = ''
`${2:break;}
endsnippet

#BREAK
snippet br "break;" w
break;
endsnippet

#CONTINUE
snippet "\bcn|\bco\b" "continue;" r
continue;
endsnippet

#RETURN
snippet "\bre\b|\bret\b|\breturn\b" "return" r
return`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv += ' '
else:
	snip.rv=''
`$1;
endsnippet				

#IF
snippet "\bif\b" "if..." r
if (${1}) {
	${2}
}${3/.+/ /}${3}
endsnippet

#ELSE IF
snippet "\bei\b|\belseif\b" "else if..." r
else if (${1}) {
	${2}
}${3/.+/ /}${3}
endsnippet

#ELSE
snippet "\bel\b|\belse\b" "else..." r
else {
	${1}
}${2}
endsnippet

snippet "\b[,]{0,1}e\b" "assignment" r
= 
endsnippet

#n
snippet n "not" w
!
endsnippet

#ee
snippet ee "Equality" w
== 
endsnippet

#ne
snippet ne "Not equals" w
!= 
endsnippet

#l 
snippet l "less than" w
< 
endsnippet

#le 
snippet le "less than equal" w
<= 
endsnippet

#g
snippet g "greater than" w
> 
endsnippet

#ge
snippet ge "greater than equals" w
>= 
endsnippet



#snippet f "field" !b
#${1:private} ${2:String} ${3:`!p snip.rv = t[2].lower()`};
#endsnippet


snippet as "assert" b
assert ${1:test}${2/(.+)/(?1: \: ")/}${2:Failure message}${2/(.+)/(?1:")/};$0
endsnippet

snippet at "assert true" !b
assertTrue(${1:actual});
endsnippet

snippet af "assert false" !b
assertFalse(${1:actual});$0
endsnippet

snippet ae "assert equals" !b
assertEquals(${1:expected}, ${2:actual});
endsnippet

#snippet br "break"
#break;
#endsnippet

#snippet cs "case" b
#case $1:
#	$2
#$0
#endsnippet

#snippet ca "catch" b
#catch (${1:Exception} ${2:e})`!p nl(snip)`{
#	$0
#}
#endsnippet

#snippet cle "class extends" b
#public class ${1:`!p
#snip.rv = snip.basename or "untitled"`} ${2:extends ${3:Parent} }${4:implements ${5:Interface} }{
	#$0
#}
#endsnippet

snippet "\bfil\b|\bfile\b" "filename" r
`!p snip.rv=snip.basename or "untitled"`
endsnippet

snippet "\bcl\b"  "class" r
${1}`!p 
if t[1] !="": snip.rv=" class " 
else: snip.rv = "class "
`${3:`!p snip.rv=snip.basename or "untitled"`} ${4}{
	${5}
}
endsnippet

snippet "\bclf\b"  "class filename" r
class ${1:`!p snip.rv=snip.basename or "untitled"`} ${2}{
	${3}
}
endsnippet

snippet "\bcle\b" "class extends" r
class ${1:`!p snip.rv=snip.basename or "untitled"`} extends ${2} ${3}{
	${4}
}
endsnippet

snippet "\bclfe\b" "class filename extends" r
class ${1:`!p snip.rv=snip.basename or "untitled" `} extends ${2} ${3}{
	${4}
}
endsnippet

snippet "\bclei\b" "class extends implements" r
class ${1:`!p snip.rv=snip.basename or "untitled"`} extends ${2} implements ${3} {
	${4}
}
endsnippet

snippet "\bclfei\b" "class filename extends implements" r
class ${1:`!p snip.rv=snip.basename or "untitled" `} extends ${2} implements ${3} {
	${4}
}
endsnippet

snippet "\bcli\b" "class implements" r
class ${1:`!p snip.rv=snip.basename or "untitled"`} implements ${2} {
	${3}
}
endsnippet

snippet "\bclfi\b" "class filename implements" r
class ${1:`!p snip.rv=snip.basename or "untitled" `} implements ${2} {
	${3}
}
endsnippet


snippet "\bimp\b|\bimpl\b" "implements" r
implements`!p res = ' ' if t[3] != '' else '' `${3} $4
endsnippet

snippet "\bex\b|\bext\b" "extends" r
extends`!p res = ' ' if t[3] != '' else '' `${3} $4
endsnippet


#this is flawed for a number of reasons - should be the constructor impl
#snippet clc "class with constructor, fields, setter and getters" !b
#public class `!p
#snip.rv = snip.basename or "untitled"` {
#`!p
#args = __import__('javahelpers').getArgs(t[1])
#if len(args) == 0: snip.rv = ""
#for i in args:
	#snip.rv += "\n\tprivate " + i[0] + " " + i[1]+ ";"
#if len(args) > 0:
	#snip.rv += "\n"`
#public `!p snip.rv = snip.basename or "unknown"`(${1}) { `!p
#args = __import__('javahelpers').getArgs(t[1])
#for i in args:
	#snip.rv += "\n\t\tthis." + i[1] + " = " + i[1] + ";"
#if len(args) == 0:
	#snip.rv += "\n"`
	#}${0}
#`!p
#args = __import__('javahelpers').getArgs(t[1])
#if len(args) == 0: snip.rv = ""
#for i in args:
	#snip.rv += "\n\tpublic void set" + camel(i[1]) + "(" + i[0] + " " + i[1] + ") {\n" + "\
	#\tthis." + i[1] + " = " + i[1] + ";\n\t}\n"

	#snip.rv += "\n\tpublic " + i[0] + " get" + camel(i[1]) + "() {\
	#\n\t\treturn " + i[1] + ";\n\t}\n"
#`
#}
#endsnippet

#also flawed -- use { as implementor
#snippet clc "class with constructor, with field names" b
#public class `!p
#snip.rv = snip.basename or "untitled"` {
#`!p
#args = getArgs(t[1])
#for i in args:
	#snip.rv += "\n\tprivate " + i[0] + " " + i[1]+ ";"
#if len(args) > 0:
	#snip.rv += "\n"`
	#public `!p snip.rv = snip.basename or "unknown"`($1) { `!p
#args = getArgs(t[1])
#for i in args:
	#snip.rv += "\n\t\tthis." + i[1] + " = " + i[1]
#if len(args) == 0:
	#snip.rv += "\n"`
	#}
#}
#endsnippet

#not manageable
#snippet clc "class and constructor" b
#public class `!p
#snip.rv = snip.basename or "untitled"` {

	#public `!p snip.rv = snip.basename or "untitled"`($2) {
		#$0
	#}
#}
#endsnippet


#snippet cos "constant string" b
#public static final String ${1:var} = "$2";$0
#endsnippet

#snippet co "constant" b
#public static final ${1:String} ${2:var} = $3;$0
#endsnippet

#snippet de "default" b
#default:
#	$0
#endsnippet

#snippet elif "else if" b
#else if ($1)`!p nl(snip)`{
#	$0
#}
#endsnippet

#snippet /el(se)?/ "else" br
#else`!p nl(snip)`{
#	$0
#}
#endsnippet

#snippet fi "final" b
#final 
#endsnippet


snippet fp "for (each)" w
for (${1}:${2}) {`!p
if (t[3] and t[3].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res = ''`${3}`!p
if (t[3] and t[3].find('\n') != 0):
	snip += '}'
else:
	res = '}'`${4}
endsnippet

#snippet fori "for" b
#for (int ${1:i} = 0; $1 < ${2:10}; $1++)`!p nl(snip)`{
#	$0
#}
#endsnippet

#snippet for "for" b
#for ($1; $2; $3)`!p nl(snip)`{
#	$0
#}
#endsnippet

#snippet if "if" b
#if ($1)`!p nl(snip)`{
#	$0
#}
#endsnippet

snippet im "import"  b
import ${1};
endsnippet

snippet ina "interface" b
class ${1} ${2}{
	${3}
}
endsnippet

snippet inaf "interface" b
interface ${1:`!p snip.rv=snip.basename or "untitled"`} ${2}{
	${3}
}
endsnippet

snippet imt "import junit_framework_TestCase;"  b
import junit.framework.TestCase;
$0
endsnippet


snippet cc "constructor call or setter body"
this.${1:var} = $1;
endsnippet

#snippet "\bnwaal\b" "Collections ArrayList" r
#List<$1> $2 = ArrayList<$1>($3)$4
#endsnippet

snippet "\bchm\b" "Collections ArrayList" r
HashMap<$1>$2
endsnippet

snippet "\bcal\b" "Collections ArrayList" r
ArrayList<$1>$2
endsnippet

#List<${1:String}> ${2:list} = new ${3:Array}List<$1>();
snippet "\bclis\b|\bclist\b" "Collections List" r
List<${1}>$2
endsnippet

#Map<${1:String}, ${2:String}> ${3:map} = new ${4:Hash}Map<$1, $2>();
snippet "\bcmap\b" "Collections Map" r
Map<${1},${2}>${3}
endsnippet

#Set<${1:String}> ${2:set} = new ${3:Hash}Set<$1>();
snippet "\bcset\b" "Collections Set" r
Set<${1}>$2
endsnippet

#lambda
snippet "\bla\b" "Lambda" r
${1} -> ${2}
endsnippet

#lambda
snippet "\blo\b|\blao\b" "Lambda" r
${1} -> {`!p
if t[2]:
	snip >> 1
	snip+=""
`${2}`!p
if t[2]:
	snip+=""
`}
endsnippet


#TODO
snippet cons "Constructor" b
public ${1:`!p snip.rv = snip.basename or "untitled"`} (${2}) {
	$3
}
endsnippet

snippet @ov "Override" b
@Override$1
endsnippet
snippet ov "Override" b
@Override`!p
if t[1] != "" and t[1].find("\n") == -1:
	snip += ""
`$1
endsnippet

snippet consa "constructor, \w fields + assigments" b
 `!p
args = __import__('javahelpers').getArgs(t[2])
if len(args) > 0:
	for i in args:
		snip += "private " + i[0] + " " + i[1]+ ";"
	
	snip += ""
	`
public ${1:`!p snip.rv = snip.basename or "untitled"`} (${2}) {`!p
args = __import__('javahelpers').getArgs(t[2])
if (len(args) > 0):
	snip>>1
	for i in args:
		snip += "this." + i[1] + " = " + i[1] + ';'
if t[3] != "":
	snip += ""
	`${3}
}
endsnippet


snippet consags "constructor, \w fields + assigments" b
 `!p
args = __import__('javahelpers').getArgs(t[2])
if len(args) > 0:
	for i in args:
		snip += "private " + i[0] + " " + i[1]+ ";"
	snip += ""
	`
public ${1:`!p snip.rv = snip.basename or "untitled"`} (${2}) {`!p
if (len(args) > 0):
	snip>>1
	for i in args:
		snip += "this." + i[1] + " = " + i[1] + ';'
if t[3] != "":
	snip += ""`${3}
}`!p
if (len(args) > 0):
	for i in args:
		snip += "public void set" + __import__('javahelpers').camelCase(i[1],True) + "(" + i[0] + " " + i[1] + ") {"
		snip >> 1
		snip += "this." + i[1] + " = " + i[1] + ';';
		snip << 1
		snip += "}"
		snip += "public " + i[0] + " get" + __import__('javahelpers').camelCase(i[1],True) + "() {"
		snip >> 1
		snip += "return " + i[1] + ";"
		snip << 1
		snip += "}"
`
	
endsnippet



snippet j.b "java_beans_" i
java.beans.
endsnippet

snippet j.i "java_io" i
java.io.
endsnippet

snippet j.m "java_math" i
java.math.
endsnippet

snippet j.n "java_net_" i
java.net.
endsnippet

snippet j.u "java_util_"  i
java.util.
endsnippet

snippet main "method (main)" b
public static void main(String[] args) {
	$0
}
endsnippet

snippet try "try...catch" w
try {
	${1}
} catch (${2:Exception} ${3:ex}) {`!p if (t[4] and t[4].find('\n') != 0):
	snip >> 1
	snip += ''
else:
	res=''
`${4}`!p
if (t[4] and t[4].find('\n') != 0):
	snip += '}'
else:
	res = '}'
`${5}
endsnippet


#TODO throws

#snippet mt "method throws" b!
#${1:private} ${2:void} ${3:method}(${4}) ${5:throws $6 }{
	#$0
#}
#endsnippet

#snippet m  "method" b
#${1:private} ${2:void} ${3:method}(${4}) {
	#$0
#}
#endsnippet

snippet md "Method With javadoc" !b
/**
 * ${7:Short Description}`!p
for i in getArgs(t[4]):
	snip.rv += "\n\t * @param " + i[1] + " usage..."`
 * `!p
if "throws" in t[5]:
	snip.rv = "\n\t * @throws " + t[6]
else:
	snip.rv = ""` `!p
if not "void" in t[2]:
	snip.rv = "\n\t * @return object"
else:
	snip.rv = ""`
 **/
${1:public} ${2:void} ${3:method}($4) ${5:throws $6 }{
	$0
}
endsnippet

snippet /\bigetset\b|\bigs\b/ "inline getset" !r
public ${1:`!p
snip.rv=snip.basename`} $2 ($3 value) {
	this.${4:$2} = value;
	return this;
}
public $3 $2 () {
	return this.$4;
}
endsnippet

snippet /\bget(ter)?\b/ "getter" !r
public ${1} get`!p
args=__import__('javahelpers').getArgs(t[2])
snip.rv =  __import__('javahelpers').camelCase(args[0][1],True) if len(args) > 0 else ""
`() {
	return ${2};
}
endsnippet

#args = 
snippet /\bset(ter)?\b/ "setter" !r
public void set`!p
args=__import__('javahelpers').getArgs(t[1])
snip.rv =  __import__('javahelpers').camelCase(args[0][1],True) if len(args) > 0 else ""
`(${1}) {
	`!p 
snip.rv= ("this."+args[0][1] + " = " + args[0][1] + ";") if len(args) > 0 else ""
if t[2] != "":
	snip >> 1
	snip += ""
	`${2}
}
endsnippet

snippet /\bgetset\b|\bgs\b/ "setter and getter" !r
public void set`!p
args=__import__('javahelpers').getArgs(t[1])
snip.rv = camel=  __import__('javahelpers').camelCase(args[0][1],True) if len(args) > 0 else ""
`(${1}) {
	`!p 
snip.rv= ("this."+args[0][1] + " = " + args[0][1] + ";") if len(args) > 0 else ""
if t[2] != "":
	snip >> 1
	snip += ""
	`${2}
}
public `!p
snip.rv = args[0][0] if len(args) > 0 else ""
` get`!p
snip.rv = camel
`() {
	return `!p
snip.rv = args[0][1] if len(args) > 0 else " null"
snip.rv += ';'
`
}
endsnippet

#TODO can be automatated
snippet "\bpack\b|\bpackage\b" "package" r
package `!p
snip.rv=__import__('javahelpers').getPackageForCurrentFile()
`;
endsnippet

#snippet sop "print" b
#System.out.print($1);$0
#endsnippet

snippet pst "printStackTrace"  w
printStackTrack();
endsnippet
snippet sop "println"  w
System.out.println($1);$0
endsnippet

snippet pr "private" w
private`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
`$1
endsnippet

snippet "\bpo\b|\bpro\b" "protected" r
protected`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
`$1
endsnippet

snippet th "throws" w
throws`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
`$1
endsnippet

global !p
def expand (snip, jump_pos=1):
	vim.eval('feedkeys("\<C-R>=UltiSnips#ExpandSnippet()\<CR>")')
endglobal
post_jump "expand(snip)"
snippet "\bpu\b(.*)" "public" rw
public`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
if match.group(1) != None:
	snip.rv += match.group(1)
`$1
endsnippet

snippet ab "abstract" w
abstract`!p
if t[1] != "" and t[1].find(" ") != 0:
	snip.rv = " "
else:
	snip.rv=""
`$1
endsnippet

#snippet re "return" b
#return 
#endsnippet

#snippet sw "switch" w
#switch ($1)`!p nl(snip)`{
	#case $2: $0
#}
#endsnippet

snippet sy "synchronized"
synchronized`!p res = ' ' if t[3] != '' else '' `${3}
endsnippet

snippet "([^\,^\.^a-z0-9A-Z]{1}|^)t\b" "this" r
`!p
snip.rv = match.group(1)
`this
endsnippet



snippet tc "test case"
public class ${1:`!p snip.rv = snip.basename or "untitled"`} extends ${2:TestCase}`!p nl(snip)`{
	$0
}
endsnippet

snippet te "test" b
`!p junit(snip)`public void test${1:Name}() {
	$0
}
endsnippet

snippet tt "test throws" b
`!p junit(snip)`public void test${1:Name}() ${2:throws Exception }{
	$0
}
endsnippet

snippet thn "throw" b
throw new $0
endsnippet
snippet "\bfn\b" "function" r
$1`!p
if t[1] != '':
	snip.rv = " ("
else:
	snip.rv += '('
`$2) {
	$3
}
endsnippet
snippet "\bfnc\b" "function" r
${1:`!p snip.rv=snip.basename or "untitled"`} ($2) {
	$3
}
endsnippet


snippet "\bcs\b|\bcst\b|\bcast\b" "function" r
($1) $2
endsnippet

snippet "\bcsa\b|\bcst\b|\bcasta\b" "cast assign" r
$1 = (`!p
v = t[1].split(' ')[0]
if v is not None and v is not '':
	snip.rv = v
else:
	snip.rv = ''
`) $3;
endsnippet



snippet "\bnu\b" "super" r
null$1
endsnippet

snippet "\bsu\b" "super" r
super$1
endsnippet



global !p
def expand (snap,jump_pos=1):
	if snip.tabstop != jump_pos:
		return
	vim.eval('feedkeys("\<C-R>=UltiSnips#ExpandSnippet()\<CR>")')
def asyncCallSnip(snip):
	vim.snip.indent = vim.snip._initial_indent = ''
	asyncCall(vim.snip,1,vim.match.group(1))
	snip.expand_anon(vim.snip.rv)
def asyncCall(snip,tabstop,type):
	snip.rv += ".call(new Async.AsyncCallable"
	if  type == None:
		type = '<$1>'
	snip.rv +=  type + ' () {'
	snip >> 1
	snip += ""
	snip.rv += "public "
	snip.rv += type[1:-1]
	snip.rv += " call () {"
	snip >> 1
	tabstop+=1
	snip += "$"+str(tabstop)
	snip << 1
	snip += "}"
	snip << 1
	snip += "})"
	return tabstop
def asyncConvertSnip(snip):
	vim.snip.indent = vim.snip._initial_indent = ''
	asyncConvert(vim.snip,1,vim.match.group(1))
	snip.expand_anon(vim.snip.rv)
def asyncConvert(snip,tabstop,type=None,fromType=None):
	snip.rv += '.convert(new Async.AsyncConvert'
	fromT = ''
	toT = ''
	if type == None:
		if fromType != None:
			fromT = fromType
	else:
		javahelpers = __import__('javahelpers')
		args = javahelpers.getArgs(type[1:-1])
		if (len(args)) > 0:
			fromT = str(args[0][1])
			if len(args) > 1:
				toT = str(args[1][1])
	if fromT == '':
		fromT = '$' + str(tabstop)
		tabstop+=1
	if toT == '':
		toT = '$' + str(tabstop)
		tabstop+=1
	type = '<'+fromT +','+ toT+'>'
	snip.rv += type
	snip.rv += ' () {'
	snip >> 1
	snip += ''
	snip.rv += 'public '+toT+' convert (Async.AsyncContext<' + fromT + '> async) {'
	snip >> 1
	snip += '$'+str(tabstop)
	snip << 1
	snip += '}'
	snip << 1
	snip += '})'
	return tabstop
def asyncThenSnip(snip):
	vim.snip.indent = vim.snip._initial_indent = ''
	asyncThen(vim.snip,1,vim.match.group(1))
	snip.expand_anon(vim.snip.rv)
def asyncThen(snip,tabstop,type):
	snip.rv += ".then(new Async.AsyncCallback"
	if (type == None):
		type = '<$'+str(tabstop)+'>'
	snip.rv +=  type
	snip.rv += " () {"
	snip >> 1
	snip += ""
	snip.rv += "public void done (Async.AsyncContext" + type + ' async) {'
	snip >> 1
	tabstop += 1
	snip += "$"+str(tabstop)
	snip << 1
	snip += "}"
	snip << 1
	snip += "})"
	return tabstop
def asyncSnip(snap):
	vim = __import__('vim')
	match = vim.match
	snip = vim.snip
	type = match.group(1)
	if (type == None or type == '$1'):
		type = '<$1>'
	#type = match.group(1)
	context = match.group(2)
	tabstop = 2;
	methods = re.findall('\.([^\.]*)',match.group(3))
	snip.rv = "Async."
	if type != None:
		snip.rv += type
	snip.rv += "context("
	if context == None:
		snip.rv += '$'+str(tabstop)
		tabstop += 1
	else:
		context = context[1:-1]
		snip.rv += context
	snip.rv += ")"
	snip << 0
	snip >> 1
	tabstop = 2
	for i in range(0,len(methods)):
		method = methods[i]
		if method == "call":
			snip += ''
			tabstop = asyncCall(snip,tabstop,type) + 1
		elif method == "then":
			snip += ''
			tabstop = asyncThen(snip,tabstop,type) + 1
		elif method == 'conv':
			snip += ''
			tabstop = asyncConvert(snip,tabstop,None,type[1:-1]) + 1
		else:
			snip += "." + method + "()"
	snap.expand_anon(snip.rv)
endglobal
post_jump "asyncSnip(snip)"
snippet "\basync(\<.*\>){0,1}(\(.*\)){0,1}(\.[^\b^\(^\)]+)$\b" "test" r
`!p
vim.match = match
vim.snip = snip
`
endsnippet
post_jump "asyncCallSnip(snip)"
snippet "\.acall(<.*>){0,1}" "test" r
`!p
vim.snip=snip
vim.match = match
`
endsnippet
post_jump "asyncThenSnip(snip)"
snippet "\.athen(<.*>){0,1}" "test" r
`!p
vim.snip=snip
vim.match = match
`
endsnippet
post_jump "asyncConvertSnip(snip)"
snippet "\.aconv(<.*>){0,1}" "test" r
`!p
vim.snip=snip
vim.match = match
`
endsnippet

snippet "\b"


#snippet wh "while" b
#while ($1)`!p nl(snip)`{
#	$0
#}
#endsnippet

# vim:ft=snippets:




#SWING

#SWING Variables
#snippet "\bnwdim\b" "new Dimension" r
#new Dimension($1)$2
#endsnippet
#snippet "\bnwadim\b" "new Dimension" r
#Dimension $1 = new Dimension($2)$3
#endsnippet



#SWING functions
snippet "\b\.sps\b" "setPreferredSize" r
.setPreferredSize($1)$2
endsnippet
snippet "\b\.a\b" "add" r
.add($1)$2
endsnippet
snippet "\b\.rm\b" "remove" r
.remove($1)$2
endsnippet
snippet "\b\.sv\b" "setVisible" r
.setVisible($1)$2
endsnippet
snippet "\b\.rf\b" "requestFocus" r
.requestFocus()$2
endsnippet
snippet "\b\.se\b" "setEnabled" r
.setEnabled($1)$2
endsnippet
snippet "\b\.slo\b" "setLocation" r
.setLocation($1)$2
endsnippet
snippet "\b\.sla\b" "setLayout" r
.setLayout($1)$2
endsnippet
snippet "\b\.gbo\b" "getBounds" r
.getBounds()$2
endsnippet
snippet "\b\.gpa\b" "getParent" r
.getParent()$2
endsnippet
snippet "\b\.gmax\b" "getMaximumSize" r
.getMaximumSize()$2
endsnippet
snippet "\b\.gmin\b" "getMinimumSize" r
.getMaximumSize()$2
endsnippet
snippet "\b\.smax\b" "setMaximumSize" r
.setMaximumSize($1)$2
endsnippet
snippet "\b\.smin\b" "getMinumumSize" r
.setMinimumSize($1)$2
endsnippet
snippet "\b\.aal\b" "addActionListener" r
.addActionListener($1)$2
endsnippet
snippet "\bnewal\b" "addActionListener" r
new ActionListener() {
	@Override
	public void actionPerformed (ActionEvent e) {
		$2
	}
}$3
endsnippet
snippet "\b\.apcl\b" "addPropertyChangeListener" r
.addPropertyChangeListener($1)$2
endsnippet
snippet "\b\.rp\b" "repaint" r
.repaint()$1
endsnippet
snippet "\b\.gx\b" "repaint" r
.getX()$1
endsnippet
snippet "\b\.gy\b" "repaint" r
.getY()$1
endsnippet
