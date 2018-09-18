function varargout = piquese(varargin)
% PIQUESE MATLAB code for piquese.fig
%      PIQUESE, by itself, creates a new PIQUESE or raises the existing
%      singleton*.
%
%      H = PIQUESE returns the handle to a new PIQUESE or the handle to
%      the existing singleton*.
%
%      PIQUESE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIQUESE.M with the given input arguments.
%
%      PIQUESE('Property','Value',...) creates a new PIQUESE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piquese_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piquese_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piquese

% Last Modified by GUIDE v2.5 11-Aug-2015 11:55:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piquese_OpeningFcn, ...
                   'gui_OutputFcn',  @piquese_OutputFcn, ...
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


% --- Executes just before piquese is made visible.
function piquese_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piquese (see VARARGIN)

% Choose default command line output for piquese
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piquese wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piquese_OutputFcn(hObject, eventdata, handles) 
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
