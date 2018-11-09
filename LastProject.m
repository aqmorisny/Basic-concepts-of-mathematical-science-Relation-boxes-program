function varargout = LastProject(varargin)
% LASTPROJECT M-file for LastProject.fig
%      LASTPROJECT, by itself, creates a new LASTPROJECT or raises the existing
%      singleton*.
%
%      H = LASTPROJECT returns the handle to a new LASTPROJECT or the handle to
%      the existing singleton*.
%
%      LASTPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LASTPROJECT.M with the given input arguments.
%
%      LASTPROJECT('Property','Value',...) creates a new LASTPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LastProject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LastProject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LastProject

% Last Modified by GUIDE v2.5 06-Jun-2013 14:07:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LastProject_OpeningFcn, ...
                   'gui_OutputFcn',  @LastProject_OutputFcn, ...
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


% --- Executes just before LastProject is made visible.
function LastProject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LastProject (see VARARGIN)

% Choose default command line output for LastProject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.the_matrix,'Data',zeros(10,10)); 

% UIWAIT makes LastProject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LastProject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start_process.
function start_process_Callback(hObject, eventdata, handles)
% hObject    handle to start_process (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.the_matrix,'Data');
set(handles.ref_or_not,'String', reflective(A))
set(handles.sym_or_not,'String', symmetric(A))
set(handles.antisym_or_not,'String', antisymmetric(A))
set(handles.tra_or_not,'String', transitive(A))
set(handles.equ_or_not,'String', equivalence(A))
allelerelato(A);
set(handles.par_or_not,'String', partotorder(A))



function first_element_Callback(hObject, eventdata, handles)
% hObject    handle to first_element (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of first_element as text
%        str2double(get(hObject,'String')) returns contents of first_element as a double


% --- Executes during object creation, after setting all properties.
function first_element_CreateFcn(hObject, eventdata, handles)
% hObject    handle to first_element (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function second_element_Callback(hObject, eventdata, handles)
% hObject    handle to second_element (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of second_element as text
%        str2double(get(hObject,'String')) returns contents of second_element as a double


% --- Executes during object creation, after setting all properties.
function second_element_CreateFcn(hObject, eventdata, handles)
% hObject    handle to second_element (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in is_successor.
function is_successor_Callback(hObject, eventdata, handles)
% hObject    handle to is_successor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.the_matrix,'Data');
n = str2double(get(handles.first_element,'String'));
m = str2double(get(handles.second_element,'String'));
set(handles.successor_or_not,'String', Predecessor(A,n,m))



function sub_set_Callback(hObject, eventdata, handles)
% hObject    handle to sub_set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sub_set as text
%        str2double(get(hObject,'String')) returns contents of sub_set as a double


% --- Executes during object creation, after setting all properties.
function sub_set_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sub_set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in set_size.
function set_size_Callback(hObject, eventdata, handles)
% hObject    handle to set_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = str2double(get(handles.size_of_matrix,'String'));
set(handles.the_matrix,'Data',zeros(n,n));
set(handles.the_matrix,'ColumnEditable',true);
set(handles.the_matrix,'ColumnWidth',{20})



function size_of_matrix_Callback(hObject, eventdata, handles)
% hObject    handle to size_of_matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size_of_matrix as text
%        str2double(get(hObject,'String')) returns contents of size_of_matrix as a double


% --- Executes during object creation, after setting all properties.
function size_of_matrix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_of_matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in find_sup_inf_upp_low.
function find_sup_inf_upp_low_Callback(hObject, eventdata, handles)
% hObject    handle to find_sup_inf_upp_low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data(see GUIDATA)
A = get(handles.the_matrix,'Data');
Q= str2num(get(handles.sub_set,'String'));
reflective(A);
antisymmetric(A);
transitive(A);
allelerelato(A);
C=partotorder(A);
if strcmp(C, 'The relation is total order.')
    set(handles.upper_bounds,'String', Uppers(A,Q));
    set(handles.sup_set,'String', Supremum(A));
    set(handles.lower_bounds,'String', Lowers(A,Q));
    set(handles.inf_set,'String', Infimum(A));
else
    set(handles.upper_bounds,'String', 'The relation is not total order!');
    set(handles.sup_set,'String', 'The relation is not total order!');
    set(handles.lower_bounds,'String', 'The relation is not total order!');
    set(handles.inf_set,'String', 'The relation is not total order!'); 
end




% --- Executes when entered data in editable cell(s) in the_matrix.
function the_matrix_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to the_matrix (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in find_4m.
function find_4m_Callback(hObject, eventdata, handles)
% hObject    handle to find_4m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.the_matrix,'Data');
reflective(A);
antisymmetric(A);
transitive(A);
allelerelato(A);
C=partotorder(A);
if strcmp(C, 'The relation is partial order.')
    set(handles.maximum_box,'String', Maximum(A))
    set(handles.minimum_box,'String', Minimum(A))
    set(handles.maximal_box,'String', Maximal(A))
    set(handles.minimal_box,'String', Minimal(A))
elseif strcmp(C, 'The relation is total order.')
    set(handles.maximum_box,'String', Maximum(A))
    set(handles.minimum_box,'String', Minimum(A))
    set(handles.maximal_box,'String', Maximal(A))
    set(handles.minimal_box,'String', Minimal(A))
else
    set(handles.maximum_box,'String', 'The relation is not partial or total order!')
    set(handles.minimum_box,'String', 'The relation is not partial or total order!')
    set(handles.maximal_box,'String', 'The relation is not partial or total order!')
    set(handles.minimal_box,'String', 'The relation is not partial or total order!')
end


%________________________________________________________________________
%the main code:
global refindicator  symindicator  traindicator antisymindicator allelerelatoindicator;

function [answer] = reflective(A)
    global refindicator
    refindicator=1;
    roc=zeros(1);
    n = length(A);
    for i=1:n
        if A(i,i) == 0
            refindicator = 0;
            roc(1)=i;
            break
        end
    end
    if refindicator==1;
        answer='The relation is reflective.';
    else
        answer=['The relation is not reflective. (' num2str(roc(1)) ',' num2str(roc(1)) ') is zero.'];
    end
    
function [answer] = symmetric(A)
    global symindicator;
    symindicator=1;
    soc=zeros(1);
    n = length(A);
    symindicator=1;
    for i=1:n
        for j=i+1:n
            if i~=j
                if (A(i,j) == 0)&&(A(j,i)==1)
                    symindicator = 0;
                    soc(1)=j;
                    soc(2)=i;
                    break
                elseif (A(i,j) == 1)&&(A(j,i)==0)
                    symindicator = 0;
                    soc(1)=i;
                    soc(2)=j;
                    break
                end
            end
        end
    end
    if symindicator==1
        answer='The relation is symmetric.';
    else
        answer=['The relation is not symmetric. (' num2str(soc(1)) ',' num2str(soc(2)) ') is one but (' num2str(soc(2)) ',' num2str(soc(1)) ') is zero.'];
    end
    
function [answer] = antisymmetric(A)
    global antisymindicator
    antisymindicator=1;
    n = length(A);
    antisoc=zeros(1);
    antisymindicator = 1;
    for i=1:n
        for j=i+1:n
            if i~=j
                if (A(i,j)==1)&&(A(j,i)==1)
                    antisoc(1)=i;
                    antisoc(2)=j;
                antisymindicator = 0;
                break
                end
            end
        end
    end
    if antisymindicator==1;
        answer='The relation is antisymmetric.';
    else
        answer=['The relation is not antisymmetric. (' num2str(antisoc(1)) ',' num2str(antisoc(2)) ') and (' num2str(antisoc(2)) ',' num2str(antisoc(1)) ') are one.' ];
    end
    
function [answer] = transitive(A)
    global traindicator;
    traindicator=1;
    toc=zeros(1);
    n = length(A);
    traindicator=1;
    for i=1:n
        for j=1:n
            if i~=j
                if A(i,j) == 1
                    for k=1:n
                        if A(j,k)==1
                            if A(i,k)~=1
                                toc(1)=i;
                                toc(2)=j;
                                toc(3)=k;
                                traindicator = 0;
                                break    
                            end
                        end    
                       
                    end
                end
            end
        end
    end
    if traindicator==1
        answer='The relation is transitive.';
    else
        answer=['The relation is not transitive. (' num2str(toc(1)) ',' num2str(toc(2)) ') and (' num2str(toc(2)) ',' num2str(toc(3)) ') are one but (' num2str(toc(1)) ',' num2str(toc(3)) ') is zero.'];
    end
%note: allelerelato = ALL ELEment RELAtion TOgther
function [answer] = allelerelato(A)
    global allelerelatoindicator;
    allelerelatoindicator=1;
    n = length(A);
    for i=1:n
       for j=1:n
           if A(i,j)==0&&A(j,i)==0
               allelerelatoindicator=0;
               break
           end
       end
       if allelerelatoindicator==0
           break
       end
    end
    
function [answer] = equivalence(A)
    global refindicator symindicator traindicator;
    if (refindicator == 1)&&(symindicator == 1)&&(traindicator == 1)
        answer='The relation is equivalence.';
    else
        answer='The relation is not equivalence.';
    end
    
function [answer] = partotorder(A)
    global refindicator antisymindicator traindicator allelerelatoindicator;
    if (refindicator == 1)&&(antisymindicator == 1)&&(traindicator == 1)&&(allelerelatoindicator==0)
        answer='The relation is partial order.';
    elseif (refindicator == 1)&&(antisymindicator == 1)&&(traindicator == 1)&&(allelerelatoindicator==1)
        answer='The relation is total order.';
    else
        answer='The relation is not partial order.';
    end

%_______________________________________________________________________
%MMMM code:
function [Ans] = Maximum(A)
indicator=-1;
LengthA=length(A);
for i=1:LengthA
    indicator=i;
    for j=1:LengthA
        if A(j,i)==0
            indicator=-1;
            break
        end
    end
    if indicator==i
        break
    end
end
if indicator==-1
    Ans='The realtion has no maximum.';
else
    Ans=['Maximum is element( ' num2str(i) ' )'];
end

function [Ans] = Minimum(A)
indicator=-1;
LengthA=length(A);
for i=1:LengthA
    indicator=i;
    for j=1:LengthA
        if A(i,j)==0
           indicator=-1;
           break
        end
    end
    if indicator==i
    break
    end
end
if indicator==-1
    Ans='The realtion has no minimum.';
else
    Ans=['Minimum is element( ' num2str(i) ' )'];
end

function [Ans] = Maximal(A)
LengthA=length(A);
indicator=zeros(1,1);
Pointer=1;
for i=1:LengthA
    indi=0;
    for j=1:LengthA
        if (A(i,j)==1)&&(i~=j)
           indi=-1;
           break
        end
    end
    if indi~=-1
        indicator(1,Pointer)=i;
        Pointer=Pointer+1;
    end
end
if indicator==[0]
    Ans='The realtion has no maximal.';
else
    LengthIndicator=length(indicator);
    Ans=[' '];
    for i=1:LengthIndicator
        Ans=[Ans num2str(indicator(i)) ','];
    end
    Ans=['Maximal(s) is:' Ans];
end

function [Ans] = Minimal(A)
LengthA=length(A);
indicator=zeros(1,1);
Pointer=1;
for i=1:LengthA
    indi=0;
    for j=1:LengthA
        if (A(j,i)==1)&&(i~=j)
           indi=-1;
           break
        end
    end
    if indi~=-1
        indicator(1,Pointer)=i;
        Pointer=Pointer+1;
    end
end
if indicator==[0]
    Ans='The realtion has no minimal.';
else
    LengthIndicator=length(indicator);
    Ans=[' '];
    for i=1:LengthIndicator
        Ans=[Ans num2str(indicator(i)) ','];
    end
    Ans=['Minimal(s) is:' Ans];
end

%________________________________________________________________________
%predecessor code:
function [Ans] = Predecessor(A, n, m)
LengthA=length(A);
if (m>LengthA)|(n>LengthA)
    indicator=-1;
elseif n==m
        indicator=-2;
else
indicator=1;
if A(n,m)==1
    for i=1:LengthA
        if A(n,i)==1
            if (A(i,m)==1)&&(i~=n)&&(i~=m)
                indicator=0;
            end
        end
    end
elseif A(n,m)==0
    indicator=0;
end
end
if indicator==-1
    Ans='Index out of bounds!';
elseif indicator==-2
    Ans=['No!  element(' num2str(n) ') is not predecessor of element(' num2str(m) ').'];
elseif indicator==0
    Ans=['No!  element(' num2str(n) ') is not predecessor of element(' num2str(m) ').'];
else
    Ans=['Yes!  ' num2str(n) '-<' num2str(m) ';  element(' num2str(n) ') is predecessor of element(' num2str(m) ').'];
end


%________________________________________________________________________
%UppersLowersSupInf code:
global UList LList;

function[Ans] = Uppers(A,Q)
global UList;
UList=zeros(1);
LenQ=length(Q);
LenA=length(A);
Z=1;
for i=1:LenA
    indicator=i;
    for j=1:LenQ
        X=Q(j);
        if A(X,i)==0
            indicator=0;
        end
    end
    if indicator~=0
    UList(Z)=indicator;
    Z=Z+1;
    end
end
if UList==[0]
    Ans='The sub-set has no upper bound.'
else
    LenUList=length(UList);
    Ans=[' '];
    for i=1:LenUList
        Ans=[Ans num2str(UList(i)) ','];
    end
    Ans=['Upper bound is:' Ans];
end

function [Ans] = Supremum(A)
global UList;
LenUList=length(UList);
for i=1:LenUList
    Sup=UList(i);
    for j=1:LenUList
        if A(UList(i),UList(j))==0
           Sup=-1;
           break
        end
    end
    if Sup==UList(i)
        break
    end
end
if Sup==-1
    Ans='The sub-set has no supremum.';
else
    Ans=['Supremum is: ' num2str(Sup) '.'];
end

function[Ans] = Lowers(A,Q)
global LList;
LList=zeros(1);
LenQ=length(Q);
LenA=length(A);
Z=1;
for i=1:LenA
    indicator=i;
    for j=1:LenQ
        X=Q(j);
        if A(i,X)==0
            indicator=0;
        end
    end
    if indicator~=0
    LList(Z)=indicator;
    Z=Z+1;
    end
end
if LList==[0]
    Ans='The sub-set has no lower bound.';
else
    LenLList=length(LList);
    Ans=[' '];
    for i=1:LenLList
        Ans=[Ans num2str(LList(i)) ','];
    end
    Ans=['Lower bound is:' Ans];
end

function [Ans] = Infimum(A)
global LList;
LenLList=length(LList);
for i=1:LenLList
    Inf=LList(i);
    for j=1:LenLList
        if A(LList(j),LList(i))==0
           Inf=-1;
           break
        end
    end
    if Inf==LList(i)
        break
    end
end
if Inf==-1
    Ans='The sub-set has no infimum.';
else
    Ans=['infimum is:' num2str(Inf) '.'];
end
