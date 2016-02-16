function varargout = kenz(varargin)
% KENZ MATLAB code for kenz.fig
%      KENZ, by itself, creates a new KENZ or raises the existing
%      singleton*.
%
%      H = KENZ returns the handle to a new KENZ or the handle to
%      the existing singleton*.
%
%      KENZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KENZ.M with the given input arguments.
%
%      KENZ('Property','Value',...) creates a new KENZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kenz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kenz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kenz

% Last Modified by GUIDE v2.5 04-Feb-2016 22:10:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kenz_OpeningFcn, ...
                   'gui_OutputFcn',  @kenz_OutputFcn, ...
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


% --- Executes just before kenz is made visible.
function kenz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kenz (see VARARGIN)

% Choose default command line output for kenz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kenz wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global f
f=0;

% --- Outputs from this function are returned to the command line.
function varargout = kenz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','7');
else
    textstr=strcat(textstr,'7');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','4');
else
    textstr=strcat(textstr,'4');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;

textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','1');
else
    textstr=strcat(textstr,'1');
    set(handles.text,'String',textstr);
end
% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr=get(handles.text,'String');

textstr1=get(handles.text1,'String');
  for i=1:(length(textstr)-1)
            if(textstr(i)=='+' || textstr(i)=='-' || textstr(i)=='*' || textstr(i)=='/')
                textstr1=eval(textstr);
                %textstr=strcat(textstr,'+');
                set(handles.text,'String',textstr1);
            end
        end
        
textstr1=get(handles.text1,'String');
if(strcmp(textstr,'0')==1)
    set(handles.text,'String','0');

else if j==1 
    %textstr1=textstr(1:end);
    textstr1(length(textstr1))='+';
    
    set(handles.text1,'String',textstr1);
   
else
      if textstr1(1)=='0'
        textstr1=textstr(1:end);
    else
    textstr1=strcat(textstr1,textstr);
      end
    set(handles.text,'String',eval(textstr1));
   textstr1=strcat(textstr1,'+');
    
    set(handles.text1,'String',textstr1);
     
end
 
end
j=1;

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr=get(handles.text,'String');

textstr1=get(handles.text1,'String');
  for i=1:(length(textstr)-1)
            if(textstr(i)=='+' || textstr(i)=='-' || textstr(i)=='*' || textstr(i)=='/')
                textstr1=eval(textstr);
                %textstr=strcat(textstr,'+');
                set(handles.text,'String',textstr1);
            end
        end
        
textstr1=get(handles.text1,'String');
if(strcmp(textstr,'0')==1)
    set(handles.text,'String','0');

else if j==1 
    %textstr1=textstr(1:end);
    textstr1(length(textstr1))='/';
    
    set(handles.text1,'String',textstr1);
   
else
      if textstr1(1)=='0'
        textstr1=textstr(1:end);
    else
    textstr1=strcat(textstr1,textstr);
      end
    set(handles.text,'String',eval(textstr1));
   textstr1=strcat(textstr1,'/');
    
    set(handles.text1,'String',textstr1);
     
end
 
end
j=1;

% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','9');
else
    textstr=strcat(textstr,'9');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','6');
else
    textstr=strcat(textstr,'6');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','3');
else
    textstr=strcat(textstr,'3');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr=get(handles.text,'String');

textstr1=get(handles.text1,'String');
  for i=1:(length(textstr)-1)
            if(textstr(i)=='+' || textstr(i)=='-' || textstr(i)=='*' || textstr(i)=='/')
                textstr1=eval(textstr);
                %textstr=strcat(textstr,'+');
                set(handles.text,'String',textstr1);
            end
        end
        
textstr1=get(handles.text1,'String');
if(strcmp(textstr,'0')==1)
    set(handles.text,'String','0');

else if j==1 
    %textstr1=textstr(1:end);
    textstr1(length(textstr1))='-';
    
    set(handles.text1,'String',textstr1);
   
else
      if textstr1(1)=='0'
        textstr1=textstr(1:end);
    else
    textstr1=strcat(textstr1,textstr);
      end
    set(handles.text,'String',eval(textstr1));
   textstr1=strcat(textstr1,'-');
    
    set(handles.text1,'String',textstr1);
     
end
 
end
j=1;

% --- Executes on button press in multiplication.
function multiplication_Callback(hObject, eventdata, handles)
% hObject    handle to multiplication (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr=get(handles.text,'String');

textstr1=get(handles.text1,'String');
  for i=1:(length(textstr)-1)
            if(textstr(i)=='+' || textstr(i)=='-' || textstr(i)=='*' || textstr(i)=='/')
                textstr1=eval(textstr);
                %textstr=strcat(textstr,'+');
                set(handles.text,'String',textstr1);
            end
        end
        
textstr1=get(handles.text1,'String');
if(strcmp(textstr,'0')==1)
    set(handles.text,'String','0');

else if j==1 
    %textstr1=textstr(1:end);
    textstr1(length(textstr1))='*';
    
    set(handles.text1,'String',textstr1);
   
else
      if textstr1(1)=='0'
        textstr1=textstr(1:end);
    else
    textstr1=strcat(textstr1,textstr);
      end
    set(handles.text,'String',eval(textstr1));
   textstr1=strcat(textstr1,'*');
    
    set(handles.text1,'String',textstr1);
     
end
 
end
j=1;

% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','8');
else
    textstr=strcat(textstr,'8');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','5');
else
    textstr=strcat(textstr,'5');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','2');
else
    textstr=strcat(textstr,'2');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end

if(strcmp(textstr,'0')==1)
    set(handles.text,'String','0');
else
    textstr=strcat(textstr,'0');
    set(handles.text,'String',textstr);
end

% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;

textstr1=get(handles.text1,'String');
textstr=get(handles.text,'String');
if j==1
    textstr=textstr1(1:end-1);
else
textstr=strcat(textstr1,textstr);
end
%if (textstr(length(textstr))=='-' || textstr(length(textstr))=='/' || textstr(length(textstr))=='+' || textstr(length(textstr))=='*')
  %  textstr=textstr(1:end-1);
%end

c=eval(textstr);
set(handles.text1,'String',' ');
set(handles.text,'String',c);

% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j;
textstr1=get(handles.text1,'String');
textstr=get(handles.text,'String');

if j==1
    set(handles.text,'String','0');
    textstr=get(handles.text,'String');
    j=0;
else
    textstr=get(handles.text,'String');
end
flag=0;

for i=1:length(textstr)
    if (textstr(i)=='.' && j==0)
       flag=1;
    end
end

if flag==0
if(strcmp(textstr,'0')==1)
    set(handles.text,'String','0.');
else
    textstr=strcat(textstr,'.');
    set(handles.text,'String',textstr);
end
end

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text,'String','0');
set(handles.text1,'String','0');
