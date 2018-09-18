function varargout = elecg3(varargin)
% ELECG3 MATLAB code for elecg3.fig
%      ELECG3, by itself, creates a new ELECG3 or raises the existing
%      singleton*.
%
%      H = ELECG3 returns the handle to a new ELECG3 or the handle to
%      the existing singleton*.
%
%      ELECG3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ELECG3.M with the given input arguments.
%
%      ELECG3('Property','Value',...) creates a new ELECG3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before elecg3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to elecg3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help elecg3

% Last Modified by GUIDE v2.5 05-Aug-2015 14:01:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @elecg3_OpeningFcn, ...
                   'gui_OutputFcn',  @elecg3_OutputFcn, ...
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


% --- Executes just before elecg3 is made visible.
function elecg3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to elecg3 (see VARARGIN)

% Choose default command line output for elecg3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes elecg3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = elecg3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
elecg1;
closeelecg1;
% handles    structure with handles and user data (see GUIDATA)
