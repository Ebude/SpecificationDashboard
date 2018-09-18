function varargout = f1(varargin)
% F1 MATLAB code for f1.fig
%      F1, by itself, creates a new F1 or raises the existing
%      singleton*.
%
%      H = F1 returns the handle to a new F1 or the handle to
%      the existing singleton*.
%
%      F1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in F1.M with the given input arguments.
%
%      F1('Property','Value',...) creates a new F1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before f1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to f1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help f1

% Last Modified by GUIDE v2.5 05-Aug-2015 14:24:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @f1_OpeningFcn, ...
                   'gui_OutputFcn',  @f1_OutputFcn, ...
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


% --- Executes just before f1 is made visible.
function f1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to f1 (see VARARGIN)

% Choose default command line output for f1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes f1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = f1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;

% handles    structure with handles and user data (see GUIDATA)


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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
 contents = get(handles.popupmenu2,'String'); 
 popupmenu2value = contents{get(handles.popupmenu2,'Value')};
 switch popupmenu2value
  case 'Merit S(ACORO KA7)'
      close(gcf);
      MeritS;
      closeMeritS;
  case 'Massicot Polar 115'
      close(gcf);
      Polar115;
      closePolar115;
 case 'Massicot Polar 137'
      close(gcf);
      Polar137;
      closePolar137;
 case 'Massicot Polar Mohr'
      close(gcf);
      PolarMohr;
      closePolarMohr;
case 'Plieuse MBO'
      close(gcf);
      PlieuseMBO;
      closePlieuseMBO;
case 'Acoro'
      close(gcf);
      Acoro;
      closeAcoro;
case 'Assembleuse(ACORO KA7)'
      close(gcf);
      Assem;
      closeAssem;
case 'Compteur Uchinda'
      close(gcf);
      CompteurU;
      closeCompteurU;
case 'Tapis(ACORO KA7)'
      close(gcf);
      Tapis;
      closeTapis;
case 'Massicot Perfecta'
      close(gcf);
      Perfecta;
      closePerfecta;
case 'Encarteuse(ENCARTEUR PIQUESE)'
      close(gcf);
      encarteuse;
      closeencarteuse;
case 'Piquese(ENCARTEUR PIQUESE)'
      close(gcf);
      piquese;
      closepiquese;

     
 end


% handles    structure with handles and user data (see GUIDATA)
