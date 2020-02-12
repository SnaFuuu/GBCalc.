function varargout = GBCalc(varargin)
% GBCALC MATLAB code for GBCalc.fig
%      GBCALC, by itself, creates a new GBCALC or raises the existing
%      singleton*.
%
%      H = GBCALC returns the handle to a new GBCALC or the handle to
%      the existing singleton*.
%
%      GBCALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GBCALC.M with the given input arguments.
%
%      GBCALC('Property','Value',...) creates a new GBCALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GBCalc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GBCalc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GBCalc

% Last Modified by GUIDE v2.5 13-Jan-2020 12:22:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GBCalc_OpeningFcn, ...
                   'gui_OutputFcn',  @GBCalc_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GBCalc is made visible.
function GBCalc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GBCalc (see VARARGIN)

% Choose default command line output for GBCalc
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GBCalc wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global cont
cont = 0;
set(handles.pushbutton2,'Enable','off');
img = imread('LOGOMARCA','png','BackgroundColor',[0.94 0.94 0.94]);
imshow(img);
axis off

% --- Outputs from this function are returned to the command line.
function varargout = GBCalc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menu1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenu11_Callback(hObject, eventdata, handles)
% hObject    handle to submenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
quit force


% --------------------------------------------------------------------
function menu2_Callback(hObject, eventdata, handles)
% hObject    handle to menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenu21_Callback(hObject, eventdata, handles)
% hObject    handle to submenu21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%hFigure = figure('Name','CONTATO E DESENVOLVEDORES','NumberTitle','off','MenuBar','none');

winopen DESENVOLVEDORES.pdf
% --------------------------------------------------------------------
function submenu22_Callback(hObject, eventdata, handles)
% hObject    handle to submenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rowname = {'a-','b-','c-','d-','e-','f-','g-','h-','i'};
columnname = {'HIPÓTESES BÁSICAS DE DIMENSIONAMENTO'};
colunmwidth = {454};
thirddata = {'Serão implementados concretos de classe C50 (f_ck<=50MPa)',...
    'São válidas as hipótese da viga de Bernoulli.','Perfeita adesão entre os materiais.',...
    'As tensões de tração no concreto são desconsideradas no ELU.',...
    'A ruína da peça no ELU é caracterizada pelas deformações específicas do concreto e do aço.',...
    'O concreto deve ter encurtamento máximo de 3,5 ‰.',...
    'O alongamento máximo do aço deve ser de 10,0 ‰.',...
    'A tensão nas armaduras é obtida através dos diagramas de tensão x deformação.',...
    'O diagrama de tensão x deformação no concreto deve ser considerado parábola-retângulo.'};
fig = figure('Name','SIMBOLOGIA UTILIZADA','Position',...
    [600 600 600 400],'NumberTitle','off','MenuBar','none');
uitable(fig,'Data',thirddata','RowName',rowname,'ColumnName',columnname,...
    'ColumnWidth',colunmwidth,'FontSize',10,'Position',[25 25 550 350]);

% --------------------------------------------------------------------
function submenu23_Callback(hObject, eventdata, handles)
% hObject    handle to submenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rowname = {'Ac','Asmin','Asmáx','As','Asef.','AbT',...
    'As''','As''ef.','AbC','AsP','AsPef.','d','d"','d''',...
    'x',num2str([char(946),'x']),num2str([char(949),'c']),...
    num2str([char(949),'s']),num2str([char(949),'''']),...
    'av','ah','Domin.','Tempo'};
columnname = {'LISTA DE SIMBOLOS'};
colunmwidth = {454};
thirddata = {'Área de concreto','Armadura de aço mínima de tração',...
    'Máxima armadura de aço permitida','Área de aço de calculada(tração)',...
    'Área de aço efetivamente disposta(tração)'...
    ,'Área da barra de tração','Área de aço de calculada(compressão)',...
    'Área de aço efetivamente disposta(compressão)'...
    ,'Área da barra de compressão','Área de aço da armadura de pele',...
    'Área de aço efetivamente disposta(pele)'...
    ,'Altura útil','Distância da fibra mais tracionada ao C.G. de As',...
    'Distância da fibra mais comprimida ao C.G. de As'''...
    ,'Profundidade da linha neutra','Relação x/d',...
    'Deformação específica do concreto','Deformação específica do aço tracionado'...
    ,'Deformação específica do aço comprimido',...
    'Espaçamento vertical entre as barras',...
    'espaçamento horizontal entre as barras','Dominío de deformação','Tempo decorrido de processamento'};
fig = figure('Name','SIMBOLOGIA UTILIZADA',...
    'Position',[600 600 600 400],'NumberTitle','off','MenuBar','none');
uitable(fig,'Data',thirddata','RowName',rowname,...
    'ColumnName',columnname,'ColumnWidth',...
    colunmwidth,'FontSize',10,'Position',[25 25 550 350]);

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
typeAble = (get(handles.popupmenu1,'Value'));
if typeAble == 2 
    set(handles.edit5,'Enable','off');
    set(handles.edit6,'Enable','off');
else
    set(handles.edit5,'Enable','on');
    set(handles.edit6,'Enable','on');
end



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tic
%1.0 INTRODUÇÃO
%  1.1 Entrada de dados
set(handles.uipushtool1,'Enable','off');
set(handles.uitoggletool1,'Enable','off');
set(handles.uitoggletool2,'Enable','off');
set(handles.uitoggletool4,'Enable','off');
%hold off aparece de início para que em uma nova entrada de dados, com a
%GUI ainda aberta, o sistema de eixo apague os dados antes plotados.
hold off
%lista de constantes que serão utilizadas dentro do script
KXlim = 0.45; KMDlim = 0.2509; yc = 1.4; ys = 1.15;c = 10^-2;...
    m = 10^-3;dagreg = 1.9; Color = [0.7 0.1 0];
global answer
global definput
global cont
global savedata
global beamidntf
localdefinput = {'8.0','DEFAULT' ,'6.3','0'};
if cont == 0
    definput = localdefinput;
end
%coleta dos dados inputados na GUI
%a variável type classifica a seção como T ou Retangular

type = (get(handles.popupmenu1,'Value'));
fck = abs(str2double(get(handles.edit1,'String')));
fyk = abs(str2double(get(handles.edit2,'String')));
mk = abs(str2double(get(handles.edit12,'String')));
bw = abs(str2double(get(handles.edit3,'String')));
h = abs(str2double(get(handles.edit4,'String')));
bf = abs(str2double(get(handles.edit5,'String')));
hf = abs(str2double(get(handles.edit6,'String')));
C = abs(str2double(get(handles.edit7,'String')));
dest = (get(handles.popupmenu2,'Value'));
dtrac = (get(handles.popupmenu3,'Value'));
title = 'ERRO';
if isnan(fck)
    msg = 'Por favor, verifique o campo: fck';
    errordlg(msg,title);
    return
elseif isnan(fyk)
    msg = 'Por favor, verifique o campo: fyk';
    errordlg(msg,title);
    return    
elseif isnan (mk)
    msg = 'Por favor, verifique o campo: mk';
    errordlg(msg,title);
    return
elseif isnan(bw)
    msg = 'Por favor, verifique o campo: bw';
    errordlg(msg,title);
    return    
elseif isnan(h)
    msg = 'Por favor, verifique o campo: h';
    errordlg(msg,title);
    return    
elseif isnan(bf)
    msg = 'Por favor, verifique o campo: bf';
    errordlg(msg,title);
    return    
elseif isnan(hf)
    msg = 'Por favor, verifique o campo: hf';
    errordlg(msg,title);
    return
elseif isnan(C)
    msg = 'Por favor, verifique o campo: C';
    errordlg(msg,title);
    return
end

if fck > 50
    msg = 'Por favor, insira um valor menor que 50 para o fck, pois apenas em versões futuras o GBCalc trabalhará com cocnretos de classe superior aos 50 MPa.';
    title = 'DADOS INCOMPATÍVEIS';
    errordlg(msg,title);
    return
elseif hf > h
    msg = 'A mesa da viga não pode ter altura superior a da própria viga (hf > h).';
    title = 'DADOS INCOMPATÍVEIS';
    errordlg(msg,title);
    return    
end
auxarray = str2double(answer);
helparray = str2double(localdefinput');
if isempty(auxarray)
    auxarray = str2double(definput');
end

if isnan(auxarray)
    auxarray = str2double(definput');
end

if isnan(auxarray(1,1)) == 0
    dportEst = auxarray(1,1);
else
    dportEst = helparray(1,1);
end

if isnan(auxarray(2,1)) == 0
    dcomp = auxarray(2,1);
else
    dcomp = str2double('sameas');
end

if isnan(auxarray(3,1)) == 0
    dpele = auxarray(3,1);
else
    dpele = helparray(3,1);
end

if isnan(auxarray(4,1)) == 0
    armcont = auxarray(4,1);
else
    armcont = helparray(4,1);
end
%  1.2 Conversão de unidades

%os valores inputados em menus popup, são valores que indicam a posição em
%um vetor coluna, por isso é necessário que para cada valor recebido da
%GUI seja feita a conversão para o verdadeiro número esperado pelo
%progrmaa, isso é feito nos seguintes switchs/case
switch dest
    case 1
        dest = 5.0;
    case 2
        dest = 6.3;
    case 3
        dest = 8.0;
    case 4
        dest = 10.0;
    case 5
        dest = 12.5;
    case 6 
        dest = 0.0;
end

switch dtrac
    case 1
        dtrac = 5.0;
    case 2
        dtrac = 6.3;
    case 3
        dtrac = 8.0;
    case 4
        dtrac = 10.0;
    case 5
        dtrac = 12.5;
    case 6
        dtrac = 16.0;
    case 7
        dtrac = 20.0;
    case 8
        dtrac = 25.0;
    case 9 
        dtrac = 32.0;
    case 10
        dtrac = 40.0;
end

if isnan(dcomp)
    dcomp = dtrac;
end
%conversão para o sistema internacional
C = C*c;
dest = dest*m; 
dtrac = dtrac*m;
dcomp = dcomp*m;
dportEst = dportEst*m;
dpele = dpele*m;
fcd = (fck/yc)*10^6;
fyd = (fyk/ys)*10^6;
eyd = 2.07*m;
elim = 10*m;

%2.0 CÁLCULO E DETALHAMENTO DAS ARMADURAS
%cálculo da altura útil, momento de projeto e alguns adicionais
if fck < 30
    rohmin = 0.15;
else
    rohmin = ((-1*10^-5)*fck)+0.0038*fck + 0.0436;
end
dlin = C+dest+dtrac/2;
d2lin = C+dest+dcomp/2;
d = (h*c)-dlin;
md = mk*yc*10^3;
Ab = (pi*dtrac^2/4);
Abcomp = (pi*dcomp^2/4);
%  2.1 Seção Retangular
if type == 2
%teste da necessidade de armadura de compressão
    for n = 0:2
        dnew = d;
        d2linnew = d2lin;
        dmin = 2*sqrt(md/(bw*c*fcd));
%      2.1.1 Armadura dupla
        if dmin > d
            mlim = KMDlim*(bw*c)*fcd*d^2;
            m2 = md-mlim;
            As1 = mlim/((1-0.4*.45)*d*fyd);
            As2 = m2/((d-d2lin)*fyd);
            As = As1 + As2;
            elin = (3.5*m)*(0.45*d-d2lin)/(0.45*d);
            if elin >= eyd
                fslin = fyd;
            else
                fslin = fyd*elin/eyd;
            end
            KX = KXlim;
            x = KX*d;
            Aslin = (m2/((d-d2lin)*fslin));
            ec = 3.5*m;
            es = (ec-ec*KX)/KX;
            port_est = 0;
%       2.1.2 Armadura simples
        else
            elin ='---------------';
            KMD = md/(bw*c*d^2*fcd);
            Px = [-0.272,0.68,-KMD];
            rz = roots(Px);
            if rz(1,1)*d >= d
                KX = rz(2,1);
            elseif rz(1,1) < 0
                KX = rz(2,1);
            else
                KX = rz(1,1);
            end
            x = KX*d;
            KZ = 1-0.4*KX;
            As = md/(KZ*d*fyd);
            Aslin = 0;
            port_est = 1;
            dcomp = dportEst;
            Abcomp = (pi*dcomp^2)/4;
            if KMD >= 0.16
                ec = 3.5*m;
                es = (ec-ec*KX)/KX;
            else
                es = elim;
                ec = KX*es/(1-KX);
            end
        end 
%       2.1.3 Análise dos resultados:
        d2lin = recalcd2lin(port_est,dcomp,dportEst,dagreg,Aslin,Abcomp,bw,dest,C,c);
        nbtrac = ceil(As/Ab); 
        if nbtrac == 1
            nbtrac = 2;
        end
        cmp1 = [2.0;dtrac/c;0.5*dagreg];
        cmp2 = [2.0;dtrac/c;1.2*dagreg];
        ev = max(cmp1);
        eh = max(cmp2);
        bdisp = (bw-(2*C/c+2*dest/c+2*dtrac/c));
        if bdisp >= eh
            nbint = fix(bdisp /(dtrac/c+2*eh));
            if nbint+2 > nbtrac
                nbint = nbtrac-2;
            end
            if nbint > 0
                nbpl = 2+nbint;
                nlin = ceil(nbtrac/nbpl);
            else
                nbpl = 2+nbint;
                nlin = ceil(nbtrac/nbpl);
            end
        else
            msg = 'Parece que a sua seção não comporta o diâmetro das barras tracionadas, pois sua viga é muito esbelta, por favor redefina sua seção e tente novamente.';
            title = 'OPS... DESCULPE';
            errordlg(msg,title);
            return
        end
        if nlin > 1
            sum = 0;
            contloc = 0;
            for i = 0:nlin-1
                if contloc == nlin-1
                    rest = nbtrac-contloc*nbpl;
                    sum = sum+Ab*rest*(dtrac/2+i*(ev*c+dtrac));
                else
                    calc = Ab*nbpl*(dtrac/2+i*(ev*c+dtrac));
                    sum = sum+calc;
                    contloc = contloc+1;
                end
            end
            ybus = (sum/(nbtrac*Ab));
            d = (h*c)-(dlin+ybus-dtrac/2);
        else
            d = dnew;
            ybus = dtrac/2;
        end
        if d < x
            msg = ('A viga não suporta um valor de momento dessa ordem, pois seria impossível dispor a armadura de tração abaixo da linha neutra. É recomendado que altere sua seção para comportar o esforço solicitado.');
            title = 'ESFORÇO NÃO SUPORTADO';
            errordlg(msg,title);
            return
        end
        if d == dnew && d2lin == d2linnew
            n = n+1;
        end
    end

    %if x <= 0
        
    nlin2pel = nlin;
    Ac = bw*h*c^2;
    Asmin = rohmin*Ac*c;
    Asmax = 4*Ac*c;
    if As < Asmin
        As = Asmin;
    elseif (As+Aslin) > Asmax
        msg = 'A soma das armaduras de compressão e tração, resulta em um valor superior a 4% da área de concreto da seção. É recomendado que altere sua seção para comportar o esforço solicitado';
        title = 'ÁREA DE AÇO MÁXIMA ATINGIDA';
        errordlg(msg,title);
        return
    end
    if h >= 60
        Aspele = 0.10*bw*h*c^3;
    else
        Abpele = 0;
        nlinPele = 0;
        Aspele = 0;
    end
    if armcont ~= 1
        cntrdup = abs(nlin*dtrac+(nlin-1)*ev*c-ybus);
        cntrddown = abs(ybus - dtrac/2);
        if cntrdup > 0.1*h*c
            msg = 'Não podemos considerar sua seção como tendo armadura concentrada, pois existem barras muito distantes do centróide, como especifíca o item 17.2.4.1 da NBR 6118/2014. Recomendamos que altere o diâmetro e tente novamente.';
            title = 'OPS... DESCULPE :(';
            errordlg(msg,title);
            return
        elseif cntrddown > 0.1*h*c
            msg = 'Não podemos considerar sua seção como tendo armadura concentrada, pois existem barras muito distantes do centróide, como especifíca o item 17.2.4.1 da NBR 6118/2014. Recomendamos que altere o diâmetro e tente novamente.';
            title = 'OPS... DESCULPE :(';
            errordlg(msg,title);
            return
        end
    end
    %detalhamento da seção
    %desenhando a seção:
    bx = [0,0,bw,bw,0];
    hy = [0,h,h,0,0];
    fill(bx,hy,[0.8 0.8 0.8],'LineWidth',2);
    xlabel(bw);
    ylabel(h);
    hold on
    %desenhando o estribo:
    if dest > 0
        if port_est == 1
            Vdobraex = [(C+dportEst+dest)/c,(C+dportEst+dest)/c,(C+dportEst+2*dest)/c,(C+dportEst+2*dest)/c];
            Vdobraey = [(h*c-C-dest)/c,(h*c-C-2*dest-(0.03+dportEst))/c,(h*c-C-2*dest-(0.03+dportEst))/c,(h*c-C)/c];
            Hdobraex = [C+dest,C+dest+dportEst,C+dest+dportEst,C+dest,C+dest]/c;
            Hdobraey = [h*c-C-dest-dportEst,h*c-C-dest-dportEst,h*c-C-2*dest-dportEst,h*c-C-2*dest-dportEst,h*c-C-dest-dportEst]/c;
            H2dobraex = [C+2*dest+dportEst,C+2*dest+dportEst+0.03,C+2*dest+dportEst+0.03,C+2*dest+dportEst,C+2*dest+dportEst]/c;
            H2dobraey = [h*c-C-dest-dportEst,h*c-C-dest-dportEst,h*c-C-2*dest-dportEst,h*c-C-2*dest-dportEst,h*c-C-dest-dportEst]/c;
            eix = [C+dest+dportEst,C+dest,C+dest,bw*c-C-dest,bw*c-C-dest,C+2*dest+dportEst]/c;
        else
            Vdobraex = [(C+dcomp+dest)/c,(C+dcomp+dest)/c,(C+dcomp+2*dest)/c,(C+dcomp+2*dest)/c];
            Vdobraey = [(h*c-C-dest)/c,(h*c-C-2*dest-(0.03+dcomp))/c,(h*c-C-2*dest-(0.03+dcomp))/c,(h*c-C)/c];
            Hdobraex = [C+dest,C+dest+dcomp,C+dest+dcomp,C+dest,C+dest]/c;
            Hdobraey = [h*c-C-dest-dcomp,h*c-C-dest-dcomp,h*c-C-2*dest-dcomp,h*c-C-2*dest-dcomp,h*c-C-dest-dcomp]/c;
            H2dobraex = [C+2*dest+dcomp,C+2*dest+dcomp+0.03,C+2*dest+dcomp+0.03,C+2*dest+dcomp,C+2*dest+dcomp]/c;
            H2dobraey = [h*c-C-dest-dcomp,h*c-C-dest-dcomp,h*c-C-2*dest-dcomp,h*c-C-2*dest-dcomp,h*c-C-dest-dcomp]/c;
            eix = [C+dest+dcomp,C+dest,C+dest,bw*c-C-dest,bw*c-C-dest,C+2*dest+dcomp]/c;
        end
        eex = [C/c,C/c,bw-C/c,bw-C/c,C/c];
        eey = [C/c,h-C/c,h-C/c,C/c,C/c];
        eiy = [h*c-C-dest,h*c-C-dest,C+dest,C+dest,h*c-C-dest,h*c-C-dest]/c;
        plot(Vdobraex,Vdobraey,'k','LineWidth',1);
        plot(Hdobraex,Hdobraey,'k','LineWidth',1);
        plot(H2dobraex,H2dobraey,'k','LineWidth',1);
        plot(eex,eey,'k','LineWidth',1);
        plot(eix,eiy,'k','LineWidth',1);
        axis off
        axis equal
        hold on
    else
        axis off
        axis equal
    end
    %desenhando as barras:
    %barras tracionadas:
    nbtrac = ceil(As/Ab);
    if nbtrac == 1
        nbtrac = 2;
    end
    if bdisp >= eh
        nbint = fix(bdisp /(dtrac/c+2*eh));
        if nbint+2 > nbtrac
            nbint = nbtrac-2;
        end
        if nbint > 0
            nbpl = 2+nbint;
            nlin = ceil(nbtrac/nbpl);
            contloc = 0;
            for i = 0:nlin-1
                for j = 0:nbpl-1
                    if contloc == nbtrac
                        break
                    elseif contloc == nbtrac-1
                        t = 0:0.001:2*pi;
                        ax = cos(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+(bdisp+dtrac/c);
                        ay = sin(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+i*(ev+dtrac/c);
                        fill(ax,ay,Color);
                        dashdotx = [(C+dest+dtrac/2)/c+(bdisp+dtrac/c),bw];
                        dashdoty = [(C+dest+dtrac/2)/c+i*(ev+dtrac/c),-0.1*h];
                        plot(dashdotx,dashdoty,'k','LineStyle','-.');
                        hold on
                        contloc = contloc+1;
                    else
                        step = (bdisp+dtrac/c)/(nbint+1);
                        t = 0:0.001:2*pi;
                        ax = cos(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+j*(step);
                        ay = sin(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+i*(ev+dtrac/c);
                        fill(ax,ay,Color);
                        dashdotx = [(C+dest+dtrac/2)/c+j*(step),bw];
                        dashdoty = [(C+dest+dtrac/2)/c+i*(ev+dtrac/c),-0.1*h];
                        plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                        hold on
                        contloc = contloc+1;
                    end
                end
            end
        else
            nbpl = 2+nbint;
            nlin = ceil(nbtrac/nbpl);
            contloc = 0;
            for i = 0:nlin-1
                for j = 0:nbpl-1
                    if contloc == nbtrac
                        break
                    end
                    t = 0:0.001:2*pi;
                    ax = cos(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+j*(bdisp+dtrac/c);
                    ay = sin(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+i*(ev+dtrac/c);
                    fill(ax,ay,Color);
                    dashdotx = [(C+dest+dtrac/2)/c+j*(bdisp+dtrac/c),bw];
                    dashdoty = [(C+dest+dtrac/2)/c+i*(ev+dtrac/c),-0.1*h];
                    plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                    hold on 
                    contloc = contloc+1;
                end
            end
        end
    end
    if As == Asmin
        subtitle = num2str([num2str(nbtrac(:).'),' N1 \Phi',...
            num2str(dtrac/m(:).'),'mm (Armadura miníma de tração)']);
        text(bw,-0.1*h,subtitle);
    else
        subtitle = num2str([num2str(nbtrac(:).'),' N1 \Phi',...
            num2str(dtrac/m(:).'),'mm']);
        text(bw,-0.1*h,subtitle);
    end

    %desenhhando as barras comprimidas
    cmp1 = [2.0;dcomp/c;0.5*dagreg];
    cmp2 = [2.0;dcomp/c;1.2*dagreg];
    evcomp = max(cmp1);
    ehcomp = max(cmp2);
    if port_est == 1
        nlincomp = 1;
        dcomp = dportEst;
        nbcomp = 2;
        if dest > 0
            for i = 0:1
                t = 0:0.001:2*pi;
                ax = cos(t)*(dportEst)/(2*c)+(C+dest+(dportEst/2))/c+i*(bw*c-2*C-2*dest-dportEst)/c;
                ay = sin(t)*(dportEst)/(2*c)+h-(C+dest+(dportEst/2))/c;
                dashdotx = [(C+dest+(dportEst/2))/c+i*(bw*c-2*C-2*dest-dportEst)/c,bw];
                dashdoty = [h-(C+dest+(dportEst/2))/c,1.1*h];
                plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                fill(ax,ay,Color);
                hold on 
            end
        end
    else
        nbcomp = ceil(Aslin/Abcomp);
        if nbcomp == 1
            nbcomp = 2;
        end
        bdisp = (bw-(2*C/c+2*dest/c+2*dcomp/c));
        if bdisp >= ehcomp
            nbint = fix(bdisp /(dcomp/c+2*ehcomp));
            if nbint+2 > nbcomp
                nbint = nbcomp-2;
            end
            if nbint > 0
                nbpl = 2+nbint;
                nlincomp = ceil(nbcomp/nbpl);
                contloc = 0;
                for i = 0:nlincomp-1
                    for j = 0:nbpl-1
                        if contloc == nbcomp
                            break
                        elseif contloc == nbcomp-1
                            t = 0:0.001:2*pi;
                            ax = cos(t)*dcomp/(2*c)+(C+dest+dcomp/2)/c+(bdisp+dcomp/c);
                            ay = sin(t)*dcomp/(2*c)+h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c);
                            fill(ax,ay,Color);
                            dashdotx = [(C+dest+dcomp/2)/c+(bdisp+dcomp/c),bw];
                            dashdoty = [h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c),1.1*h];
                            plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                            hold on
                            contloc = contloc+1;
                        else
                            step = (bdisp+dcomp/c)/(nbint+1);
                            t = 0:0.001:2*pi;
                            ax = cos(t)*dcomp/(2*c)+(C+dest+dcomp/2)/c+j*(step);
                            ay = sin(t)*dcomp/(2*c)+h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c);
                            fill(ax,ay,Color);
                            dashdotx = [(C+dest+dcomp/2)/c+j*(step),bw];
                            dashdoty = [h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c),1.1*h];
                            plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);                            
                            hold on
                            contloc = contloc+1;
                        end
                    end
                end
            else
                nbpl = 2+nbint;
                nlincomp = ceil(nbcomp/nbpl);
                contloc = 0;
                for i = 0:nlincomp-1
                    for j = 0:nbpl-1
                        if contloc == nbcomp
                            break
                        end
                        t = 0:0.001:2*pi;
                        ax = cos(t)*dcomp/(2*c)+(C+dest+dcomp/2)/c+j*(bdisp+dcomp/c);
                        ay = sin(t)*dcomp/(2*c)+h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c);
                        fill(ax,ay,Color);
                        dashdotx = [(C+dest+dcomp/2)/c+j*(bdisp+dcomp/c),bw];
                        dashdoty = [h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c),1.1*h];
                        plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5)                        
                        hold on 
                        contloc = contloc+1;
                    end
                end
            end
        else
            %fazer mensagem de erro, dizendo que a seção não comporta o
            %diametro das armaduras, portanto é melhor aumentar a seção ou
            %aumentar as bitolas
        end
    end
    if port_est == 1
        subtitle = num2str([num2str(nbcomp(:).'),' N2 \Phi',...
            num2str(dcomp/m(:).'),'mm (Porta Estribos)']);
        text(bw,1.1*h,subtitle);  
    else
        subtitle = num2str([num2str(nbcomp(:).'),' N2 \Phi',...
            num2str(dcomp/m(:).'),'mm']);
        text(bw,1.1*h,subtitle);
    end
    
    %desenhando a armadura de pele
    freespc = h-(nlin2pel*(dtrac/c+ev)+nlincomp*(dcomp/c+evcomp)+2*(C+dest)/c+(x+dpele/2)/c);
    if Aspele > 0
        nbplPele = 2;
        Abpele = pi*((dpele)^2)/4;
        nlinPele = ceil(Aspele/Abpele);
        bPele = (bw-(2*C/c+2*dest/c+2*dpele/c));
        jump = freespc/(nlinPele-1);
        for i = 0:nlinPele-1
            for j = 0:nbplPele-1
                t = 0:0.001:2*pi;
                ax = cos(t)*dpele/(2*c)+(C+dest+dpele/2)/c+j*(bPele+dpele/c);
                ay = sin(t)*dpele/(2*c)+(C+dest)/c+nlin2pel*(dtrac/c+ev)+i*jump;
                fill(ax,ay,Color);
                dashdotx = [(C+dest+dpele/2)/c,-0.1*h];
                dashdoty = [(C+dest)/c+nlin2pel*(dtrac/c+ev)+i*jump,0.5*h];
                plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                hold on 
            end
        end
        subtitle = num2str(['2x',num2str(nlinPele(:).'),' N3 \Phi',...
            num2str(dpele/m(:).'),'mm']);
        text(-0.1*h,0.5*h,subtitle,'Rotation',90,...
            'VerticalAlignment','bottom');
    end
    beamidntf = num2str([get(handles.edit10,'String'),'(',num2str(bw(:).'),...
        'x',num2str(h(:).'),')','-',get(handles.edit11,'String')]);
    text(-0.2*h,1.1*h,beamidntf,'FontWeight','Bold')    
else
%  2.1 Seção Tê
    % Altura da LN
    for n = 0:2
        dnew = d;
        d2linnew = d2lin;
        if h >= 60
            Aspele = 0.10*bw*h*c^3;
        else
            Abpele = 0;
            nlinPele = 0;
            Aspele = 0;
        end
        KMD = md/(bf*c*d^2*fcd);
        Px = [-0.272,0.68,-KMD];
        rz = roots(Px);
        if rz(1,1)*d >= d
            KX = rz(2,1);
        elseif rz(1,1) < 0
            KX = rz(2,1);
        else
            KX = rz(1,1);
        end
        x = KX*d;
    %caso esteja a LN na mesa
        if x/c <= hf
            Ac = (bf*h-((bf-bw)*(h-hf)))*c^2;
            Asmin = rohmin*Ac*c;
            elin ='---------------';
            KZ = 1-0.4*KX;
            As = md/(KZ*d*fyd);
            Aslin = 0;
            dcomp = dportEst;
            port_est = 1;
            if KMD >= 0.16
                ec = 3.5*m;
                es = (ec-ec*KX)/KX;
            else
                es = elim;
                ec = KX*es/(1-KX);
            end
    %caso nao esteja
        else
            Ac = (bf*h-((bf-bw)*(h-hf)))*c^2;
            Acmin = bw*h*c^2;
            Asmin = rohmin*Acmin*c;
            mdflg = 0.85*fcd*(hf*c)*(bf-bw)*c*(d-(hf*c/2));
            mdwire = md-mdflg;
            Asflg = mdflg/((d-(hf*c/2))*fyd);
            dnew = d;
            d2linnew = d2lin;
            dmin = 2*sqrt(mdwire/(bw*c*fcd));
%      2.1.1 Armadura dupla
            if dmin > d
                mlim = KMDlim*(bw*c)*fcd*d^2;
                m2 = mdwire-mlim;
                As1 = mlim/((1-0.4*.45)*d*fyd);
                As2 = m2/((d-d2lin)*fyd);
                As = As1+As2+Asflg;
                elin = (3.5*m)*(0.45*d-d2lin)/(0.45*d);
                if elin >= eyd
                    fslin = fyd;
                else
                    fslin = fyd*elin/eyd;
                end
                KX = KXlim;
                x = KX*d;
                Aslin = (m2/((d-d2lin)*fslin));
                ec = 3.5*m;
                es = (ec-ec*KX)/KX;
                port_est = 0;
%       2.1.2 Armadura simples
            else
                elin ='---------------';
                KMD = mdwire/(bw*c*d^2*fcd);
                Px = [-0.272,0.68,-KMD];
                rz = roots(Px);
                if rz(1,1)*d >= d
                    KX = rz(2,1);
                elseif rz(1,1) < 0
                    KX = rz(2,1);
                else
                    KX = rz(1,1);
                end
                x = KX*d;
                KZ = 1-0.4*KX;
                As = mdwire/(KZ*d*fyd)+Asflg;
                Aslin = 0;
                port_est = 1;
                dcomp = dportEst;
                Abcomp = (pi*dcomp^2)/4;
                if KMD >= 0.16
                    ec = 3.5*m;
                    es = (ec-ec*KX)/KX;
                else
                    es = elim;
                    ec = KX*es/(1-KX);
                end
            end
        end
%       2.1.3 Análise dos resultados:
        d2lin = recalcd2lin(port_est,dcomp,dportEst,dagreg,Aslin,Abcomp,bw,dest,C,c);
        nbtrac = ceil(As/Ab); 
        if nbtrac == 1
            nbtrac = 2;
        end
        cmp1 = [2.0;dtrac/c;0.5*dagreg];
        cmp2 = [2.0;dtrac/c;1.2*dagreg];
        ev = max(cmp1);
        eh = max(cmp2);
        bdisp = (bw-(2*C/c+2*dest/c+2*dtrac/c));
        if bdisp >= eh
            nbint = fix(bdisp /(dtrac/c+2*eh));
            if nbint+2 > nbtrac
                nbint = nbtrac-2;
            end
            if nbint > 0
                nbpl = 2+nbint;
                nlin = ceil(nbtrac/nbpl);
            else
                nbpl = 2+nbint;
                nlin = ceil(nbtrac/nbpl);
            end
        else
            msg = 'Parece que a sua seção não comporta o diâmetro das barras tracionadas, pois sua viga é muito esbelta, por favor redefina sua seção e tente novamente.';
            title = 'OPS... DESCULPE';
            errordlg(msg,title);
            return
        end
        if nlin > 1
            sum = 0;
            contloc = 0;
            for i = 0:nlin-1
                if contloc == nlin-1
                    rest = nbtrac-contloc*nbpl;
                    sum = sum+Ab*rest*(dtrac/2+i*(ev*c+dtrac));
                else
                    calc = Ab*nbpl*(dtrac/2+i*(ev*c+dtrac));
                    sum = sum+calc;
                    contloc = contloc+1;
                end
            end
            ybus = (sum/(nbtrac*Ab));
            d = (h*c)-(dlin+ybus-dtrac/2);
        else
            d = dnew;
            ybus = dtrac/2;
        end
        if d < x
            msg = ('A viga não suporta um valor de momento dessa ordem, pois seria impossível dispor a armadura de tração abaixo da linha neutra. É recomendado que altere sua seção para comportar o esforço solicitado.');
            title = 'ESFORÇO NÃO SUPORTADO';
            errordlg(msg,title);
            return
        end
        if d == dnew && d2lin == d2linnew
            n = n+1;
        end
    %if x <= 0
        nlin2pel = nlin;
        Asmax = 4*Ac*c;
        if As < Asmin
            As = Asmin;
        elseif (As+Aslin) > Asmax
            msg = 'A soma das armaduras de compressão e tração,... resulta em um valor superior a 4% da área de concreto da seção. É recomendado que altere sua seção para comportar o esforço solicitado';
            title = 'ÁREA DE AÇO MÁXIMA ATINGIDA';
            errordlg(msg,title);
            return
        end
        if armcont ~= 1
            cntrdup = abs(nlin*dtrac+(nlin-1)*ev*c-ybus);
            cntrddown = abs(ybus - dtrac/2);
            if cntrdup > 0.1*h*c
                msg = 'Não podemos considerar sua seção como tendo armadura concentrada, pois existem barras muito distantes do centróide, como especifíca o item 17.2.4.1 da NBR 6118/2014. Recomendamos que altere o diâmetro e tente novamente.';
                title = 'OPS... DESCULPE :(';
                errordlg(msg,title);
                return
            elseif cntrddown > 0.1*h*c
                msg = 'Não podemos considerar sua seção como tendo armadura concentrada, pois existem barras muito distantes do centróide, como especifíca o item 17.2.4.1 da NBR 6118/2014. Recomendamos que altere o diâmetro e tente novamente.';
                title = 'OPS... DESCULPE :(';
                errordlg(msg,title);
                return
            end
        end
    end 
    %detalhamento da seção
    %desenhando a seção:
    b1 = (bf-bw)/2;
    bx = [0,0,-b1,-b1,bw+b1,bw+b1,bw,bw,0];
    hy = [0,h-hf,h-hf,h,h,h-hf,h-hf,0,0];
    fill(bx,hy,[0.8 0.8 0.8],'LineWidth',2);
    xlabel(bw);
    ylabel(h);
    hold on
    %desenhando o estribo:
    if dest > 0
        if port_est == 1
            Vdobraex = [(C+dportEst+dest)/c,(C+dportEst+dest)/c,...
                (C+dportEst+2*dest)/c,(C+dportEst+2*dest)/c];
            Vdobraey = [(h*c-C-dest)/c,(h*c-C-2*dest-(0.03+dportEst))/c,...
                (h*c-C-2*dest-(0.03+dportEst))/c,(h*c-C)/c];
            Hdobraex = [C+dest,C+dest+dportEst,C+dest+dportEst,C+dest,C+dest]/c;
            Hdobraey = [h*c-C-dest-dportEst,h*c-C-dest-dportEst,...
                h*c-C-2*dest-dportEst,h*c-C-2*dest-dportEst,h*c-C-dest-dportEst]/c;
            H2dobraex = [C+2*dest+dportEst,C+2*dest+dportEst+0.03,...
                C+2*dest+dportEst+0.03,C+2*dest+dportEst,C+2*dest+dportEst]/c;
            H2dobraey = [h*c-C-dest-dportEst,h*c-C-dest-dportEst,...
                h*c-C-2*dest-dportEst,h*c-C-2*dest-dportEst,h*c-C-dest-dportEst]/c;
            eix = [C+dest+dportEst,C+dest,C+dest,bw*c-C-dest,...
                bw*c-C-dest,C+2*dest+dportEst]/c;
        else
            Vdobraex = [(C+dcomp+dest)/c,(C+dcomp+dest)/c,...
                (C+dcomp+2*dest)/c,(C+dcomp+2*dest)/c];
            Vdobraey = [(h*c-C-dest)/c,(h*c-C-2*dest-(0.03+dcomp))/c,...
                (h*c-C-2*dest-(0.03+dcomp))/c,(h*c-C)/c];
            Hdobraex = [C+dest,C+dest+dcomp,C+dest+dcomp,C+dest,C+dest]/c;
            Hdobraey = [h*c-C-dest-dcomp,h*c-C-dest-dcomp,...
                h*c-C-2*dest-dcomp,h*c-C-2*dest-dcomp,h*c-C-dest-dcomp]/c;
            H2dobraex = [C+2*dest+dcomp,C+2*dest+dcomp+0.03,...
                C+2*dest+dcomp+0.03,C+2*dest+dcomp,C+2*dest+dcomp]/c;
            H2dobraey = [h*c-C-dest-dcomp,h*c-C-dest-dcomp,...
                h*c-C-2*dest-dcomp,h*c-C-2*dest-dcomp,h*c-C-dest-dcomp]/c;
            eix = [C+dest+dcomp,C+dest,C+dest,bw*c-C-dest,...
                bw*c-C-dest,C+2*dest+dcomp]/c;
        end
        eex = [C/c,C/c,bw-C/c,bw-C/c,C/c];
        eey = [C/c,h-C/c,h-C/c,C/c,C/c];
        eiy = [h*c-C-dest,h*c-C-dest,C+dest,C+dest,h*c-C-dest,h*c-C-dest]/c;
        plot(Vdobraex,Vdobraey,'k','LineWidth',1);
        plot(Hdobraex,Hdobraey,'k','LineWidth',1);
        plot(H2dobraex,H2dobraey,'k','LineWidth',1);
        plot(eex,eey,'k','LineWidth',1);
        plot(eix,eiy,'k','LineWidth',1);
        axis off
        axis equal
        hold on
    else
        axis off
        axis equal
    end
    %desenhando as barras:
    %barras tracionadas:
    cmp1 = [2.0;dtrac/c;0.5*dagreg];
    cmp2 = [2.0;dtrac/c;1.2*dagreg];
    ev = max(cmp1);
    eh = max(cmp2);    
    bdisp = (bw-(2*C/c+2*dest/c+2*dtrac/c));
    nbtrac = ceil(As/Ab);
    if nbtrac == 1
        nbtrac = 2;
    end
    if bdisp >= eh
        nbint = fix(bdisp/(dtrac/c+2*eh));
        if nbint+2 > nbtrac
            nbint = nbtrac-2;
        end
        if nbint > 0
            nbpl = 2+nbint;
            nlin = ceil(nbtrac/nbpl);
            contloc = 0;
            for i = 0:nlin-1
                for j = 0:nbpl-1
                    if contloc == nbtrac
                        break
                    elseif contloc == nbtrac-1
                        t = 0:0.001:2*pi;
                        ax = cos(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+(bdisp+dtrac/c);
                        ay = sin(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+i*(ev+dtrac/c);
                        fill(ax,ay,Color);
                        dashdotx = [(C+dest+dtrac/2)/c+(bdisp+dtrac/c),bw];
                        dashdoty = [(C+dest+dtrac/2)/c+i*(ev+dtrac/c),-0.1*h];
                        plot(dashdotx,dashdoty,'k','LineStyle','-.');
                        hold on
                        contloc = contloc+1;
                    else
                        step = (bdisp+dtrac/c)/(nbint+1);
                        t = 0:0.001:2*pi;
                        ax = cos(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+j*(step);
                        ay = sin(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+i*(ev+dtrac/c);
                        fill(ax,ay,Color);
                        dashdotx = [(C+dest+dtrac/2)/c+j*(step),bw];
                        dashdoty = [(C+dest+dtrac/2)/c+i*(ev+dtrac/c),-0.1*h];
                        plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                        hold on
                        contloc = contloc+1;
                    end
                end
            end
        else
            nbpl = 2+nbint;
            nlin = ceil(nbtrac/nbpl);
            contloc = 0;
            for i = 0:nlin-1
                for j = 0:nbpl-1
                    if contloc == nbtrac
                        break
                    end
                    t = 0:0.001:2*pi;
                    ax = cos(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+j*(bdisp+dtrac/c);
                    ay = sin(t)*dtrac/(2*c)+(C+dest+dtrac/2)/c+i*(ev+dtrac/c);
                    fill(ax,ay,Color);
                    dashdotx = [(C+dest+dtrac/2)/c+j*(bdisp+dtrac/c),bw];
                    dashdoty = [(C+dest+dtrac/2)/c+i*(ev+dtrac/c),-0.1*h];
                    plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                    hold on 
                    contloc = contloc+1;
                end
            end
        end
    end
    nlin2pel = nlin;
    if As == Asmin
        subtitle = num2str([num2str(nbtrac(:).'),' N1 \Phi',...
            num2str(dtrac/m(:).'),'mm (Armadura miníma de tração)']);
        text(bw,-0.1*h,subtitle);
    else
        subtitle = num2str([num2str(nbtrac(:).'),' N1 \Phi',...
            num2str(dtrac/m(:).'),'mm']);
        text(bw,-0.1*h,subtitle);
    end

    %desenhhando as barras comprimidas
    cmp1 = [2.0;dcomp/c;0.5*dagreg];
    cmp2 = [2.0;dcomp/c;1.2*dagreg];
    evcomp = max(cmp1);
    ehcomp = max(cmp2);
    if port_est == 1
        nlincomp = 1;
        dcomp = dportEst;
        nbcomp = 2;
        if dest > 0
            for i = 0:1
                t = 0:0.001:2*pi;
                ax = cos(t)*(dportEst)/(2*c)+(C+dest+(dportEst/2))/c+i*(bw*c-2*C-2*dest-dportEst)/c;
                ay = sin(t)*(dportEst)/(2*c)+h-(C+dest+(dportEst/2))/c;
                dashdotx = [(C+dest+(dportEst/2))/c+i*(bw*c-2*C-2*dest-dportEst)/c,bw];
                dashdoty = [h-(C+dest+(dportEst/2))/c,1.1*h];
                plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                fill(ax,ay,Color);
                hold on 
            end
        end
    else
        nbcomp = ceil(Aslin/Abcomp);
        if nbcomp == 1
            nbcomp = 2;
        end
        bdisp = (bw-(2*C/c+2*dest/c+2*dcomp/c));
        if bdisp >= ehcomp
            nbint = fix(bdisp /(dcomp/c+2*ehcomp));
            if nbint+2 > nbcomp
                nbint = nbcomp-2;
            end
            if nbint > 0
                nbpl = 2+nbint;
                nlincomp = ceil(nbcomp/nbpl);
                contloc = 0;
                for i = 0:nlincomp-1
                    for j = 0:nbpl-1
                        if contloc == nbcomp
                            break
                        elseif contloc == nbcomp-1
                            t = 0:0.001:2*pi;
                            ax = cos(t)*dcomp/(2*c)+(C+dest+dcomp/2)/c+(bdisp+dcomp/c);
                            ay = sin(t)*dcomp/(2*c)+h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c);
                            fill(ax,ay,Color);
                            dashdotx = [(C+dest+dcomp/2)/c+(bdisp+dcomp/c),bw];
                            dashdoty = [h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c),1.1*h];
                            plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                            hold on
                            contloc = contloc+1;
                        else
                            step = (bdisp+dcomp/c)/(nbint+1);
                            t = 0:0.001:2*pi;
                            ax = cos(t)*dcomp/(2*c)+(C+dest+dcomp/2)/c+j*(step);
                            ay = sin(t)*dcomp/(2*c)+h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c);
                            fill(ax,ay,Color);
                            dashdotx = [(C+dest+dcomp/2)/c+j*(step),bw];
                            dashdoty = [h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c),1.1*h];
                            plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);                            
                            hold on
                            contloc = contloc+1;
                        end
                    end
                end
            else
                nbpl = 2+nbint;
                nlincomp = ceil(nbcomp/nbpl);
                contloc = 0;
                for i = 0:nlincomp-1
                    for j = 0:nbpl-1
                        if contloc == nbcomp
                            break
                        end
                        t = 0:0.001:2*pi;
                        ax = cos(t)*dcomp/(2*c)+(C+dest+dcomp/2)/c+j*(bdisp+dcomp/c);
                        ay = sin(t)*dcomp/(2*c)+h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c);
                        fill(ax,ay,Color);
                        dashdotx = [(C+dest+dcomp/2)/c+j*(bdisp+dcomp/c),bw];
                        dashdoty = [h-(C+dest+dcomp/2)/c-i*(evcomp+dcomp/c),1.1*h];
                        plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5)                        
                        hold on 
                        contloc = contloc+1;
                    end
                end
            end
        else
            %fazer mensagem de erro, dizendo que a seção não comporta o
            %diametro das armaduras, portanto é melhor aumentar a seção ou
            %aumentar as bitolas
        end
    end
    if port_est == 1
        subtitle = num2str([num2str(nbcomp(:).'),' N2 \Phi',...
            num2str(dcomp/m(:).'),'mm (Porta Estribos)']);
        text(bw,1.1*h,subtitle);  
    else
        subtitle = num2str([num2str(nbcomp(:).'),' N2 \Phi',...
            num2str(dcomp/m(:).'),'mm']);
        text(bw,1.1*h,subtitle);
    end
    %desenhando a armadura de pele
    freespc = h-(nlin2pel*(dtrac/c+ev)+nlincomp*(dcomp/c+evcomp)+2*(C+dest)/c+(x+dpele/2)/c);
    if Aspele > 0
        nbplPele = 2;
        Abpele = pi*((dpele)^2)/4;
        nlinPele = ceil(Aspele/Abpele);
        bPele = (bw-(2*C/c+2*dest/c+2*dpele/c));
        jump = freespc/(nlinPele-1);
        for i = 0:nlinPele-1
            for j = 0:nbplPele-1
                t = 0:0.001:2*pi;
                ax = cos(t)*dpele/(2*c)+(C+dest+dpele/2)/c+j*(bPele+dpele/c);
                ay = sin(t)*dpele/(2*c)+(C+dest)/c+nlin2pel*(dtrac/c+ev)+i*jump;
                fill(ax,ay,Color);
                dashdotx = [(C+dest+dpele/2)/c,-0.1*h];
                dashdoty = [(C+dest)/c+nlin2pel*(dtrac/c+ev)+i*jump,0.5*h];
                plot(dashdotx,dashdoty,'k','LineStyle','-.','LineWidth',0.5);
                hold on 
            end
        end
        subtitle = num2str(['2x',num2str(nlinPele(:).'),' N3 \Phi',...
            num2str(dpele/m(:).'),'mm']);
        text(-0.1*h,0.35*h,subtitle,'Rotation',90,...
            'VerticalAlignment','bottom');
    end
    beamidntf = num2str([get(handles.edit10,'String'),...
        '(',num2str(bw(:).'),'x',num2str(h(:).'),')',...
        '-',get(handles.edit11,'String')]);
    text(-b1,1.2*h,beamidntf,'FontWeight','Bold');
end

%  3.0 Apresentação dos resultados
if es == elim && (0<=ec && ec<=3.5*m)
    domain = '               2';
elseif ec == 3.5*m && (2.07*m<=es && es<=elim)
    domain = '               3';
else
    domain = 'Out of 2/3';
end
set(handles.uipushtool1,'Enable','on');
set(handles.uitoggletool1,'Enable','on');
set(handles.uitoggletool2,'Enable','on');
set(handles.uitoggletool4,'Enable','on');
set(handles.pushbutton2,'Enable','on');
wb = waitbar(0,'Processando...');
for wbi = 1:500
    waitbar(wbi/500,wb);
end
close(wb);
if isnumeric(elin)
    elin = elin/m;
end
toc;
elapsedTime = toc;
savedata = {Ac*10^4,Asmin*10^4,Asmax*10^4,As*10^4,nbtrac*Ab*10^4,...
    Ab*10^4,Aslin*10^4,nbcomp*Abcomp*10^4,Abcomp*10^4,Aspele*10^4,...
    nlinPele*2*Abpele*10^4,d/c,h-d/c,d2lin/c,x/c,KX,ec/m,es/m,...
    elin,ev,eh,domain,elapsedTime};

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global savedata
colFormat = {'bank','bank'};
rowname = {'Ac','Asmin','Asmáx','As','Asef.',...
    'AbT','As''','As''ef.','AbC','AsP','AsPef.',...
    'd','d"','d''','x',num2str([char(946),'x']),...
    num2str([char(949),'c']),num2str([char(949),'s']),...
    num2str([char(949),'''']),'av','ah','Domin.','Tempo'};
thirddata = {'cm²','cm²','cm²','cm²',...
    'cm²','cm²','cm²','cm²','cm²','cm²',...
    'cm²','cm','cm','cm','cm','adm','‰',...
    '‰','‰','cm','cm','-','s'};
columnwidth = {'auto',40};
alldata = [savedata',thirddata'];
set(handles.uitable1,'Data',alldata,'ColumnFormat',...
    colFormat,'RowName',rowname,'ColumnWidth',columnwidth);



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function menu3_Callback(hObject, eventdata, handles)
% hObject    handle to menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function submenu31_Callback(hObject, eventdata, handles)
% hObject    handle to submenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen leia-me.pdf

% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function menu4_Callback(hObject, eventdata, handles)
% hObject    handle to menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function sub41_Callback(hObject, eventdata, handles)
% hObject    handle to sub41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global definput
global answer
global cont
prompt = {'Diâmetro do porta estribos(mm):'...
    ,'Diâmetro das armaduras de compressão(mm): (DEFAULT:\PhiAs \rightarrow \PhiAs'' )',...
    'Diâmetro da armadura de pele(mm):',...
    'Continuar cálculo sem armadura concentrada(não recomendado)?  Use: 1 = TRUE e 0 = FALSE'};
dlgtitle = 'REDEFINIÇÃO DE ARMADURAS PADRÃO';
dims = [1 80];
opts.Interpreter = 'tex';
localdefinput = {'8.0','DEFAULT' ,'6.3','0'};
if cont == 0
    definput = localdefinput;
end
answer = inputdlg(prompt,dlgtitle,dims,definput,opts);
if isempty(answer) == 0
    if ismember(answer,localdefinput')
        definput = localdefinput;
    else
        definput = answer';
    end
end
cont = cont+1;


function figure1_DeleteFcn(hObject, eventdata, handles)



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function uitable1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
