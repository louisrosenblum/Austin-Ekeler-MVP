% Louis Rosenblum
% Austin Ekeler MVP
% 07/01/2020

%% Intialization

clear all
close all

%% 2019 RB data

carson = rot90([15	15	15	22	27	24	21	20	16	25	8	23	15	24	8]);
henry = rot90([19	15	17	27	20	15	22	16	13	23	19	26	18	21	32]);
zeke = rot90([13	23	19	18	12	28	22	23	20	16	21	12	19	24	13	18]);
mcaf = rot90([19	16	24	27	19	22	14	24	20	14	22	14	11	19	13	9]);
chubb = rot90([17	18	23	20	16	20	20	20	20	27	21	16	15	17	15	13]);
cook = rot90([21	20	16	14	21	16	25	23	21	26	11	9	18	9]);
jacobs = rot90([23	12	10	17	26	21	15	28	16	23	10	17	24]);
mixon = rot90([6	11	15	15	19	8	10	17	30	15	18	19	23	25	21	26]);
michel = rot90([15	21	9	17	16	22	19	21	4	10	20	10	5	19	21	18]);
bark = rot90([11	18	8	18	19	14	13	17	19	17	24	22	17]);

x = [carson; henry; zeke; mcaf; cook; chubb;  mixon; michel; jacobs; bark];

g0 = repmat({'Chris Carson'},15,1);
g1 = repmat({'Derrick Henry'},15,1);
g2 = repmat({'Ezekiel Elliott'},16,1);
g3 = repmat({'Christian McCaffery'},16,1);
g5 = repmat({'Nick Chubb'},16,1);
g4 = repmat({'Dalvin Cook'},14,1);
g8 = repmat({'Josh Jacobs'},13,1);
g6 = repmat({'Joe Mixon'},16,1);
g7 = repmat({'Sony Michel'},16,1);
g9 = repmat({'Saquon Barkley'},13,1);



g = [g0; g1; g2; g3; g4; g5; g6; g7; g8; g9];

boxplot(x,g)
title("2019 RBs (1-10)")
xlabel("Player")
ylabel("Rushing attempts/game")
%%

mack = rot90([25	20	16	11	29	18	19	21	19	14	13	11	16	15]);
bell = rot90([17	21	18	15	14	15	8	17	18	18	12	10	21	25	16]);
four = rot90([13	15	15	29	23	20	29	19	11	8	24	14	15	15	15]);


