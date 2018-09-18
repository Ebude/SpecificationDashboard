function varargout = ScreenCTP2(varargin)
% SCREENCTP2 MATLAB code for ScreenCTP2.fig
%      SCREENCTP2, by itself, creates a new SCREENCTP2 or raises the existing
%      singleton*.
%
%      H = SCREENCTP2 returns the handle to a new SCREENCTP2 or the handle to
%      the existing singleton*.
%
%      SCREENCTP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCREENCTP2.M with the given input arguments.
%
%      SCREENCTP2('Property','Value',...) creates a new SCREENCTP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ScreenCTP2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ScreenCTP2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ScreenCTP2

% Last Modified by GUIDE v2.5 12-Aug-2015 13:13:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ScreenCTP2_OpeningFcn, ...
                   'gui_OutputFcn',  @ScreenCTP2_OutputFcn, ...
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


% --- Executes just before ScreenCTP2 is made visible.
function ScreenCTP2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ScreenCTP2 (see VARARGIN)

% Choose default command line output for ScreenCTP2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ScreenCTP2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ScreenCTP2_OutputFcn(hObject, eventdata, handles) 
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
p1;
closep1;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;
% handles    structure with handles and user data (see GUIDATA)
