function varargout = welcomepage(varargin)
% WELCOMEPAGE MATLAB code for welcomepage.fig
%      WELCOMEPAGE, by itself, creates a new WELCOMEPAGE or raises the existing
%      singleton*.
%
%      H = WELCOMEPAGE returns the handle to a new WELCOMEPAGE or the handle to
%      the existing singleton*.
%
%      WELCOMEPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WELCOMEPAGE.M with the given input arguments.
%
%      WELCOMEPAGE('Property','Value',...) creates a new WELCOMEPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before welcomepage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to welcomepage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help welcomepage

% Last Modified by GUIDE v2.5 22-Jul-2015 00:33:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @welcomepage_OpeningFcn, ...
                   'gui_OutputFcn',  @welcomepage_OutputFcn, ...
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


% --- Executes just before welcomepage is made visible.
function welcomepage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to welcomepage (see VARARGIN)

% Choose default command line output for welcomepage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes welcomepage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = welcomepage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
hback = axes('position',[0 0.7 0.1 0.2]);
uistack(hback,'top');
% Load background SOPECAM logo image and display it
[back map]=imread('logo.png'); 
image(back)
set(gca,'visible','off')
colormap(map)
% insert pic of the name
hback = axes('position',[0.1 0.7 0.7 0.15]);
uistack(hback,'top');
% Load background image and display it
[back map]=imread('name.png'); 
image(back)
set(gca,'visible','off')
colormap(map)
% insert pic of my name
hback = axes('position',[0 0.1 0.3 0.1]);
uistack(hback,'top');
% Load background image and display it
[back map]=imread('myname.png'); 
image(back)
set(gca,'visible','off')
colormap(map)
% insert pic 
hback = axes('position',[0.1 0.2 0.1 0.1]);
uistack(hback,'top');
% Load background image and display it
[back map]=imread('presented.png'); 
image(back)
set(gca,'visible','off')
colormap(map)
% insert pic of ENSP logo
hback = axes('position',[0.3 0.1 0.15 0.15]);
uistack(hback,'top');
% Load background image and display it
[back map]=imread('slogo.png'); 
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
