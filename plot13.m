%%%%%%%%% plot pr curve shrec 2013 dataset %%%%%%%%%%%%%%%%%%%%%

close all;
clear all;
clc;
% resultsDir = './Exp_Result/shrec13shape/performance_4096.mat';
% load(resultsDir);
%%% pick up the certain points from precision-recall curve %%%%

figure(1);
resultsDir = './shrec13_precision_recall.txt';
holis = load(resultsDir);               %% Load the data for precision recall curve.
%%% pick up the certain points from precision-recall curve %%%%
rec = holis(:,1);           %% The first row is the data for recall
pre = holis(:,2);          %% The second row is the data for precision
figure(1);
recall = [0.0500	0.1000	0.1500	0.2000	0.2500	0.3000	0.3500	0.4000	0.4500	0.5000	0.5500	0.6000	0.6500	0.7000	0.7500	0.8000	0.8500	0.9000	0.9500	1.0000];
dchml.precision = zeros(1, 20);
for i = 1 : 20
    index_s = find(rec < recall(i)); %% find rec smaller than recall(i)
    index_l = find(rec > recall(i));
    if ~isempty(index_s) && ~isempty(index_l)
        index_s = index_s(end);
        index_l = index_l(1);
        dchml.precision(i) = (pre(index_s) + pre(index_l))/2;
    elseif ~isempty(index_s) && isempty(index_l)
        index_s = index_s(end);
        dchml.precision(i) = pre(index_s);
    elseif isempty(index_s) && ~isempty(index_l)
        index_l = index_l(1);
        dchml.precision(i) = pre(index_l);
    end
        
end


aono.precision = [0.0987	0.0538	0.0501	0.0368	0.0351	0.0326	0.0307	0.0293	0.0281	0.0271	0.0267	0.0261	0.0254	0.0247	0.0240	0.0233	0.0223	0.0213	0.0200	0.0181];
li.precision_2d3d = [0.2944	0.2204	0.1780	0.1447	0.1319	0.1180	0.1059	0.0957	0.0869	0.0785	0.0718	0.0657	0.0599	0.0545	0.0495	0.0446	0.0396	0.0348	0.0305	0.0255];
li.precision_vc100 = [0.3198	0.2498	0.2086	0.1804	0.1635	0.1464	0.1324	0.1196	0.1081	0.0973	0.0890	0.0808	0.0735	0.0669	0.0607	0.0548	0.0491	0.0439	0.0389	0.0335];
li.precision_vc50 = [0.2782	0.2212	0.1774	0.1538	0.1394	0.1252	0.1123	0.1015	0.0925	0.0838	0.0766	0.0701	0.0639	0.0585	0.0537	0.0491	0.0445	0.0398	0.0354	0.0305];
sa.precision = [0.168348	0.116302	0.092196	0.076692	0.068594	0.060366	0.054009	0.047902	0.043399	0.039697	0.037347	0.035272	0.033384	0.031592	0.029907	0.027948	0.026002	0.024087	0.022151	0.019667];

plot(recall, dchml.precision, '-s','LineWidth',2,...
                       'Color', [1 0 1], ...
                       'MarkerEdgeColor',[1 0 1],...
                       'MarkerSize',10);
hold on;
plot(recall, aono.precision, '-o','LineWidth',2,...
                        'Color', [1 0 0], ...
                       'MarkerEdgeColor','r',...
                       'MarkerFaceColor','r',...
                       'MarkerSize',10);

hold on;
plot(recall, li.precision_2d3d, '-^','LineWidth',2,...
                       'Color', [0 1 1], ...
                       'MarkerEdgeColor',[0 1 1],...
                       'MarkerFaceColor',[0 1 1],...
                       'MarkerSize',10);

hold on;
plot(recall, li.precision_vc50, '-x','LineWidth',2,...
                       'Color', [0 0 0], ...
                       'MarkerEdgeColor',[0 0 0],...
                       'MarkerFaceColor',[0 0 0],...
                       'MarkerSize',10);
                   
hold on;
plot(recall, li.precision_vc100, '-p','LineWidth',2,...
                       'Color', [1 0 0], ...
                       'MarkerEdgeColor',[1 0 0],...
                       'MarkerFaceColor',[1 0 0],...
                       'MarkerSize',10);
                   
hold on;
plot(recall, sa.precision, '-s','LineWidth',2,...
                       'Color', [0 0 1], ...
                       'MarkerEdgeColor',[0 0 1],...
                       'MarkerSize',10);


handle_legend = legend('Proposed', 'Aono (EFSD)', 'Li (SBR-2D-3D\_NUM\_50)', 'Li (SBR-VC\_NUM\_50', 'Li (SBR-VC\_NUM\_100)', 'Saavedra (FDC)');
set(handle_legend, 'FontSize', 10, 'Fontname','Timesnewroman');
handlexlabel = xlabel('Recall');
set(handlexlabel, 'FontSize', 12, 'Fontname','Timesnewroman');
handle_ylabel = ylabel('Precision');
set(handle_ylabel, 'FontSize', 12, 'Fontname','Timesnewroman');

% figure(2);


