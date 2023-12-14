%option noyywrap
%{
 #include <string.h>
 #include "parser.tab.h"
%}


ws [ \t\n]
delim ({ws})*

%%
{delim} {}
"অভিক"|"শাহিন"|"কাজল" { return BEKTI; }
"নাস্তা"|"স্কুল"|"লেখাপড়া"|"ফুটবল"|"বাড়ি"|"কম্পাইলার"|"সংবাদ"|"গাড়ি"|"আকাশে"|"বৃষ্টি"|"ছাতা" {return BOSTHU;}
"গেল"|"চড়বে"|"খাইল"|"খেলল"|"পড়"|"যাও"|"খেল"|"নিবে"|"আছ"|"কর" {return KRIA;}
"সে"|"তুমি"|"তোমরা" { return SORBONAME; }
"খেয়ে"|"করলে"|"খেলে"|"শুনে"|"হলে" { return OSOMAPIKA; }
"।"                            { return PUNCTUATION; }
%%




