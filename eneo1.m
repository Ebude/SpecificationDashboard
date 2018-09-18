function varargout = eneo1(varargin)
% ENEO1 MATLAB code for eneo1.fig
%      ENEO1, by itself, creates a new ENEO1 or raises the existing
%      singleton*.
%
%      H = ENEO1 returns the handle to a new ENEO1 or the handle to
%      the existing singleton*.
%
%      ENEO1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENEO1.M with the given input arguments.
%
%      ENEO1('Property','Value',...) creates a new ENEO1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before eneo1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to eneo1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help eneo1

% Last Modified by GUIDE v2.5 05-Aug-2015 15:01:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @eneo1_OpeningFcn, ...
                   'gui_OutputFcn',  @eneo1_OutputFcn, ...
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


% --- Executes just before eneo1 is made visible.
function eneo1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to eneo1 (see VARARGIN)

% Choose default command line output for eneo1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes eneo1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = eneo1_OutputFcn(hObject, eventdata, handles) 
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
transfo2;
closetransfo2;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
transfo1;
closetransfo1;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;
% handles    structure with handles and user data (see GUIDATA)
