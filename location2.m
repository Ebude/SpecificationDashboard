function varargout = location2(varargin)
% LOCATION2 MATLAB code for location2.fig
%      LOCATION2, by itself, creates a new LOCATION2 or raises the existing
%      singleton*.
%
%      H = LOCATION2 returns the handle to a new LOCATION2 or the handle to
%      the existing singleton*.
%
%      LOCATION2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOCATION2.M with the given input arguments.
%
%      LOCATION2('Property','Value',...) creates a new LOCATION2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before location2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to location2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help location2

% Last Modified by GUIDE v2.5 03-Aug-2015 15:01:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @location2_OpeningFcn, ...
                   'gui_OutputFcn',  @location2_OutputFcn, ...
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


% --- Executes just before location2 is made visible.
function location2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to location2 (see VARARGIN)

% Choose default command line output for location2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes location2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = location2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% Load background SOPECAM logo image and display it
[back map]=imread('Capture2.png'); 
image(back)
set(gca,'visible','off')
colormap(map)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
location1;
closelocation1;
% handles    structure with handles and user data (see GUIDATA)
