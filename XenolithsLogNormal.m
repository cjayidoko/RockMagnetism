%%%Fitting a lognormal probability density function to Natural Remanent
%%%Magnetization (NRM) data from Mantle Xenoliths. Data were obtained from Ferre
%%%et al. 2013. Must have the given data for Siberian, Hawaii,and Massif
%Cental in the matlab path;
%%%By IDOKO C. M. (c) 2017.

%%NrmLogNormalPDF for Siberia
%Load and preprocess data
load('NRMV.mat')
NRMS = 0.0026:0.001:0.607;%Resamples data for smoother curves;
%Fits a lognormal to the data mu = -2, sigma = 0.9.
pd = makedist('lognormal',-2,0.9);
PdfNrm = pdf(pd,NRMS);
%Visualization of Results;
figure(6)
subplot(3,1,1)
hold on
hist(NRMV);
plot(NRMS,PdfNrm, 'm')
xlabel('NRM[A/m]')
ylabel('Frequency')

%NrmLogNormal for Hawaii
load('NRM_HAWAII.mat')
NRM_V = NRM_Hwai/1000;
NRMS = min(NRM_V):(min(NRM_V)/10):max(NRM_V);
%Fits a lognormal to the data, mu = -4, sigma = 0.9.
pd = makedist('lognormal',-4,0.9);
PdfNrm1 = pdf(pd,NRMS);
PdfNrm = 0.06*PdfNrm1;
%Visualization
figure(6)
subplot(3,1,2)
hold on
hist(NRM_V);
plot(NRMS,PdfNrm,'m')
xlabel('NRM[A/m]')
ylabel('Frequency')

%NrmLogNormal for Massif;
%Load data and preprocess;
load('NRM_Massif.mat')
NRM_V = NRM_Masif;
NRMS = min(NRM_V):(min(NRM_V)/10):max(NRM_V);%Resamples for smoother curve;
%Fits a lognormal to the data mu = -5, sigma = 0.9.
pd = makedist('lognormal',-5,0.9);
PdfNrm1 = pdf(pd,NRMS);
PdfNrm = 0.025*PdfNrm1;
%Visualization of results;
figure(6)
subplot(3,1,3)
hold on
hist(NRM_V);
plot(NRMS,PdfNrm,'m')
xlabel('NRM[A/m]')
ylabel('Frequency')
