function varargout = Gielis3d(varargin)
% The superformula is a generalization of the superellipse and was first
% proposed by Johan Gielis.
% 
% Gielis suggested that the formula can be used to describe many complex
% shapes and curves that are found in nature. Others point out that the
% same can be said about many formulas with a sufficient number of
% parameters.
% Gielis, Johan (2003), "A generic geometric transformation that unifies a
% wide range of natural and abstract shapes", American Journal of Botany 90(3): 333-338, 
% 
%           Created by Giuseppe Cardillo
%           giuseppe.cardillo-edta@poste.it
%
% To cite this file, this would be an appropriate format:
% Cardillo G. (2006). Superformula Generator 3d: a GUI interface to trace a
% 3d plot of the parametric Gielis Superformula.  
% http://www.mathworks.com/matlabcentral/fileexchange/10190

% Last Modified by GUIDE v2.5 21-Mar-2018 13:30:27

% Begin initialization code - DO NOT EDIT
warning('off','MATLAB:dispatcher:InexactMatch')
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gielis3d_OpeningFcn, ...
                   'gui_OutputFcn',  @Gielis3d_OutputFcn, ...
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

% --- Executes just before Gielis3d is made visible.
function Gielis3d_OpeningFcn(hObject, ~, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Gielis3d_OutputFcn(~, ~, handles) 
varargout{1} = handles.output;

function edit13_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,1)

function edit13_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit14_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,2)

function edit14_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit15_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,3)

function edit15_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit16_Callback(hObject, ~, ~)  %#ok<DEFNU>
checkparameter(hObject,4)

function edit16_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit17_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,5)

function edit17_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit18_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,6)

function edit18_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit25_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,1)

function edit25_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit26_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,2)

function edit26_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit27_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,3)

function edit27_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit28_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,4)

function edit28_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit29_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,5)

function edit29_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit30_Callback(hObject, ~, ~) %#ok<DEFNU>
checkparameter(hObject,6)
 
function edit30_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function checkparameter(hObject,flag)
tmp=str2double(get(hObject,'String')); %get value of the text control
p={'A' 'B' 'M' 'N1' 'N2' 'N3'};
if ismember(flag,[1 2 4])
    validation=@(x) isnumeric(x) && isreal (x) && isfinite(x) && ~isnan(x) && ~isempty(x) && (x ~= 0);
    txt=strcat(p{flag},' parameter must be a real, finite and ~=0 number');
    def='1';
else
    validation=@(x) isnumeric(x) && isreal (x) && isfinite(x) && ~isnan(x) && ~isempty(x);
    txt=strcat(p{flag},' parameter must be a real and finite number');
    def='0';
end
if ~validation(tmp) %if is not a valid number...
    errordlg(txt,'Error','modal'); %set the default value in text control
    set(hObject, 'String', def); %and in the parameter array
    uicontrol(hObject)
end
return

function radiobutton12_Callback(~, ~, handles) %#ok<DEFNU>
shading flat
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton14,'Value',0)

function radiobutton13_Callback(~, ~, handles) %#ok<DEFNU>
shading interp
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton14,'Value',0)

function radiobutton14_Callback(~, ~, handles) %#ok<DEFNU>
shading faceted
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton13,'Value',0)

function radiobutton15_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton16,'Value',0)
set(handles.uipanel6, 'Visible', 'on');
set(handles.popupmenu2, 'Enable', 'on');

function radiobutton16_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton15,'Value',0)
set(handles.uipanel6, 'Visible', 'off');
set(handles.popupmenu2, 'Enable', 'off');

function radiobutton17_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton18,'Value',0)
set(handles.radiobutton19,'Value',0)

function radiobutton18_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton17,'Value',0)
set(handles.radiobutton19,'Value',0)

function radiobutton19_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton18,'Value',0)
set(handles.radiobutton17,'Value',0)

function radiobutton23_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton24,'Value',0)
set(handles.radiobutton25,'Value',0)

function radiobutton24_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton23,'Value',0)
set(handles.radiobutton25,'Value',0)

function radiobutton25_Callback(~, ~, handles) %#ok<DEFNU>
set(handles.radiobutton23,'Value',0)
set(handles.radiobutton24,'Value',0)

function popupmenu2_Callback(~, ~, handles) %#ok<DEFNU>
clmp={'hsv';'hot';'gray';'bone';'copper';'pink';'flag';'lines';'colorcube';'vga';'jet';'prism';'cool';'autumn';'spring';'winter';'summer'};
colormap(clmp{get(handles.popupmenu2,'Value')})

function popupmenu2_CreateFcn(hObject, ~, ~) %#ok<DEFNU>
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton2_KeyPressFcn(~, eventdata, handles) %#ok<DEFNU>
if strcmp(eventdata.Key,'return')
   pushbutton2_Callback([], [], handles)
end

function pushbutton2_Callback(~, ~, handles) 
if get(handles.radiobutton12,'Value')==1
    sha=1;
elseif get(handles.radiobutton13,'Value')==1
    sha=2;
elseif get(handles.radiobutton14,'Value')==1
    sha=3;
end
if get(handles.radiobutton15,'Value')==1
    pl=1;
elseif get(handles.radiobutton16,'Value')==1
    pl=2;
end
ft=zeros(1,2);
if get(handles.radiobutton17,'Value')==1
    ft(1)=1;
elseif get(handles.radiobutton18,'Value')==1
    ft(1)=2;
elseif get(handles.radiobutton19,'Value')==1
    ft(1)=3;
end
if get(handles.radiobutton23,'Value')==1
    ft(2)=1;
elseif get(handles.radiobutton24,'Value')==1
    ft(2)=2;
elseif get(handles.radiobutton25,'Value')==1
    ft(2)=3;
end
a1=str2double(get(handles.edit13,'String'));
b1=str2double(get(handles.edit14,'String'));
m1=str2double(get(handles.edit15,'String'));
n11=str2double(get(handles.edit16,'String'));
n12=str2double(get(handles.edit17,'String'));
n13=str2double(get(handles.edit18,'String'));
theta=angolo(a1,b1,m1,n12,n13,pl);

a2=str2double(get(handles.edit25,'String'));
b2=str2double(get(handles.edit26,'String'));
m2=str2double(get(handles.edit27,'String'));
n21=str2double(get(handles.edit28,'String'));
n22=str2double(get(handles.edit29,'String'));
n23=str2double(get(handles.edit30,'String'));
phi=angolo(a2,b2,m2,n22,n23,pl);

[phi,theta] = meshgrid(phi,theta);

%calculate the radius
r1=superformula(a1,b1,m1,n11,n12,n13,theta,ft(1));
r2=superformula(a2,b2,m2,n21,n22,n23,phi,ft(2));

%convert in spherical coordinates
x=r1.*cos(theta).*r2.*cos(phi);
y=r1.*sin(theta).*r2.*cos(phi);
z=r2.*sin(phi);

switch pl
    case 1
        surf(x,y,z);
        shd={'flat';'interp';'faceted'};
        shading(shd{sha})
    case 2
        plot3(x,y,z)    
end
axis('square'); xlabel('x'); ylabel('y'); zlabel('z'); title('Use the mouse to rotate the object')
rotate3d on

function x=angolo(a,b,m,n2,n3,pl)
[n,d]=rat(m); %rational form of m
%select the upper bound of angle
if mod(n,2)==0 || (a==b && n2==n3)
    u=2*d;
else
    u=4*d;
end
%select the number of points
switch pl
    case 1
        n=80;
    case 2
        n=300;
end
x=linspace(0,u*pi,n);

function r=superformula(a,b,m,n1,n2,n3,ang,sf)
switch sf
    case 1
        ftheta=ones(size(ang));
    case 2
        ftheta=cos(2.5.*ang);
    case 3
        ftheta=exp(0.1.*ang);
end
r=ftheta.*(abs(cos(m.*ang./4)./a).^n2+abs(sin(m.*ang./4)./b).^n3).^(-1/n1);    