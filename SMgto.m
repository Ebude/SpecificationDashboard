function varargout = SMgto(varargin)
% SMGTO MATLAB code for SMgto.fig
%      SMGTO, by itself, creates a new SMGTO or raises the existing
%      singleton*.
%
%      H = SMGTO returns the handle to a new SMGTO or the handle to
%      the existing singleton*.
%
%      SMGTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMGTO.M with the given input arguments.
%
%      SMGTO('Property','Value',...) creates a new SMGTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SMgto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SMgto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SMgto

% Last Modified by GUIDE v2.5 12-Aug-2015 12:53:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SMgto_OpeningFcn, ...
                   'gui_OutputFcn',  @SMgto_OutputFcn, ...
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


% --- Executes just before SMgto is made visible.
function SMgto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SMgto (see VARARGIN)

% Choose default command line output for SMgto
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SMgto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SMgto_OutputFcn(hObject, eventdata, handles) 
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
i1;
closei1;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;
% handles    structure with handles and user data (see GUIDATA)
