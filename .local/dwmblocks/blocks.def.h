
//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"| ", "sb-net", 1, 11},
  {"| ","sb-pacpackages",	3600,	8},
  /* {"| ",	"sb-bat",	60,	3},*/
  {"| ",	"sb-temp",	3, 5},
  {"| ", "sb-vol", 0, 10},
  {"| ", "sb-ip", 3, 9},
  {"| ",  "sb-clock",     1, 2},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;

