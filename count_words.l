/*lex program to count number of words and calculate size*/
%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; //counter for number of words
unsigned int text_size = 0; //to store string length
%} 
  
/* Rules Section*/
%% 
[a-zA-Z0-9]+    {
i++;
// yytext- type of the lex external
text_size+= sizeof(yytext);

}  /*Rule for counting number of words*/
  
 
%% 
  
int yywrap(void){} 
  
int main() 
{    
    // The function that starts the analysis
    //open words.txt file in read only mode 
    yyin=fopen("words.txt","r");
    yylex(); 
    //console output
    printf("The number of words are: %d \n", i);
    printf("Size of input is %d \n", text_size); 
  
    return 0; 
} 

