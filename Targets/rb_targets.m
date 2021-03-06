%% Initialization

clear all
close all

%% 

mcaf = rot90([11	6	4	10	8	5	5	3	7	15	9	12	12	10	15	10],3);
ekeler = rot90([7	6	7	5	16	4	8	3	4	2	12	5	5	7	6	11],3);
cohen = rot90([10	5	4	5	7	12	3	5	4	6	9	4	6	10	4	10],3);
four = rot90([6	6	8	3	7	6	2	7	6	7	12	11	6	7	6],3);
kamara = rot90([8	3	10	3	7	8	10	10	9	8	6	5	7	3],3);
bell = rot90([9	10	4	9	1	4	5	9	4	2	5	5	2	4	5],3);
bark = rot90([6	7	5	5	10	8	5	3	7	4	5	4	4],3);
zeke = rot90([2	2	3	7	3	6	7	0	3	3	4	10	5	4	7	5],3);
devonta = rot90([4	4	4	9	5	3	3	8	4	5	4	3	10	4],3);
jones = rot90([1	6	1	7	8	7	4	8	3	0	1	6	7	0	3	6],3);
cook = rot90([2	3	5	8	6	2	2	6	7	7	6	4	2	3],3);
sanders = rot90([2	4	4	0	5	3	3	3	3	4	5	5	5	6	6	5],3);

x = [mcaf; kamara; ekeler; four; cohen;  bell; bark; jones;  cook; zeke; devonta; sanders];

g0 = repmat({'Christian McCaffery'},16,1);
g1 = repmat({'Alvin Kamara'},14,1);
g2 = repmat({'Austin Ekeler'},16,1);
g4 = repmat({'Tarik Cohen'},16,1);
g3 = repmat({'Leonard Fournette'},15,1);
g5 = repmat({'LeVeon Bell'},15,1);
g6 = repmat({'Saquon Barkley'},13,1);
g9 = repmat({'Ezekiel Elliott'},16,1);
g10 = repmat({'Devonta Freeman'},14,1);
g7 = repmat({'Aaron Jones'},16,1);
g8 = repmat({'Dalvin Cook'},14,1);
g11 = repmat({'Miles Sanders'},16,1);

g = [g0; g1; g2; g3; g4; g5; g6; g7; g8; g9; g10; g11];

boxplot(x,g)
title("2019 RBs by targets (#1-12)")
xlabel("Player")
ylabel("Targets")
set(gca,'FontSize',9)

%% #13-24

gordon = rot90([6	4	3	3	4	1	5	3	5	7	7	7],3);
carson = rot90([7	3	1	4	2	4	5	1	3	4	4	2	4	2	1],3);
chubb = rot90([4	4	7	4	1	6	1	5	4	1	3	2	1	3	1	2],3);
johnson = rot90([7	1	9	11	5	8	0	1		2	2	0	1],3);
lindsay = rot90([6	7	5	1	4	3	1	5	0	2	3	3	2	2	3	1],3);
mixon = rot90([3	5	2	5	1	3	2	4	3	3	0	4	4	3	2	1],3);
conner = rot90([4	4	4	8	0	7	4	2	5	0],3);
murray = rot90([3	1	0	1	2	3	6	12	2	3	0	0	3	3	3	1],3);
gurley = rot90([1	4	1	11	5	1	1	4	3	3	1	4	6	2	2],3);
jones = rot90([1	0	1	1	3	0	3	2	8	4	3	0	5	3	4	2],3);
williams = rot90([6	5	4	1	3	0	2	5	1	3	7],3);
singletary = rot90([6	0	0	6	4	6	1	2	4	8	3	1],3);

x = [gordon; conner; singletary; carson; chubb; lindsay; mixon; gurley; williams; murray;  jones;  johnson];

g0 = repmat({'Melvin Gordon'},12,1);
g3 = repmat({'Chris Carson'},15,1);
g4 = repmat({'Nick Chubb'},16,1);
g11 = repmat({'David Johnson'},12,1);
g5 = repmat({'Phillip Lindsay'},16,1);
g6 = repmat({'Joe Mixon'},16,1);
g1 = repmat({'James Conner'},10,1);
g9 = repmat({'Latavius Murray'},16,1);
g7 = repmat({'Todd Gurley'},15,1);
g10 = repmat({'Ronald Jones II'},16,1);
g8 = repmat({'Damien Williams'},11,1);
g2 = repmat({'Devin Singletary'},12,1);

g = [g0; g1; g2; g3; g4; g5; g6; g7; g8; g9; g10; g11];

boxplot(x,g)
title("2019 RBs by targets (#13-24)")
xlabel("Player")
ylabel("Targets")
set(gca,'FontSize',9)

%% Calculate r

mcaf_r = get_r(mcaf)
bark_r = get_r(bark)
bell_r = get_r(bell)
carson_r = get_r(carson)
chubb_r = get_r(chubb)
cohen_r = get_r(cohen)
conner_r = get_r(conner)
cook_r = get_r(cook)
devonta_r = get_r(devonta)
ekeler_r = get_r(ekeler)
four_r = get_r(four)
gordon_r = get_r(gordon)
gurley_r = get_r(gurley)
johnson_r = get_r(johnson)
jones_r = get_r(jones)
kamara_r = get_r(kamara)
lindsay_r = get_r(lindsay)
mixon_r = get_r(mixon)
murray_r = get_r(murray)
sanders_r = get_r(sanders)
singletary_r = get_r(singletary)
williams_r = get_r(williams)
zeke_r = get_r(zeke)

%% Plot largest target increases

mcaf_r
cohen_r
cook_r
devonta_r
ekeler_r
four_r
gordon_r
jones_r
sanders_r
singletary_r
zeke_r


x = categorical(["Miles Sanders" "Christian McCaffery" "Melvin Gordon" "Aaron Jones" "Ezekiel Elliot" "Leonard Fournette" "Devonta Freeman" "Tarik Cohen" "Devin Singletary" "Dalvin Cook" "Austin Ekeler"]);
x = reordercats(x,{'Miles Sanders' 'Christian McCaffery' 'Melvin Gordon' 'Aaron Jones' 'Ezekiel Elliot' 'Leonard Fournette' 'Devonta Freeman' 'Tarik Cohen' 'Devin Singletary' 'Dalvin Cook' 'Austin Ekeler'});
y = [sanders_r mcaf_r gordon_r jones_r zeke_r four_r devonta_r cohen_r singletary_r cook_r ekeler_r];

bar(x,y,'green'),hold on;
title("RB target change over 2019 NFL season");
xlabel("Player");
ylabel("Correlation coefficient");

%% Plot largest target decreases

x = categorical(["Latavius Murray" "Damien Williams" "Todd Gurley" "Alvin Kamara" "Joe Mixon" "James Conner" "Chris Carson" "Saquon Barkley" "LeVeon Bell" "Nick Chubb" "Phillip Lindsay" "David Johnson"]);
x = reordercats(x,{'Latavius Murray' 'Damien Williams' 'Todd Gurley' 'Alvin Kamara' 'Joe Mixon' 'James Conner' 'Chris Carson' 'Saquon Barkley' 'LeVeon Bell' 'Nick Chubb' 'Phillip Lindsay' 'David Johnson'});
y = [murray_r williams_r gurley_r kamara_r mixon_r conner_r carson_r bark_r bell_r chubb_r lindsay_r johnson_r];

bar(x,y,'red')
title("RB target decreases over 2019 NFL season");
xlabel("Player");
ylabel("Correlation coefficient");

%% Plot player

%% Function definitions

function r = get_r(name)
    len = length(name);
    x = 1:len;
    
    corr_coef = corrcoef(name,x);
    r = corr_coef(1,2);
end

function target_plot(name,string)
    close all;
    figure()
   len = length(name);
   x = 1:len;
   z = ones(1,len).*60;
   b = scatter(x,name,z,'filled'), hold on;
   y = -len:len+2;
   z = zeros(1,2*len+3);
   line(y,z,'Color','black');
   
   r = get_r(name);
   
   h = lsline;
   
   if(r > 0)
       set(h,'color','green','LineWidth',3);
   else
       set(h,'color','red','LineWidth',3);
   end
   
   l = num2str(r);
   k = strcat("Correlation coefficient: ",l);
   legend(h,k);
   

   strng = strcat(string," 2019 targets by game");
   title(strng);
   xlabel("Game")
   ylabel("Targets")
   
   y = [min(name)-1 max(name)+1];
   ylim(y);
   xlim([0 len+1]);
end


