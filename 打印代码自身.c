char a[] = "#include <stdio.h>\n"
"main(){char*p=a;printf(\"char a[]=\\\"\");while(*p){\n"
"switch(*p){case'\\\"':printf(\"\\\\\\\"\");break;case'\\\\':\n"
"printf(\"\\\\\\\\\");break;case'\\n':printf(\"\\\\n\\\"\\n\\\"\");\n"
"break;default:putchar(*p);}p++;}printf(\"\\\";\\n\");\n"
"fwrite(a,sizeof(a)-1,1,stdout);}\n"
"";
#include <stdio.h> 
int main() 
{
	char* p = a; printf("char a[]=\""); while (*p) {
		switch (*p) {
		case'\"':printf("\\\""); break; case'\\':
		printf("\\\\"); break; case'\n':printf("\\n\"\n\"");
		break; default:putchar(*p);
		}p++;
	}printf("\";\n");
	fwrite(a, sizeof(a) - 1, 1, stdout);
}