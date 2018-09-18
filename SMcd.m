function varargout = SMcd(varargin)
% SMCD MATLAB code for SMcd.fig
%      SMCD, by itself, creates a new SMCD or raises the existing
%      singleton*.
%
%      H = SMCD returns the handle to a new SMCD or the handle to
%      the existing singleton*.
%
%      SMCD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMCD.M with the given input arguments.
%
%      SMCD('Property','Value',...) creates a new SMCD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SMcd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SMcd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SMcd

% Last Modified by GUIDE v2.5 12-Aug-2015 12:53:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SMcd_OpeningFcn, ...
                   'gui_OutputFcn',  @SMcd_OutputFcn, ...
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


% --- Executes just before SMcd is made visible.
function SMcd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SMcd (see VARARGIN)

% Choose default command line output for SMcd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SMcd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SMcd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
hback = axes('position',[0 0.15 0.3 0.6]);
uistack(hback,'top');
% Load  image and display it
[back map]=imread('SM5P.png'); 
image(back)
set(gca,'visible','off')
colormap(map)


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
