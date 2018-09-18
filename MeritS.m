function varargout = MeritS(varargin)
% MERITS MATLAB code for MeritS.fig
%      MERITS, by itself, creates a new MERITS or raises the existing
%      singleton*.
%
%      H = MERITS returns the handle to a new MERITS or the handle to
%      the existing singleton*.
%
%      MERITS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MERITS.M with the given input arguments.
%
%      MERITS('Property','Value',...) creates a new MERITS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MeritS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MeritS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MeritS

% Last Modified by GUIDE v2.5 22-Jul-2015 12:02:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MeritS_OpeningFcn, ...
                   'gui_OutputFcn',  @MeritS_OutputFcn, ...
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


% --- Executes just before MeritS is made visible.
function MeritS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MeritS (see VARARGIN)

% Choose default command line output for MeritS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MeritS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MeritS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
hback = axes('position',[0 0.15 0.3 0.6]);
uistack(hback,'top');
% Load  image and display it
[back map]=imread('Merit.jpg'); 
image(back)
set(gca,'visible','off')
colormap(map)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
f1;
closef1;
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcf);
page1;
closepage1;
% handles    structure with handles and user data (see GUIDATA)
