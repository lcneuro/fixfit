ա
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
3
Square
x"T
y"T"
Ttype:
2
	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02unknown8��
z
dense_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_96/kernel
s
#dense_96/kernel/Read/ReadVariableOpReadVariableOpdense_96/kernel*
_output_shapes

:*
dtype0
r
dense_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_96/bias
k
!dense_96/bias/Read/ReadVariableOpReadVariableOpdense_96/bias*
_output_shapes
:*
dtype0
z
dense_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_97/kernel
s
#dense_97/kernel/Read/ReadVariableOpReadVariableOpdense_97/kernel*
_output_shapes

:*
dtype0
r
dense_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_97/bias
k
!dense_97/bias/Read/ReadVariableOpReadVariableOpdense_97/bias*
_output_shapes
:*
dtype0
z
dense_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_98/kernel
s
#dense_98/kernel/Read/ReadVariableOpReadVariableOpdense_98/kernel*
_output_shapes

:*
dtype0
z
dense_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n* 
shared_namedense_99/kernel
s
#dense_99/kernel/Read/ReadVariableOpReadVariableOpdense_99/kernel*
_output_shapes

:n*
dtype0
r
dense_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*
shared_namedense_99/bias
k
!dense_99/bias/Read/ReadVariableOpReadVariableOpdense_99/bias*
_output_shapes
:n*
dtype0
|
dense_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*!
shared_namedense_100/kernel
u
$dense_100/kernel/Read/ReadVariableOpReadVariableOpdense_100/kernel*
_output_shapes

:nn*
dtype0
t
dense_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*
shared_namedense_100/bias
m
"dense_100/bias/Read/ReadVariableOpReadVariableOpdense_100/bias*
_output_shapes
:n*
dtype0
|
dense_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nd*!
shared_namedense_101/kernel
u
$dense_101/kernel/Read/ReadVariableOpReadVariableOpdense_101/kernel*
_output_shapes

:nd*
dtype0
t
dense_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_101/bias
m
"dense_101/bias/Read/ReadVariableOpReadVariableOpdense_101/bias*
_output_shapes
:d*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/dense_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_96/kernel/m
�
*Adam/dense_96/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_96/bias/m
y
(Adam/dense_96/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_97/kernel/m
�
*Adam/dense_97/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/m
y
(Adam/dense_97/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_98/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_98/kernel/m
�
*Adam/dense_98/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_98/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_99/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*'
shared_nameAdam/dense_99/kernel/m
�
*Adam/dense_99/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_99/kernel/m*
_output_shapes

:n*
dtype0
�
Adam/dense_99/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*%
shared_nameAdam/dense_99/bias/m
y
(Adam/dense_99/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_99/bias/m*
_output_shapes
:n*
dtype0
�
Adam/dense_100/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*(
shared_nameAdam/dense_100/kernel/m
�
+Adam/dense_100/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_100/kernel/m*
_output_shapes

:nn*
dtype0
�
Adam/dense_100/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*&
shared_nameAdam/dense_100/bias/m
{
)Adam/dense_100/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_100/bias/m*
_output_shapes
:n*
dtype0
�
Adam/dense_101/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nd*(
shared_nameAdam/dense_101/kernel/m
�
+Adam/dense_101/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_101/kernel/m*
_output_shapes

:nd*
dtype0
�
Adam/dense_101/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_101/bias/m
{
)Adam/dense_101/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_101/bias/m*
_output_shapes
:d*
dtype0
�
Adam/dense_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_96/kernel/v
�
*Adam/dense_96/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_96/bias/v
y
(Adam/dense_96/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_97/kernel/v
�
*Adam/dense_97/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/v
y
(Adam/dense_97/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_98/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_98/kernel/v
�
*Adam/dense_98/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_98/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_99/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*'
shared_nameAdam/dense_99/kernel/v
�
*Adam/dense_99/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_99/kernel/v*
_output_shapes

:n*
dtype0
�
Adam/dense_99/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*%
shared_nameAdam/dense_99/bias/v
y
(Adam/dense_99/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_99/bias/v*
_output_shapes
:n*
dtype0
�
Adam/dense_100/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*(
shared_nameAdam/dense_100/kernel/v
�
+Adam/dense_100/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_100/kernel/v*
_output_shapes

:nn*
dtype0
�
Adam/dense_100/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*&
shared_nameAdam/dense_100/bias/v
{
)Adam/dense_100/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_100/bias/v*
_output_shapes
:n*
dtype0
�
Adam/dense_101/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nd*(
shared_nameAdam/dense_101/kernel/v
�
+Adam/dense_101/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_101/kernel/v*
_output_shapes

:nd*
dtype0
�
Adam/dense_101/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_101/bias/v
{
)Adam/dense_101/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_101/bias/v*
_output_shapes
:d*
dtype0

NoOpNoOp
�<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�<
value�;B�; B�;
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
regularization_losses
	trainable_variables

	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
^

kernel
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
�
0iter

1beta_1

2beta_2
	3decay
4learning_ratemcmdmemfmgmhmi$mj%mk*ml+mmvnvovpvqvrvsvt$vu%vv*vw+vx
 
N
0
1
2
3
4
5
6
$7
%8
*9
+10
N
0
1
2
3
4
5
6
$7
%8
*9
+10
�
regularization_losses
	trainable_variables

5layers
6non_trainable_variables
7metrics
8layer_metrics
9layer_regularization_losses

	variables
 
[Y
VARIABLE_VALUEdense_96/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_96/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses

:layers
trainable_variables
;non_trainable_variables
<metrics
=layer_metrics
>layer_regularization_losses
	variables
[Y
VARIABLE_VALUEdense_97/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_97/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses

?layers
trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
Clayer_regularization_losses
	variables
[Y
VARIABLE_VALUEdense_98/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
�
regularization_losses

Dlayers
trainable_variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
Hlayer_regularization_losses
	variables
[Y
VARIABLE_VALUEdense_99/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_99/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
 regularization_losses

Ilayers
!trainable_variables
Jnon_trainable_variables
Kmetrics
Llayer_metrics
Mlayer_regularization_losses
"	variables
\Z
VARIABLE_VALUEdense_100/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_100/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
�
&regularization_losses

Nlayers
'trainable_variables
Onon_trainable_variables
Pmetrics
Qlayer_metrics
Rlayer_regularization_losses
(	variables
\Z
VARIABLE_VALUEdense_101/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_101/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
�
,regularization_losses

Slayers
-trainable_variables
Tnon_trainable_variables
Umetrics
Vlayer_metrics
Wlayer_regularization_losses
.	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
*
0
1
2
3
4
5
 

X0
Y1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ztotal
	[count
\	variables
]	keras_api
D
	^total
	_count
`
_fn_kwargs
a	variables
b	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

\	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

a	variables
~|
VARIABLE_VALUEAdam/dense_96/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_98/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_99/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_99/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_100/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_100/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_101/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_101/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_96/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_98/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_99/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_99/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_100/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_100/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_101/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_101/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_17Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_17dense_96/kerneldense_96/biasdense_97/kerneldense_97/biasdense_98/kerneldense_99/kerneldense_99/biasdense_100/kerneldense_100/biasdense_101/kerneldense_101/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1863247
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_96/kernel/Read/ReadVariableOp!dense_96/bias/Read/ReadVariableOp#dense_97/kernel/Read/ReadVariableOp!dense_97/bias/Read/ReadVariableOp#dense_98/kernel/Read/ReadVariableOp#dense_99/kernel/Read/ReadVariableOp!dense_99/bias/Read/ReadVariableOp$dense_100/kernel/Read/ReadVariableOp"dense_100/bias/Read/ReadVariableOp$dense_101/kernel/Read/ReadVariableOp"dense_101/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_96/kernel/m/Read/ReadVariableOp(Adam/dense_96/bias/m/Read/ReadVariableOp*Adam/dense_97/kernel/m/Read/ReadVariableOp(Adam/dense_97/bias/m/Read/ReadVariableOp*Adam/dense_98/kernel/m/Read/ReadVariableOp*Adam/dense_99/kernel/m/Read/ReadVariableOp(Adam/dense_99/bias/m/Read/ReadVariableOp+Adam/dense_100/kernel/m/Read/ReadVariableOp)Adam/dense_100/bias/m/Read/ReadVariableOp+Adam/dense_101/kernel/m/Read/ReadVariableOp)Adam/dense_101/bias/m/Read/ReadVariableOp*Adam/dense_96/kernel/v/Read/ReadVariableOp(Adam/dense_96/bias/v/Read/ReadVariableOp*Adam/dense_97/kernel/v/Read/ReadVariableOp(Adam/dense_97/bias/v/Read/ReadVariableOp*Adam/dense_98/kernel/v/Read/ReadVariableOp*Adam/dense_99/kernel/v/Read/ReadVariableOp(Adam/dense_99/bias/v/Read/ReadVariableOp+Adam/dense_100/kernel/v/Read/ReadVariableOp)Adam/dense_100/bias/v/Read/ReadVariableOp+Adam/dense_101/kernel/v/Read/ReadVariableOp)Adam/dense_101/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_1863839
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_96/kerneldense_96/biasdense_97/kerneldense_97/biasdense_98/kerneldense_99/kerneldense_99/biasdense_100/kerneldense_100/biasdense_101/kerneldense_101/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_96/kernel/mAdam/dense_96/bias/mAdam/dense_97/kernel/mAdam/dense_97/bias/mAdam/dense_98/kernel/mAdam/dense_99/kernel/mAdam/dense_99/bias/mAdam/dense_100/kernel/mAdam/dense_100/bias/mAdam/dense_101/kernel/mAdam/dense_101/bias/mAdam/dense_96/kernel/vAdam/dense_96/bias/vAdam/dense_97/kernel/vAdam/dense_97/bias/vAdam/dense_98/kernel/vAdam/dense_99/kernel/vAdam/dense_99/bias/vAdam/dense_100/kernel/vAdam/dense_100/bias/vAdam/dense_101/kernel/vAdam/dense_101/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_1863975��
�

�
F__inference_dense_100_layer_call_and_return_conditional_losses_1863690

inputs0
matmul_readvariableop_resource:nn-
biasadd_readvariableop_resource:n
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nn*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������n2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������n2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�	
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863509

inputs9
'dense_96_matmul_readvariableop_resource:6
(dense_96_biasadd_readvariableop_resource:9
'dense_97_matmul_readvariableop_resource:6
(dense_97_biasadd_readvariableop_resource:9
'dense_98_matmul_readvariableop_resource:9
'dense_99_matmul_readvariableop_resource:n6
(dense_99_biasadd_readvariableop_resource:n:
(dense_100_matmul_readvariableop_resource:nn7
)dense_100_biasadd_readvariableop_resource:n:
(dense_101_matmul_readvariableop_resource:nd7
)dense_101_biasadd_readvariableop_resource:d
identity

identity_1

identity_2

identity_3

identity_4�� dense_100/BiasAdd/ReadVariableOp�dense_100/MatMul/ReadVariableOp� dense_101/BiasAdd/ReadVariableOp�dense_101/MatMul/ReadVariableOp�dense_96/BiasAdd/ReadVariableOp�dense_96/MatMul/ReadVariableOp�dense_97/BiasAdd/ReadVariableOp�dense_97/MatMul/ReadVariableOp�dense_98/MatMul/ReadVariableOp�.dense_98/kernel/Regularizer/Abs/ReadVariableOp�dense_99/BiasAdd/ReadVariableOp�dense_99/MatMul/ReadVariableOp�
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_96/MatMul/ReadVariableOp�
dense_96/MatMulMatMulinputs&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_96/MatMul�
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_96/BiasAdd/ReadVariableOp�
dense_96/BiasAddBiasAdddense_96/MatMul:product:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_96/BiasAdds
dense_96/TanhTanhdense_96/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_96/Tanh�
#dense_96/ActivityRegularizer/SquareSquaredense_96/Tanh:y:0*
T0*'
_output_shapes
:���������2%
#dense_96/ActivityRegularizer/Square�
"dense_96/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_96/ActivityRegularizer/Const�
 dense_96/ActivityRegularizer/SumSum'dense_96/ActivityRegularizer/Square:y:0+dense_96/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_96/ActivityRegularizer/Sum�
"dense_96/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_96/ActivityRegularizer/mul/x�
 dense_96/ActivityRegularizer/mulMul+dense_96/ActivityRegularizer/mul/x:output:0)dense_96/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_96/ActivityRegularizer/mul�
"dense_96/ActivityRegularizer/ShapeShapedense_96/Tanh:y:0*
T0*
_output_shapes
:2$
"dense_96/ActivityRegularizer/Shape�
0dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_96/ActivityRegularizer/strided_slice/stack�
2dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_1�
2dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_2�
*dense_96/ActivityRegularizer/strided_sliceStridedSlice+dense_96/ActivityRegularizer/Shape:output:09dense_96/ActivityRegularizer/strided_slice/stack:output:0;dense_96/ActivityRegularizer/strided_slice/stack_1:output:0;dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_96/ActivityRegularizer/strided_slice�
!dense_96/ActivityRegularizer/CastCast3dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_96/ActivityRegularizer/Cast�
$dense_96/ActivityRegularizer/truedivRealDiv$dense_96/ActivityRegularizer/mul:z:0%dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_96/ActivityRegularizer/truediv�
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_97/MatMul/ReadVariableOp�
dense_97/MatMulMatMuldense_96/Tanh:y:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_97/MatMul�
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp�
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_97/BiasAdds
dense_97/TanhTanhdense_97/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_97/Tanh�
#dense_97/ActivityRegularizer/SquareSquaredense_97/Tanh:y:0*
T0*'
_output_shapes
:���������2%
#dense_97/ActivityRegularizer/Square�
"dense_97/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_97/ActivityRegularizer/Const�
 dense_97/ActivityRegularizer/SumSum'dense_97/ActivityRegularizer/Square:y:0+dense_97/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_97/ActivityRegularizer/Sum�
"dense_97/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_97/ActivityRegularizer/mul/x�
 dense_97/ActivityRegularizer/mulMul+dense_97/ActivityRegularizer/mul/x:output:0)dense_97/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_97/ActivityRegularizer/mul�
"dense_97/ActivityRegularizer/ShapeShapedense_97/Tanh:y:0*
T0*
_output_shapes
:2$
"dense_97/ActivityRegularizer/Shape�
0dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_97/ActivityRegularizer/strided_slice/stack�
2dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_1�
2dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_2�
*dense_97/ActivityRegularizer/strided_sliceStridedSlice+dense_97/ActivityRegularizer/Shape:output:09dense_97/ActivityRegularizer/strided_slice/stack:output:0;dense_97/ActivityRegularizer/strided_slice/stack_1:output:0;dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_97/ActivityRegularizer/strided_slice�
!dense_97/ActivityRegularizer/CastCast3dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_97/ActivityRegularizer/Cast�
$dense_97/ActivityRegularizer/truedivRealDiv$dense_97/ActivityRegularizer/mul:z:0%dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_97/ActivityRegularizer/truediv�
dense_98/MatMul/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_98/MatMul/ReadVariableOp�
dense_98/MatMulMatMuldense_97/Tanh:y:0&dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_98/MatMuls
dense_98/TanhTanhdense_98/MatMul:product:0*
T0*'
_output_shapes
:���������2
dense_98/Tanh�
dense_99/MatMul/ReadVariableOpReadVariableOp'dense_99_matmul_readvariableop_resource*
_output_shapes

:n*
dtype02 
dense_99/MatMul/ReadVariableOp�
dense_99/MatMulMatMuldense_98/Tanh:y:0&dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_99/MatMul�
dense_99/BiasAdd/ReadVariableOpReadVariableOp(dense_99_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype02!
dense_99/BiasAdd/ReadVariableOp�
dense_99/BiasAddBiasAdddense_99/MatMul:product:0'dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_99/BiasAdds
dense_99/TanhTanhdense_99/BiasAdd:output:0*
T0*'
_output_shapes
:���������n2
dense_99/Tanh�
#dense_99/ActivityRegularizer/SquareSquaredense_99/Tanh:y:0*
T0*'
_output_shapes
:���������n2%
#dense_99/ActivityRegularizer/Square�
"dense_99/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_99/ActivityRegularizer/Const�
 dense_99/ActivityRegularizer/SumSum'dense_99/ActivityRegularizer/Square:y:0+dense_99/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_99/ActivityRegularizer/Sum�
"dense_99/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_99/ActivityRegularizer/mul/x�
 dense_99/ActivityRegularizer/mulMul+dense_99/ActivityRegularizer/mul/x:output:0)dense_99/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_99/ActivityRegularizer/mul�
"dense_99/ActivityRegularizer/ShapeShapedense_99/Tanh:y:0*
T0*
_output_shapes
:2$
"dense_99/ActivityRegularizer/Shape�
0dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_99/ActivityRegularizer/strided_slice/stack�
2dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_1�
2dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_2�
*dense_99/ActivityRegularizer/strided_sliceStridedSlice+dense_99/ActivityRegularizer/Shape:output:09dense_99/ActivityRegularizer/strided_slice/stack:output:0;dense_99/ActivityRegularizer/strided_slice/stack_1:output:0;dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_99/ActivityRegularizer/strided_slice�
!dense_99/ActivityRegularizer/CastCast3dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_99/ActivityRegularizer/Cast�
$dense_99/ActivityRegularizer/truedivRealDiv$dense_99/ActivityRegularizer/mul:z:0%dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_99/ActivityRegularizer/truediv�
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype02!
dense_100/MatMul/ReadVariableOp�
dense_100/MatMulMatMuldense_99/Tanh:y:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_100/MatMul�
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype02"
 dense_100/BiasAdd/ReadVariableOp�
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_100/BiasAddv
dense_100/TanhTanhdense_100/BiasAdd:output:0*
T0*'
_output_shapes
:���������n2
dense_100/Tanh�
$dense_100/ActivityRegularizer/SquareSquaredense_100/Tanh:y:0*
T0*'
_output_shapes
:���������n2&
$dense_100/ActivityRegularizer/Square�
#dense_100/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_100/ActivityRegularizer/Const�
!dense_100/ActivityRegularizer/SumSum(dense_100/ActivityRegularizer/Square:y:0,dense_100/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2#
!dense_100/ActivityRegularizer/Sum�
#dense_100/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#dense_100/ActivityRegularizer/mul/x�
!dense_100/ActivityRegularizer/mulMul,dense_100/ActivityRegularizer/mul/x:output:0*dense_100/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!dense_100/ActivityRegularizer/mul�
#dense_100/ActivityRegularizer/ShapeShapedense_100/Tanh:y:0*
T0*
_output_shapes
:2%
#dense_100/ActivityRegularizer/Shape�
1dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_100/ActivityRegularizer/strided_slice/stack�
3dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_1�
3dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_2�
+dense_100/ActivityRegularizer/strided_sliceStridedSlice,dense_100/ActivityRegularizer/Shape:output:0:dense_100/ActivityRegularizer/strided_slice/stack:output:0<dense_100/ActivityRegularizer/strided_slice/stack_1:output:0<dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_100/ActivityRegularizer/strided_slice�
"dense_100/ActivityRegularizer/CastCast4dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"dense_100/ActivityRegularizer/Cast�
%dense_100/ActivityRegularizer/truedivRealDiv%dense_100/ActivityRegularizer/mul:z:0&dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%dense_100/ActivityRegularizer/truediv�
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

:nd*
dtype02!
dense_101/MatMul/ReadVariableOp�
dense_101/MatMulMatMuldense_100/Tanh:y:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_101/MatMul�
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_101/BiasAdd/ReadVariableOp�
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_101/BiasAdd�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mulu
IdentityIdentitydense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityv

Identity_1Identity(dense_96/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(dense_97/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2v

Identity_3Identity(dense_99/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3w

Identity_4Identity)dense_100/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4�
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp ^dense_96/BiasAdd/ReadVariableOp^dense_96/MatMul/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp^dense_98/MatMul/ReadVariableOp/^dense_98/kernel/Regularizer/Abs/ReadVariableOp ^dense_99/BiasAdd/ReadVariableOp^dense_99/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp2@
dense_98/MatMul/ReadVariableOpdense_98/MatMul/ReadVariableOp2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp2B
dense_99/BiasAdd/ReadVariableOpdense_99/BiasAdd/ReadVariableOp2@
dense_99/MatMul/ReadVariableOpdense_99/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
՞
�

"__inference__wrapped_model_1862552
input_17G
5sequential_16_dense_96_matmul_readvariableop_resource:D
6sequential_16_dense_96_biasadd_readvariableop_resource:G
5sequential_16_dense_97_matmul_readvariableop_resource:D
6sequential_16_dense_97_biasadd_readvariableop_resource:G
5sequential_16_dense_98_matmul_readvariableop_resource:G
5sequential_16_dense_99_matmul_readvariableop_resource:nD
6sequential_16_dense_99_biasadd_readvariableop_resource:nH
6sequential_16_dense_100_matmul_readvariableop_resource:nnE
7sequential_16_dense_100_biasadd_readvariableop_resource:nH
6sequential_16_dense_101_matmul_readvariableop_resource:ndE
7sequential_16_dense_101_biasadd_readvariableop_resource:d
identity��.sequential_16/dense_100/BiasAdd/ReadVariableOp�-sequential_16/dense_100/MatMul/ReadVariableOp�.sequential_16/dense_101/BiasAdd/ReadVariableOp�-sequential_16/dense_101/MatMul/ReadVariableOp�-sequential_16/dense_96/BiasAdd/ReadVariableOp�,sequential_16/dense_96/MatMul/ReadVariableOp�-sequential_16/dense_97/BiasAdd/ReadVariableOp�,sequential_16/dense_97/MatMul/ReadVariableOp�,sequential_16/dense_98/MatMul/ReadVariableOp�-sequential_16/dense_99/BiasAdd/ReadVariableOp�,sequential_16/dense_99/MatMul/ReadVariableOp�
,sequential_16/dense_96/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_96_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_16/dense_96/MatMul/ReadVariableOp�
sequential_16/dense_96/MatMulMatMulinput_174sequential_16/dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_16/dense_96/MatMul�
-sequential_16/dense_96/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_96/BiasAdd/ReadVariableOp�
sequential_16/dense_96/BiasAddBiasAdd'sequential_16/dense_96/MatMul:product:05sequential_16/dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_16/dense_96/BiasAdd�
sequential_16/dense_96/TanhTanh'sequential_16/dense_96/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_16/dense_96/Tanh�
1sequential_16/dense_96/ActivityRegularizer/SquareSquaresequential_16/dense_96/Tanh:y:0*
T0*'
_output_shapes
:���������23
1sequential_16/dense_96/ActivityRegularizer/Square�
0sequential_16/dense_96/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_96/ActivityRegularizer/Const�
.sequential_16/dense_96/ActivityRegularizer/SumSum5sequential_16/dense_96/ActivityRegularizer/Square:y:09sequential_16/dense_96/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_96/ActivityRegularizer/Sum�
0sequential_16/dense_96/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_16/dense_96/ActivityRegularizer/mul/x�
.sequential_16/dense_96/ActivityRegularizer/mulMul9sequential_16/dense_96/ActivityRegularizer/mul/x:output:07sequential_16/dense_96/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_96/ActivityRegularizer/mul�
0sequential_16/dense_96/ActivityRegularizer/ShapeShapesequential_16/dense_96/Tanh:y:0*
T0*
_output_shapes
:22
0sequential_16/dense_96/ActivityRegularizer/Shape�
>sequential_16/dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_96/ActivityRegularizer/strided_slice/stack�
@sequential_16/dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_96/ActivityRegularizer/strided_slice/stack_1�
@sequential_16/dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_96/ActivityRegularizer/strided_slice/stack_2�
8sequential_16/dense_96/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_96/ActivityRegularizer/Shape:output:0Gsequential_16/dense_96/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_96/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_96/ActivityRegularizer/strided_slice�
/sequential_16/dense_96/ActivityRegularizer/CastCastAsequential_16/dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_96/ActivityRegularizer/Cast�
2sequential_16/dense_96/ActivityRegularizer/truedivRealDiv2sequential_16/dense_96/ActivityRegularizer/mul:z:03sequential_16/dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_96/ActivityRegularizer/truediv�
,sequential_16/dense_97/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_97_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_16/dense_97/MatMul/ReadVariableOp�
sequential_16/dense_97/MatMulMatMulsequential_16/dense_96/Tanh:y:04sequential_16/dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_16/dense_97/MatMul�
-sequential_16/dense_97/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_97/BiasAdd/ReadVariableOp�
sequential_16/dense_97/BiasAddBiasAdd'sequential_16/dense_97/MatMul:product:05sequential_16/dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_16/dense_97/BiasAdd�
sequential_16/dense_97/TanhTanh'sequential_16/dense_97/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential_16/dense_97/Tanh�
1sequential_16/dense_97/ActivityRegularizer/SquareSquaresequential_16/dense_97/Tanh:y:0*
T0*'
_output_shapes
:���������23
1sequential_16/dense_97/ActivityRegularizer/Square�
0sequential_16/dense_97/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_97/ActivityRegularizer/Const�
.sequential_16/dense_97/ActivityRegularizer/SumSum5sequential_16/dense_97/ActivityRegularizer/Square:y:09sequential_16/dense_97/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_97/ActivityRegularizer/Sum�
0sequential_16/dense_97/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_16/dense_97/ActivityRegularizer/mul/x�
.sequential_16/dense_97/ActivityRegularizer/mulMul9sequential_16/dense_97/ActivityRegularizer/mul/x:output:07sequential_16/dense_97/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_97/ActivityRegularizer/mul�
0sequential_16/dense_97/ActivityRegularizer/ShapeShapesequential_16/dense_97/Tanh:y:0*
T0*
_output_shapes
:22
0sequential_16/dense_97/ActivityRegularizer/Shape�
>sequential_16/dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_97/ActivityRegularizer/strided_slice/stack�
@sequential_16/dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_97/ActivityRegularizer/strided_slice/stack_1�
@sequential_16/dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_97/ActivityRegularizer/strided_slice/stack_2�
8sequential_16/dense_97/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_97/ActivityRegularizer/Shape:output:0Gsequential_16/dense_97/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_97/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_97/ActivityRegularizer/strided_slice�
/sequential_16/dense_97/ActivityRegularizer/CastCastAsequential_16/dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_97/ActivityRegularizer/Cast�
2sequential_16/dense_97/ActivityRegularizer/truedivRealDiv2sequential_16/dense_97/ActivityRegularizer/mul:z:03sequential_16/dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_97/ActivityRegularizer/truediv�
,sequential_16/dense_98/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_98_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_16/dense_98/MatMul/ReadVariableOp�
sequential_16/dense_98/MatMulMatMulsequential_16/dense_97/Tanh:y:04sequential_16/dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_16/dense_98/MatMul�
sequential_16/dense_98/TanhTanh'sequential_16/dense_98/MatMul:product:0*
T0*'
_output_shapes
:���������2
sequential_16/dense_98/Tanh�
,sequential_16/dense_99/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_99_matmul_readvariableop_resource*
_output_shapes

:n*
dtype02.
,sequential_16/dense_99/MatMul/ReadVariableOp�
sequential_16/dense_99/MatMulMatMulsequential_16/dense_98/Tanh:y:04sequential_16/dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
sequential_16/dense_99/MatMul�
-sequential_16/dense_99/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_99_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype02/
-sequential_16/dense_99/BiasAdd/ReadVariableOp�
sequential_16/dense_99/BiasAddBiasAdd'sequential_16/dense_99/MatMul:product:05sequential_16/dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2 
sequential_16/dense_99/BiasAdd�
sequential_16/dense_99/TanhTanh'sequential_16/dense_99/BiasAdd:output:0*
T0*'
_output_shapes
:���������n2
sequential_16/dense_99/Tanh�
1sequential_16/dense_99/ActivityRegularizer/SquareSquaresequential_16/dense_99/Tanh:y:0*
T0*'
_output_shapes
:���������n23
1sequential_16/dense_99/ActivityRegularizer/Square�
0sequential_16/dense_99/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_99/ActivityRegularizer/Const�
.sequential_16/dense_99/ActivityRegularizer/SumSum5sequential_16/dense_99/ActivityRegularizer/Square:y:09sequential_16/dense_99/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_99/ActivityRegularizer/Sum�
0sequential_16/dense_99/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_16/dense_99/ActivityRegularizer/mul/x�
.sequential_16/dense_99/ActivityRegularizer/mulMul9sequential_16/dense_99/ActivityRegularizer/mul/x:output:07sequential_16/dense_99/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_99/ActivityRegularizer/mul�
0sequential_16/dense_99/ActivityRegularizer/ShapeShapesequential_16/dense_99/Tanh:y:0*
T0*
_output_shapes
:22
0sequential_16/dense_99/ActivityRegularizer/Shape�
>sequential_16/dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_99/ActivityRegularizer/strided_slice/stack�
@sequential_16/dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_99/ActivityRegularizer/strided_slice/stack_1�
@sequential_16/dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_99/ActivityRegularizer/strided_slice/stack_2�
8sequential_16/dense_99/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_99/ActivityRegularizer/Shape:output:0Gsequential_16/dense_99/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_99/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_99/ActivityRegularizer/strided_slice�
/sequential_16/dense_99/ActivityRegularizer/CastCastAsequential_16/dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_99/ActivityRegularizer/Cast�
2sequential_16/dense_99/ActivityRegularizer/truedivRealDiv2sequential_16/dense_99/ActivityRegularizer/mul:z:03sequential_16/dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_99/ActivityRegularizer/truediv�
-sequential_16/dense_100/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_100_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype02/
-sequential_16/dense_100/MatMul/ReadVariableOp�
sequential_16/dense_100/MatMulMatMulsequential_16/dense_99/Tanh:y:05sequential_16/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2 
sequential_16/dense_100/MatMul�
.sequential_16/dense_100/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_100_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype020
.sequential_16/dense_100/BiasAdd/ReadVariableOp�
sequential_16/dense_100/BiasAddBiasAdd(sequential_16/dense_100/MatMul:product:06sequential_16/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2!
sequential_16/dense_100/BiasAdd�
sequential_16/dense_100/TanhTanh(sequential_16/dense_100/BiasAdd:output:0*
T0*'
_output_shapes
:���������n2
sequential_16/dense_100/Tanh�
2sequential_16/dense_100/ActivityRegularizer/SquareSquare sequential_16/dense_100/Tanh:y:0*
T0*'
_output_shapes
:���������n24
2sequential_16/dense_100/ActivityRegularizer/Square�
1sequential_16/dense_100/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1sequential_16/dense_100/ActivityRegularizer/Const�
/sequential_16/dense_100/ActivityRegularizer/SumSum6sequential_16/dense_100/ActivityRegularizer/Square:y:0:sequential_16/dense_100/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 21
/sequential_16/dense_100/ActivityRegularizer/Sum�
1sequential_16/dense_100/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_16/dense_100/ActivityRegularizer/mul/x�
/sequential_16/dense_100/ActivityRegularizer/mulMul:sequential_16/dense_100/ActivityRegularizer/mul/x:output:08sequential_16/dense_100/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 21
/sequential_16/dense_100/ActivityRegularizer/mul�
1sequential_16/dense_100/ActivityRegularizer/ShapeShape sequential_16/dense_100/Tanh:y:0*
T0*
_output_shapes
:23
1sequential_16/dense_100/ActivityRegularizer/Shape�
?sequential_16/dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential_16/dense_100/ActivityRegularizer/strided_slice/stack�
Asequential_16/dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_16/dense_100/ActivityRegularizer/strided_slice/stack_1�
Asequential_16/dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_16/dense_100/ActivityRegularizer/strided_slice/stack_2�
9sequential_16/dense_100/ActivityRegularizer/strided_sliceStridedSlice:sequential_16/dense_100/ActivityRegularizer/Shape:output:0Hsequential_16/dense_100/ActivityRegularizer/strided_slice/stack:output:0Jsequential_16/dense_100/ActivityRegularizer/strided_slice/stack_1:output:0Jsequential_16/dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9sequential_16/dense_100/ActivityRegularizer/strided_slice�
0sequential_16/dense_100/ActivityRegularizer/CastCastBsequential_16/dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 22
0sequential_16/dense_100/ActivityRegularizer/Cast�
3sequential_16/dense_100/ActivityRegularizer/truedivRealDiv3sequential_16/dense_100/ActivityRegularizer/mul:z:04sequential_16/dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 25
3sequential_16/dense_100/ActivityRegularizer/truediv�
-sequential_16/dense_101/MatMul/ReadVariableOpReadVariableOp6sequential_16_dense_101_matmul_readvariableop_resource*
_output_shapes

:nd*
dtype02/
-sequential_16/dense_101/MatMul/ReadVariableOp�
sequential_16/dense_101/MatMulMatMul sequential_16/dense_100/Tanh:y:05sequential_16/dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2 
sequential_16/dense_101/MatMul�
.sequential_16/dense_101/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_dense_101_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_16/dense_101/BiasAdd/ReadVariableOp�
sequential_16/dense_101/BiasAddBiasAdd(sequential_16/dense_101/MatMul:product:06sequential_16/dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2!
sequential_16/dense_101/BiasAdd�
IdentityIdentity(sequential_16/dense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identity�
NoOpNoOp/^sequential_16/dense_100/BiasAdd/ReadVariableOp.^sequential_16/dense_100/MatMul/ReadVariableOp/^sequential_16/dense_101/BiasAdd/ReadVariableOp.^sequential_16/dense_101/MatMul/ReadVariableOp.^sequential_16/dense_96/BiasAdd/ReadVariableOp-^sequential_16/dense_96/MatMul/ReadVariableOp.^sequential_16/dense_97/BiasAdd/ReadVariableOp-^sequential_16/dense_97/MatMul/ReadVariableOp-^sequential_16/dense_98/MatMul/ReadVariableOp.^sequential_16/dense_99/BiasAdd/ReadVariableOp-^sequential_16/dense_99/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2`
.sequential_16/dense_100/BiasAdd/ReadVariableOp.sequential_16/dense_100/BiasAdd/ReadVariableOp2^
-sequential_16/dense_100/MatMul/ReadVariableOp-sequential_16/dense_100/MatMul/ReadVariableOp2`
.sequential_16/dense_101/BiasAdd/ReadVariableOp.sequential_16/dense_101/BiasAdd/ReadVariableOp2^
-sequential_16/dense_101/MatMul/ReadVariableOp-sequential_16/dense_101/MatMul/ReadVariableOp2^
-sequential_16/dense_96/BiasAdd/ReadVariableOp-sequential_16/dense_96/BiasAdd/ReadVariableOp2\
,sequential_16/dense_96/MatMul/ReadVariableOp,sequential_16/dense_96/MatMul/ReadVariableOp2^
-sequential_16/dense_97/BiasAdd/ReadVariableOp-sequential_16/dense_97/BiasAdd/ReadVariableOp2\
,sequential_16/dense_97/MatMul/ReadVariableOp,sequential_16/dense_97/MatMul/ReadVariableOp2\
,sequential_16/dense_98/MatMul/ReadVariableOp,sequential_16/dense_98/MatMul/ReadVariableOp2^
-sequential_16/dense_99/BiasAdd/ReadVariableOp-sequential_16/dense_99/BiasAdd/ReadVariableOp2\
,sequential_16/dense_99/MatMul/ReadVariableOp,sequential_16/dense_99/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_17
�
I
2__inference_dense_100_activity_regularizer_1862604
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�l
�
J__inference_sequential_16_layer_call_and_return_conditional_losses_1862998

inputs"
dense_96_1862927:
dense_96_1862929:"
dense_97_1862940:
dense_97_1862942:"
dense_98_1862953:"
dense_99_1862956:n
dense_99_1862958:n#
dense_100_1862969:nn
dense_100_1862971:n#
dense_101_1862982:nd
dense_101_1862984:d
identity

identity_1

identity_2

identity_3

identity_4��!dense_100/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall� dense_96/StatefulPartitionedCall� dense_97/StatefulPartitionedCall� dense_98/StatefulPartitionedCall�.dense_98/kernel/Regularizer/Abs/ReadVariableOp� dense_99/StatefulPartitionedCall�
 dense_96/StatefulPartitionedCallStatefulPartitionedCallinputsdense_96_1862927dense_96_1862929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_18626222"
 dense_96/StatefulPartitionedCall�
,dense_96/ActivityRegularizer/PartitionedCallPartitionedCall)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_96_activity_regularizer_18625652.
,dense_96/ActivityRegularizer/PartitionedCall�
"dense_96/ActivityRegularizer/ShapeShape)dense_96/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_96/ActivityRegularizer/Shape�
0dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_96/ActivityRegularizer/strided_slice/stack�
2dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_1�
2dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_2�
*dense_96/ActivityRegularizer/strided_sliceStridedSlice+dense_96/ActivityRegularizer/Shape:output:09dense_96/ActivityRegularizer/strided_slice/stack:output:0;dense_96/ActivityRegularizer/strided_slice/stack_1:output:0;dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_96/ActivityRegularizer/strided_slice�
!dense_96/ActivityRegularizer/CastCast3dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_96/ActivityRegularizer/Cast�
$dense_96/ActivityRegularizer/truedivRealDiv5dense_96/ActivityRegularizer/PartitionedCall:output:0%dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_96/ActivityRegularizer/truediv�
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_1862940dense_97_1862942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_18626472"
 dense_97/StatefulPartitionedCall�
,dense_97/ActivityRegularizer/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_97_activity_regularizer_18625782.
,dense_97/ActivityRegularizer/PartitionedCall�
"dense_97/ActivityRegularizer/ShapeShape)dense_97/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_97/ActivityRegularizer/Shape�
0dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_97/ActivityRegularizer/strided_slice/stack�
2dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_1�
2dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_2�
*dense_97/ActivityRegularizer/strided_sliceStridedSlice+dense_97/ActivityRegularizer/Shape:output:09dense_97/ActivityRegularizer/strided_slice/stack:output:0;dense_97/ActivityRegularizer/strided_slice/stack_1:output:0;dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_97/ActivityRegularizer/strided_slice�
!dense_97/ActivityRegularizer/CastCast3dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_97/ActivityRegularizer/Cast�
$dense_97/ActivityRegularizer/truedivRealDiv5dense_97/ActivityRegularizer/PartitionedCall:output:0%dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_97/ActivityRegularizer/truediv�
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)dense_97/StatefulPartitionedCall:output:0dense_98_1862953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_18626752"
 dense_98/StatefulPartitionedCall�
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)dense_98/StatefulPartitionedCall:output:0dense_99_1862956dense_99_1862958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_99_layer_call_and_return_conditional_losses_18626902"
 dense_99/StatefulPartitionedCall�
,dense_99/ActivityRegularizer/PartitionedCallPartitionedCall)dense_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_99_activity_regularizer_18625912.
,dense_99/ActivityRegularizer/PartitionedCall�
"dense_99/ActivityRegularizer/ShapeShape)dense_99/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_99/ActivityRegularizer/Shape�
0dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_99/ActivityRegularizer/strided_slice/stack�
2dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_1�
2dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_2�
*dense_99/ActivityRegularizer/strided_sliceStridedSlice+dense_99/ActivityRegularizer/Shape:output:09dense_99/ActivityRegularizer/strided_slice/stack:output:0;dense_99/ActivityRegularizer/strided_slice/stack_1:output:0;dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_99/ActivityRegularizer/strided_slice�
!dense_99/ActivityRegularizer/CastCast3dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_99/ActivityRegularizer/Cast�
$dense_99/ActivityRegularizer/truedivRealDiv5dense_99/ActivityRegularizer/PartitionedCall:output:0%dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_99/ActivityRegularizer/truediv�
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_1862969dense_100_1862971*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_18627152#
!dense_100/StatefulPartitionedCall�
-dense_100/ActivityRegularizer/PartitionedCallPartitionedCall*dense_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *;
f6R4
2__inference_dense_100_activity_regularizer_18626042/
-dense_100/ActivityRegularizer/PartitionedCall�
#dense_100/ActivityRegularizer/ShapeShape*dense_100/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#dense_100/ActivityRegularizer/Shape�
1dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_100/ActivityRegularizer/strided_slice/stack�
3dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_1�
3dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_2�
+dense_100/ActivityRegularizer/strided_sliceStridedSlice,dense_100/ActivityRegularizer/Shape:output:0:dense_100/ActivityRegularizer/strided_slice/stack:output:0<dense_100/ActivityRegularizer/strided_slice/stack_1:output:0<dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_100/ActivityRegularizer/strided_slice�
"dense_100/ActivityRegularizer/CastCast4dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"dense_100/ActivityRegularizer/Cast�
%dense_100/ActivityRegularizer/truedivRealDiv6dense_100/ActivityRegularizer/PartitionedCall:output:0&dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%dense_100/ActivityRegularizer/truediv�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_1862982dense_101_1862984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_18627392#
!dense_101/StatefulPartitionedCall�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_98_1862953*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mul�
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityv

Identity_1Identity(dense_96/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(dense_97/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2v

Identity_3Identity(dense_99/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3w

Identity_4Identity)dense_100/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4�
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall/^dense_98/kernel/Regularizer/Abs/ReadVariableOp!^dense_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_dense_97_layer_call_and_return_conditional_losses_1862647

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�	
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863409

inputs9
'dense_96_matmul_readvariableop_resource:6
(dense_96_biasadd_readvariableop_resource:9
'dense_97_matmul_readvariableop_resource:6
(dense_97_biasadd_readvariableop_resource:9
'dense_98_matmul_readvariableop_resource:9
'dense_99_matmul_readvariableop_resource:n6
(dense_99_biasadd_readvariableop_resource:n:
(dense_100_matmul_readvariableop_resource:nn7
)dense_100_biasadd_readvariableop_resource:n:
(dense_101_matmul_readvariableop_resource:nd7
)dense_101_biasadd_readvariableop_resource:d
identity

identity_1

identity_2

identity_3

identity_4�� dense_100/BiasAdd/ReadVariableOp�dense_100/MatMul/ReadVariableOp� dense_101/BiasAdd/ReadVariableOp�dense_101/MatMul/ReadVariableOp�dense_96/BiasAdd/ReadVariableOp�dense_96/MatMul/ReadVariableOp�dense_97/BiasAdd/ReadVariableOp�dense_97/MatMul/ReadVariableOp�dense_98/MatMul/ReadVariableOp�.dense_98/kernel/Regularizer/Abs/ReadVariableOp�dense_99/BiasAdd/ReadVariableOp�dense_99/MatMul/ReadVariableOp�
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_96/MatMul/ReadVariableOp�
dense_96/MatMulMatMulinputs&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_96/MatMul�
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_96/BiasAdd/ReadVariableOp�
dense_96/BiasAddBiasAdddense_96/MatMul:product:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_96/BiasAdds
dense_96/TanhTanhdense_96/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_96/Tanh�
#dense_96/ActivityRegularizer/SquareSquaredense_96/Tanh:y:0*
T0*'
_output_shapes
:���������2%
#dense_96/ActivityRegularizer/Square�
"dense_96/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_96/ActivityRegularizer/Const�
 dense_96/ActivityRegularizer/SumSum'dense_96/ActivityRegularizer/Square:y:0+dense_96/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_96/ActivityRegularizer/Sum�
"dense_96/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_96/ActivityRegularizer/mul/x�
 dense_96/ActivityRegularizer/mulMul+dense_96/ActivityRegularizer/mul/x:output:0)dense_96/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_96/ActivityRegularizer/mul�
"dense_96/ActivityRegularizer/ShapeShapedense_96/Tanh:y:0*
T0*
_output_shapes
:2$
"dense_96/ActivityRegularizer/Shape�
0dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_96/ActivityRegularizer/strided_slice/stack�
2dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_1�
2dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_2�
*dense_96/ActivityRegularizer/strided_sliceStridedSlice+dense_96/ActivityRegularizer/Shape:output:09dense_96/ActivityRegularizer/strided_slice/stack:output:0;dense_96/ActivityRegularizer/strided_slice/stack_1:output:0;dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_96/ActivityRegularizer/strided_slice�
!dense_96/ActivityRegularizer/CastCast3dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_96/ActivityRegularizer/Cast�
$dense_96/ActivityRegularizer/truedivRealDiv$dense_96/ActivityRegularizer/mul:z:0%dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_96/ActivityRegularizer/truediv�
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_97/MatMul/ReadVariableOp�
dense_97/MatMulMatMuldense_96/Tanh:y:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_97/MatMul�
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp�
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_97/BiasAdds
dense_97/TanhTanhdense_97/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_97/Tanh�
#dense_97/ActivityRegularizer/SquareSquaredense_97/Tanh:y:0*
T0*'
_output_shapes
:���������2%
#dense_97/ActivityRegularizer/Square�
"dense_97/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_97/ActivityRegularizer/Const�
 dense_97/ActivityRegularizer/SumSum'dense_97/ActivityRegularizer/Square:y:0+dense_97/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_97/ActivityRegularizer/Sum�
"dense_97/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_97/ActivityRegularizer/mul/x�
 dense_97/ActivityRegularizer/mulMul+dense_97/ActivityRegularizer/mul/x:output:0)dense_97/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_97/ActivityRegularizer/mul�
"dense_97/ActivityRegularizer/ShapeShapedense_97/Tanh:y:0*
T0*
_output_shapes
:2$
"dense_97/ActivityRegularizer/Shape�
0dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_97/ActivityRegularizer/strided_slice/stack�
2dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_1�
2dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_2�
*dense_97/ActivityRegularizer/strided_sliceStridedSlice+dense_97/ActivityRegularizer/Shape:output:09dense_97/ActivityRegularizer/strided_slice/stack:output:0;dense_97/ActivityRegularizer/strided_slice/stack_1:output:0;dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_97/ActivityRegularizer/strided_slice�
!dense_97/ActivityRegularizer/CastCast3dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_97/ActivityRegularizer/Cast�
$dense_97/ActivityRegularizer/truedivRealDiv$dense_97/ActivityRegularizer/mul:z:0%dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_97/ActivityRegularizer/truediv�
dense_98/MatMul/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_98/MatMul/ReadVariableOp�
dense_98/MatMulMatMuldense_97/Tanh:y:0&dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_98/MatMuls
dense_98/TanhTanhdense_98/MatMul:product:0*
T0*'
_output_shapes
:���������2
dense_98/Tanh�
dense_99/MatMul/ReadVariableOpReadVariableOp'dense_99_matmul_readvariableop_resource*
_output_shapes

:n*
dtype02 
dense_99/MatMul/ReadVariableOp�
dense_99/MatMulMatMuldense_98/Tanh:y:0&dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_99/MatMul�
dense_99/BiasAdd/ReadVariableOpReadVariableOp(dense_99_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype02!
dense_99/BiasAdd/ReadVariableOp�
dense_99/BiasAddBiasAdddense_99/MatMul:product:0'dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_99/BiasAdds
dense_99/TanhTanhdense_99/BiasAdd:output:0*
T0*'
_output_shapes
:���������n2
dense_99/Tanh�
#dense_99/ActivityRegularizer/SquareSquaredense_99/Tanh:y:0*
T0*'
_output_shapes
:���������n2%
#dense_99/ActivityRegularizer/Square�
"dense_99/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_99/ActivityRegularizer/Const�
 dense_99/ActivityRegularizer/SumSum'dense_99/ActivityRegularizer/Square:y:0+dense_99/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_99/ActivityRegularizer/Sum�
"dense_99/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"dense_99/ActivityRegularizer/mul/x�
 dense_99/ActivityRegularizer/mulMul+dense_99/ActivityRegularizer/mul/x:output:0)dense_99/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_99/ActivityRegularizer/mul�
"dense_99/ActivityRegularizer/ShapeShapedense_99/Tanh:y:0*
T0*
_output_shapes
:2$
"dense_99/ActivityRegularizer/Shape�
0dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_99/ActivityRegularizer/strided_slice/stack�
2dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_1�
2dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_2�
*dense_99/ActivityRegularizer/strided_sliceStridedSlice+dense_99/ActivityRegularizer/Shape:output:09dense_99/ActivityRegularizer/strided_slice/stack:output:0;dense_99/ActivityRegularizer/strided_slice/stack_1:output:0;dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_99/ActivityRegularizer/strided_slice�
!dense_99/ActivityRegularizer/CastCast3dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_99/ActivityRegularizer/Cast�
$dense_99/ActivityRegularizer/truedivRealDiv$dense_99/ActivityRegularizer/mul:z:0%dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_99/ActivityRegularizer/truediv�
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource*
_output_shapes

:nn*
dtype02!
dense_100/MatMul/ReadVariableOp�
dense_100/MatMulMatMuldense_99/Tanh:y:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_100/MatMul�
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype02"
 dense_100/BiasAdd/ReadVariableOp�
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
dense_100/BiasAddv
dense_100/TanhTanhdense_100/BiasAdd:output:0*
T0*'
_output_shapes
:���������n2
dense_100/Tanh�
$dense_100/ActivityRegularizer/SquareSquaredense_100/Tanh:y:0*
T0*'
_output_shapes
:���������n2&
$dense_100/ActivityRegularizer/Square�
#dense_100/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#dense_100/ActivityRegularizer/Const�
!dense_100/ActivityRegularizer/SumSum(dense_100/ActivityRegularizer/Square:y:0,dense_100/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2#
!dense_100/ActivityRegularizer/Sum�
#dense_100/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#dense_100/ActivityRegularizer/mul/x�
!dense_100/ActivityRegularizer/mulMul,dense_100/ActivityRegularizer/mul/x:output:0*dense_100/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!dense_100/ActivityRegularizer/mul�
#dense_100/ActivityRegularizer/ShapeShapedense_100/Tanh:y:0*
T0*
_output_shapes
:2%
#dense_100/ActivityRegularizer/Shape�
1dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_100/ActivityRegularizer/strided_slice/stack�
3dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_1�
3dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_2�
+dense_100/ActivityRegularizer/strided_sliceStridedSlice,dense_100/ActivityRegularizer/Shape:output:0:dense_100/ActivityRegularizer/strided_slice/stack:output:0<dense_100/ActivityRegularizer/strided_slice/stack_1:output:0<dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_100/ActivityRegularizer/strided_slice�
"dense_100/ActivityRegularizer/CastCast4dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"dense_100/ActivityRegularizer/Cast�
%dense_100/ActivityRegularizer/truedivRealDiv%dense_100/ActivityRegularizer/mul:z:0&dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%dense_100/ActivityRegularizer/truediv�
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes

:nd*
dtype02!
dense_101/MatMul/ReadVariableOp�
dense_101/MatMulMatMuldense_100/Tanh:y:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_101/MatMul�
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_101/BiasAdd/ReadVariableOp�
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
dense_101/BiasAdd�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mulu
IdentityIdentitydense_101/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityv

Identity_1Identity(dense_96/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(dense_97/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2v

Identity_3Identity(dense_99/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3w

Identity_4Identity)dense_100/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4�
NoOpNoOp!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp ^dense_96/BiasAdd/ReadVariableOp^dense_96/MatMul/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp^dense_98/MatMul/ReadVariableOp/^dense_98/kernel/Regularizer/Abs/ReadVariableOp ^dense_99/BiasAdd/ReadVariableOp^dense_99/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp2@
dense_98/MatMul/ReadVariableOpdense_98/MatMul/ReadVariableOp2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp2B
dense_99/BiasAdd/ReadVariableOpdense_99/BiasAdd/ReadVariableOp2@
dense_99/MatMul/ReadVariableOpdense_99/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_dense_100_layer_call_and_return_conditional_losses_1862715

inputs0
matmul_readvariableop_resource:nn-
biasadd_readvariableop_resource:n
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nn*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������n2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������n2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�l
�
J__inference_sequential_16_layer_call_and_return_conditional_losses_1862756

inputs"
dense_96_1862623:
dense_96_1862625:"
dense_97_1862648:
dense_97_1862650:"
dense_98_1862676:"
dense_99_1862691:n
dense_99_1862693:n#
dense_100_1862716:nn
dense_100_1862718:n#
dense_101_1862740:nd
dense_101_1862742:d
identity

identity_1

identity_2

identity_3

identity_4��!dense_100/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall� dense_96/StatefulPartitionedCall� dense_97/StatefulPartitionedCall� dense_98/StatefulPartitionedCall�.dense_98/kernel/Regularizer/Abs/ReadVariableOp� dense_99/StatefulPartitionedCall�
 dense_96/StatefulPartitionedCallStatefulPartitionedCallinputsdense_96_1862623dense_96_1862625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_18626222"
 dense_96/StatefulPartitionedCall�
,dense_96/ActivityRegularizer/PartitionedCallPartitionedCall)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_96_activity_regularizer_18625652.
,dense_96/ActivityRegularizer/PartitionedCall�
"dense_96/ActivityRegularizer/ShapeShape)dense_96/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_96/ActivityRegularizer/Shape�
0dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_96/ActivityRegularizer/strided_slice/stack�
2dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_1�
2dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_2�
*dense_96/ActivityRegularizer/strided_sliceStridedSlice+dense_96/ActivityRegularizer/Shape:output:09dense_96/ActivityRegularizer/strided_slice/stack:output:0;dense_96/ActivityRegularizer/strided_slice/stack_1:output:0;dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_96/ActivityRegularizer/strided_slice�
!dense_96/ActivityRegularizer/CastCast3dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_96/ActivityRegularizer/Cast�
$dense_96/ActivityRegularizer/truedivRealDiv5dense_96/ActivityRegularizer/PartitionedCall:output:0%dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_96/ActivityRegularizer/truediv�
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_1862648dense_97_1862650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_18626472"
 dense_97/StatefulPartitionedCall�
,dense_97/ActivityRegularizer/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_97_activity_regularizer_18625782.
,dense_97/ActivityRegularizer/PartitionedCall�
"dense_97/ActivityRegularizer/ShapeShape)dense_97/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_97/ActivityRegularizer/Shape�
0dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_97/ActivityRegularizer/strided_slice/stack�
2dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_1�
2dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_2�
*dense_97/ActivityRegularizer/strided_sliceStridedSlice+dense_97/ActivityRegularizer/Shape:output:09dense_97/ActivityRegularizer/strided_slice/stack:output:0;dense_97/ActivityRegularizer/strided_slice/stack_1:output:0;dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_97/ActivityRegularizer/strided_slice�
!dense_97/ActivityRegularizer/CastCast3dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_97/ActivityRegularizer/Cast�
$dense_97/ActivityRegularizer/truedivRealDiv5dense_97/ActivityRegularizer/PartitionedCall:output:0%dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_97/ActivityRegularizer/truediv�
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)dense_97/StatefulPartitionedCall:output:0dense_98_1862676*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_18626752"
 dense_98/StatefulPartitionedCall�
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)dense_98/StatefulPartitionedCall:output:0dense_99_1862691dense_99_1862693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_99_layer_call_and_return_conditional_losses_18626902"
 dense_99/StatefulPartitionedCall�
,dense_99/ActivityRegularizer/PartitionedCallPartitionedCall)dense_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_99_activity_regularizer_18625912.
,dense_99/ActivityRegularizer/PartitionedCall�
"dense_99/ActivityRegularizer/ShapeShape)dense_99/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_99/ActivityRegularizer/Shape�
0dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_99/ActivityRegularizer/strided_slice/stack�
2dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_1�
2dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_2�
*dense_99/ActivityRegularizer/strided_sliceStridedSlice+dense_99/ActivityRegularizer/Shape:output:09dense_99/ActivityRegularizer/strided_slice/stack:output:0;dense_99/ActivityRegularizer/strided_slice/stack_1:output:0;dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_99/ActivityRegularizer/strided_slice�
!dense_99/ActivityRegularizer/CastCast3dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_99/ActivityRegularizer/Cast�
$dense_99/ActivityRegularizer/truedivRealDiv5dense_99/ActivityRegularizer/PartitionedCall:output:0%dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_99/ActivityRegularizer/truediv�
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_1862716dense_100_1862718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_18627152#
!dense_100/StatefulPartitionedCall�
-dense_100/ActivityRegularizer/PartitionedCallPartitionedCall*dense_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *;
f6R4
2__inference_dense_100_activity_regularizer_18626042/
-dense_100/ActivityRegularizer/PartitionedCall�
#dense_100/ActivityRegularizer/ShapeShape*dense_100/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#dense_100/ActivityRegularizer/Shape�
1dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_100/ActivityRegularizer/strided_slice/stack�
3dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_1�
3dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_2�
+dense_100/ActivityRegularizer/strided_sliceStridedSlice,dense_100/ActivityRegularizer/Shape:output:0:dense_100/ActivityRegularizer/strided_slice/stack:output:0<dense_100/ActivityRegularizer/strided_slice/stack_1:output:0<dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_100/ActivityRegularizer/strided_slice�
"dense_100/ActivityRegularizer/CastCast4dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"dense_100/ActivityRegularizer/Cast�
%dense_100/ActivityRegularizer/truedivRealDiv6dense_100/ActivityRegularizer/PartitionedCall:output:0&dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%dense_100/ActivityRegularizer/truediv�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_1862740dense_101_1862742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_18627392#
!dense_101/StatefulPartitionedCall�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_98_1862676*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mul�
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityv

Identity_1Identity(dense_96/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(dense_97/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2v

Identity_3Identity(dense_99/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3w

Identity_4Identity)dense_100/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4�
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall/^dense_98/kernel/Regularizer/Abs/ReadVariableOp!^dense_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_1863646I
7dense_98_kernel_regularizer_abs_readvariableop_resource:
identity��.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7dense_98_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mulm
IdentityIdentity#dense_98/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity
NoOpNoOp/^dense_98/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp
�

�
E__inference_dense_99_layer_call_and_return_conditional_losses_1862690

inputs0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������n2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������n2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_16_layer_call_fn_1863309

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:n
	unknown_5:n
	unknown_6:nn
	unknown_7:n
	unknown_8:nd
	unknown_9:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:���������d: : : : *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_18629982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
#__inference__traced_restore_1863975
file_prefix2
 assignvariableop_dense_96_kernel:.
 assignvariableop_1_dense_96_bias:4
"assignvariableop_2_dense_97_kernel:.
 assignvariableop_3_dense_97_bias:4
"assignvariableop_4_dense_98_kernel:4
"assignvariableop_5_dense_99_kernel:n.
 assignvariableop_6_dense_99_bias:n5
#assignvariableop_7_dense_100_kernel:nn/
!assignvariableop_8_dense_100_bias:n5
#assignvariableop_9_dense_101_kernel:nd0
"assignvariableop_10_dense_101_bias:d'
assignvariableop_11_adam_iter:	 )
assignvariableop_12_adam_beta_1: )
assignvariableop_13_adam_beta_2: (
assignvariableop_14_adam_decay: 0
&assignvariableop_15_adam_learning_rate: #
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: <
*assignvariableop_20_adam_dense_96_kernel_m:6
(assignvariableop_21_adam_dense_96_bias_m:<
*assignvariableop_22_adam_dense_97_kernel_m:6
(assignvariableop_23_adam_dense_97_bias_m:<
*assignvariableop_24_adam_dense_98_kernel_m:<
*assignvariableop_25_adam_dense_99_kernel_m:n6
(assignvariableop_26_adam_dense_99_bias_m:n=
+assignvariableop_27_adam_dense_100_kernel_m:nn7
)assignvariableop_28_adam_dense_100_bias_m:n=
+assignvariableop_29_adam_dense_101_kernel_m:nd7
)assignvariableop_30_adam_dense_101_bias_m:d<
*assignvariableop_31_adam_dense_96_kernel_v:6
(assignvariableop_32_adam_dense_96_bias_v:<
*assignvariableop_33_adam_dense_97_kernel_v:6
(assignvariableop_34_adam_dense_97_bias_v:<
*assignvariableop_35_adam_dense_98_kernel_v:<
*assignvariableop_36_adam_dense_99_kernel_v:n6
(assignvariableop_37_adam_dense_99_bias_v:n=
+assignvariableop_38_adam_dense_100_kernel_v:nn7
)assignvariableop_39_adam_dense_100_bias_v:n=
+assignvariableop_40_adam_dense_101_kernel_v:nd7
)assignvariableop_41_adam_dense_101_bias_v:d
identity_43��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_dense_96_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_96_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_97_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_97_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_98_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_99_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_99_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_dense_100_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_100_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp#assignvariableop_9_dense_101_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_101_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_96_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_96_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_97_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_97_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_98_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_99_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_99_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_100_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_100_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_101_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_101_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_96_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_96_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_97_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_97_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_98_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_99_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_99_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_dense_100_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_100_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_dense_101_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_101_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_419
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_42f
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_43�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�l
�
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863206
input_17"
dense_96_1863135:
dense_96_1863137:"
dense_97_1863148:
dense_97_1863150:"
dense_98_1863161:"
dense_99_1863164:n
dense_99_1863166:n#
dense_100_1863177:nn
dense_100_1863179:n#
dense_101_1863190:nd
dense_101_1863192:d
identity

identity_1

identity_2

identity_3

identity_4��!dense_100/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall� dense_96/StatefulPartitionedCall� dense_97/StatefulPartitionedCall� dense_98/StatefulPartitionedCall�.dense_98/kernel/Regularizer/Abs/ReadVariableOp� dense_99/StatefulPartitionedCall�
 dense_96/StatefulPartitionedCallStatefulPartitionedCallinput_17dense_96_1863135dense_96_1863137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_18626222"
 dense_96/StatefulPartitionedCall�
,dense_96/ActivityRegularizer/PartitionedCallPartitionedCall)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_96_activity_regularizer_18625652.
,dense_96/ActivityRegularizer/PartitionedCall�
"dense_96/ActivityRegularizer/ShapeShape)dense_96/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_96/ActivityRegularizer/Shape�
0dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_96/ActivityRegularizer/strided_slice/stack�
2dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_1�
2dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_2�
*dense_96/ActivityRegularizer/strided_sliceStridedSlice+dense_96/ActivityRegularizer/Shape:output:09dense_96/ActivityRegularizer/strided_slice/stack:output:0;dense_96/ActivityRegularizer/strided_slice/stack_1:output:0;dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_96/ActivityRegularizer/strided_slice�
!dense_96/ActivityRegularizer/CastCast3dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_96/ActivityRegularizer/Cast�
$dense_96/ActivityRegularizer/truedivRealDiv5dense_96/ActivityRegularizer/PartitionedCall:output:0%dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_96/ActivityRegularizer/truediv�
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_1863148dense_97_1863150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_18626472"
 dense_97/StatefulPartitionedCall�
,dense_97/ActivityRegularizer/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_97_activity_regularizer_18625782.
,dense_97/ActivityRegularizer/PartitionedCall�
"dense_97/ActivityRegularizer/ShapeShape)dense_97/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_97/ActivityRegularizer/Shape�
0dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_97/ActivityRegularizer/strided_slice/stack�
2dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_1�
2dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_2�
*dense_97/ActivityRegularizer/strided_sliceStridedSlice+dense_97/ActivityRegularizer/Shape:output:09dense_97/ActivityRegularizer/strided_slice/stack:output:0;dense_97/ActivityRegularizer/strided_slice/stack_1:output:0;dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_97/ActivityRegularizer/strided_slice�
!dense_97/ActivityRegularizer/CastCast3dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_97/ActivityRegularizer/Cast�
$dense_97/ActivityRegularizer/truedivRealDiv5dense_97/ActivityRegularizer/PartitionedCall:output:0%dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_97/ActivityRegularizer/truediv�
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)dense_97/StatefulPartitionedCall:output:0dense_98_1863161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_18626752"
 dense_98/StatefulPartitionedCall�
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)dense_98/StatefulPartitionedCall:output:0dense_99_1863164dense_99_1863166*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_99_layer_call_and_return_conditional_losses_18626902"
 dense_99/StatefulPartitionedCall�
,dense_99/ActivityRegularizer/PartitionedCallPartitionedCall)dense_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_99_activity_regularizer_18625912.
,dense_99/ActivityRegularizer/PartitionedCall�
"dense_99/ActivityRegularizer/ShapeShape)dense_99/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_99/ActivityRegularizer/Shape�
0dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_99/ActivityRegularizer/strided_slice/stack�
2dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_1�
2dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_2�
*dense_99/ActivityRegularizer/strided_sliceStridedSlice+dense_99/ActivityRegularizer/Shape:output:09dense_99/ActivityRegularizer/strided_slice/stack:output:0;dense_99/ActivityRegularizer/strided_slice/stack_1:output:0;dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_99/ActivityRegularizer/strided_slice�
!dense_99/ActivityRegularizer/CastCast3dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_99/ActivityRegularizer/Cast�
$dense_99/ActivityRegularizer/truedivRealDiv5dense_99/ActivityRegularizer/PartitionedCall:output:0%dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_99/ActivityRegularizer/truediv�
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_1863177dense_100_1863179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_18627152#
!dense_100/StatefulPartitionedCall�
-dense_100/ActivityRegularizer/PartitionedCallPartitionedCall*dense_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *;
f6R4
2__inference_dense_100_activity_regularizer_18626042/
-dense_100/ActivityRegularizer/PartitionedCall�
#dense_100/ActivityRegularizer/ShapeShape*dense_100/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#dense_100/ActivityRegularizer/Shape�
1dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_100/ActivityRegularizer/strided_slice/stack�
3dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_1�
3dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_2�
+dense_100/ActivityRegularizer/strided_sliceStridedSlice,dense_100/ActivityRegularizer/Shape:output:0:dense_100/ActivityRegularizer/strided_slice/stack:output:0<dense_100/ActivityRegularizer/strided_slice/stack_1:output:0<dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_100/ActivityRegularizer/strided_slice�
"dense_100/ActivityRegularizer/CastCast4dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"dense_100/ActivityRegularizer/Cast�
%dense_100/ActivityRegularizer/truedivRealDiv6dense_100/ActivityRegularizer/PartitionedCall:output:0&dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%dense_100/ActivityRegularizer/truediv�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_1863190dense_101_1863192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_18627392#
!dense_101/StatefulPartitionedCall�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_98_1863161*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mul�
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityv

Identity_1Identity(dense_96/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(dense_97/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2v

Identity_3Identity(dense_99/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3w

Identity_4Identity)dense_100/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4�
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall/^dense_98/kernel/Regularizer/Abs/ReadVariableOp!^dense_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_17
�
�
*__inference_dense_97_layer_call_fn_1863538

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_18626472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_dense_101_layer_call_and_return_conditional_losses_1863635

inputs0
matmul_readvariableop_resource:nd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�
H
1__inference_dense_99_activity_regularizer_1862591
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�

�
%__inference_signature_wrapper_1863247
input_17
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:n
	unknown_5:n
	unknown_6:nn
	unknown_7:n
	unknown_8:nd
	unknown_9:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_18625522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_17
�
�
/__inference_sequential_16_layer_call_fn_1863058
input_17
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:n
	unknown_5:n
	unknown_6:nn
	unknown_7:n
	unknown_8:nd
	unknown_9:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:���������d: : : : *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_18629982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_17
�
�
*__inference_dense_99_layer_call_fn_1863585

inputs
unknown:n
	unknown_0:n
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_99_layer_call_and_return_conditional_losses_18626902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������n2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_dense_96_layer_call_and_return_conditional_losses_1862622

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_dense_101_layer_call_and_return_conditional_losses_1862739

inputs0
matmul_readvariableop_resource:nd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:nd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�l
�
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863132
input_17"
dense_96_1863061:
dense_96_1863063:"
dense_97_1863074:
dense_97_1863076:"
dense_98_1863087:"
dense_99_1863090:n
dense_99_1863092:n#
dense_100_1863103:nn
dense_100_1863105:n#
dense_101_1863116:nd
dense_101_1863118:d
identity

identity_1

identity_2

identity_3

identity_4��!dense_100/StatefulPartitionedCall�!dense_101/StatefulPartitionedCall� dense_96/StatefulPartitionedCall� dense_97/StatefulPartitionedCall� dense_98/StatefulPartitionedCall�.dense_98/kernel/Regularizer/Abs/ReadVariableOp� dense_99/StatefulPartitionedCall�
 dense_96/StatefulPartitionedCallStatefulPartitionedCallinput_17dense_96_1863061dense_96_1863063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_18626222"
 dense_96/StatefulPartitionedCall�
,dense_96/ActivityRegularizer/PartitionedCallPartitionedCall)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_96_activity_regularizer_18625652.
,dense_96/ActivityRegularizer/PartitionedCall�
"dense_96/ActivityRegularizer/ShapeShape)dense_96/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_96/ActivityRegularizer/Shape�
0dense_96/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_96/ActivityRegularizer/strided_slice/stack�
2dense_96/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_1�
2dense_96/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_96/ActivityRegularizer/strided_slice/stack_2�
*dense_96/ActivityRegularizer/strided_sliceStridedSlice+dense_96/ActivityRegularizer/Shape:output:09dense_96/ActivityRegularizer/strided_slice/stack:output:0;dense_96/ActivityRegularizer/strided_slice/stack_1:output:0;dense_96/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_96/ActivityRegularizer/strided_slice�
!dense_96/ActivityRegularizer/CastCast3dense_96/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_96/ActivityRegularizer/Cast�
$dense_96/ActivityRegularizer/truedivRealDiv5dense_96/ActivityRegularizer/PartitionedCall:output:0%dense_96/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_96/ActivityRegularizer/truediv�
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)dense_96/StatefulPartitionedCall:output:0dense_97_1863074dense_97_1863076*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_18626472"
 dense_97/StatefulPartitionedCall�
,dense_97/ActivityRegularizer/PartitionedCallPartitionedCall)dense_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_97_activity_regularizer_18625782.
,dense_97/ActivityRegularizer/PartitionedCall�
"dense_97/ActivityRegularizer/ShapeShape)dense_97/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_97/ActivityRegularizer/Shape�
0dense_97/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_97/ActivityRegularizer/strided_slice/stack�
2dense_97/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_1�
2dense_97/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_97/ActivityRegularizer/strided_slice/stack_2�
*dense_97/ActivityRegularizer/strided_sliceStridedSlice+dense_97/ActivityRegularizer/Shape:output:09dense_97/ActivityRegularizer/strided_slice/stack:output:0;dense_97/ActivityRegularizer/strided_slice/stack_1:output:0;dense_97/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_97/ActivityRegularizer/strided_slice�
!dense_97/ActivityRegularizer/CastCast3dense_97/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_97/ActivityRegularizer/Cast�
$dense_97/ActivityRegularizer/truedivRealDiv5dense_97/ActivityRegularizer/PartitionedCall:output:0%dense_97/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_97/ActivityRegularizer/truediv�
 dense_98/StatefulPartitionedCallStatefulPartitionedCall)dense_97/StatefulPartitionedCall:output:0dense_98_1863087*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_18626752"
 dense_98/StatefulPartitionedCall�
 dense_99/StatefulPartitionedCallStatefulPartitionedCall)dense_98/StatefulPartitionedCall:output:0dense_99_1863090dense_99_1863092*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_99_layer_call_and_return_conditional_losses_18626902"
 dense_99/StatefulPartitionedCall�
,dense_99/ActivityRegularizer/PartitionedCallPartitionedCall)dense_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_99_activity_regularizer_18625912.
,dense_99/ActivityRegularizer/PartitionedCall�
"dense_99/ActivityRegularizer/ShapeShape)dense_99/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_99/ActivityRegularizer/Shape�
0dense_99/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_99/ActivityRegularizer/strided_slice/stack�
2dense_99/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_1�
2dense_99/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_99/ActivityRegularizer/strided_slice/stack_2�
*dense_99/ActivityRegularizer/strided_sliceStridedSlice+dense_99/ActivityRegularizer/Shape:output:09dense_99/ActivityRegularizer/strided_slice/stack:output:0;dense_99/ActivityRegularizer/strided_slice/stack_1:output:0;dense_99/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_99/ActivityRegularizer/strided_slice�
!dense_99/ActivityRegularizer/CastCast3dense_99/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_99/ActivityRegularizer/Cast�
$dense_99/ActivityRegularizer/truedivRealDiv5dense_99/ActivityRegularizer/PartitionedCall:output:0%dense_99/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_99/ActivityRegularizer/truediv�
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_1863103dense_100_1863105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_18627152#
!dense_100/StatefulPartitionedCall�
-dense_100/ActivityRegularizer/PartitionedCallPartitionedCall*dense_100/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *;
f6R4
2__inference_dense_100_activity_regularizer_18626042/
-dense_100/ActivityRegularizer/PartitionedCall�
#dense_100/ActivityRegularizer/ShapeShape*dense_100/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#dense_100/ActivityRegularizer/Shape�
1dense_100/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1dense_100/ActivityRegularizer/strided_slice/stack�
3dense_100/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_1�
3dense_100/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3dense_100/ActivityRegularizer/strided_slice/stack_2�
+dense_100/ActivityRegularizer/strided_sliceStridedSlice,dense_100/ActivityRegularizer/Shape:output:0:dense_100/ActivityRegularizer/strided_slice/stack:output:0<dense_100/ActivityRegularizer/strided_slice/stack_1:output:0<dense_100/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+dense_100/ActivityRegularizer/strided_slice�
"dense_100/ActivityRegularizer/CastCast4dense_100/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"dense_100/ActivityRegularizer/Cast�
%dense_100/ActivityRegularizer/truedivRealDiv6dense_100/ActivityRegularizer/PartitionedCall:output:0&dense_100/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%dense_100/ActivityRegularizer/truediv�
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_1863116dense_101_1863118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_18627392#
!dense_101/StatefulPartitionedCall�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_98_1863087*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mul�
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityv

Identity_1Identity(dense_96/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(dense_97/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2v

Identity_3Identity(dense_99/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3w

Identity_4Identity)dense_100/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4�
NoOpNoOp"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall/^dense_98/kernel/Regularizer/Abs/ReadVariableOp!^dense_99/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_17
�

�
E__inference_dense_96_layer_call_and_return_conditional_losses_1863657

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�
 __inference__traced_save_1863839
file_prefix.
*savev2_dense_96_kernel_read_readvariableop,
(savev2_dense_96_bias_read_readvariableop.
*savev2_dense_97_kernel_read_readvariableop,
(savev2_dense_97_bias_read_readvariableop.
*savev2_dense_98_kernel_read_readvariableop.
*savev2_dense_99_kernel_read_readvariableop,
(savev2_dense_99_bias_read_readvariableop/
+savev2_dense_100_kernel_read_readvariableop-
)savev2_dense_100_bias_read_readvariableop/
+savev2_dense_101_kernel_read_readvariableop-
)savev2_dense_101_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_96_kernel_m_read_readvariableop3
/savev2_adam_dense_96_bias_m_read_readvariableop5
1savev2_adam_dense_97_kernel_m_read_readvariableop3
/savev2_adam_dense_97_bias_m_read_readvariableop5
1savev2_adam_dense_98_kernel_m_read_readvariableop5
1savev2_adam_dense_99_kernel_m_read_readvariableop3
/savev2_adam_dense_99_bias_m_read_readvariableop6
2savev2_adam_dense_100_kernel_m_read_readvariableop4
0savev2_adam_dense_100_bias_m_read_readvariableop6
2savev2_adam_dense_101_kernel_m_read_readvariableop4
0savev2_adam_dense_101_bias_m_read_readvariableop5
1savev2_adam_dense_96_kernel_v_read_readvariableop3
/savev2_adam_dense_96_bias_v_read_readvariableop5
1savev2_adam_dense_97_kernel_v_read_readvariableop3
/savev2_adam_dense_97_bias_v_read_readvariableop5
1savev2_adam_dense_98_kernel_v_read_readvariableop5
1savev2_adam_dense_99_kernel_v_read_readvariableop3
/savev2_adam_dense_99_bias_v_read_readvariableop6
2savev2_adam_dense_100_kernel_v_read_readvariableop4
0savev2_adam_dense_100_bias_v_read_readvariableop6
2savev2_adam_dense_101_kernel_v_read_readvariableop4
0savev2_adam_dense_101_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_96_kernel_read_readvariableop(savev2_dense_96_bias_read_readvariableop*savev2_dense_97_kernel_read_readvariableop(savev2_dense_97_bias_read_readvariableop*savev2_dense_98_kernel_read_readvariableop*savev2_dense_99_kernel_read_readvariableop(savev2_dense_99_bias_read_readvariableop+savev2_dense_100_kernel_read_readvariableop)savev2_dense_100_bias_read_readvariableop+savev2_dense_101_kernel_read_readvariableop)savev2_dense_101_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_96_kernel_m_read_readvariableop/savev2_adam_dense_96_bias_m_read_readvariableop1savev2_adam_dense_97_kernel_m_read_readvariableop/savev2_adam_dense_97_bias_m_read_readvariableop1savev2_adam_dense_98_kernel_m_read_readvariableop1savev2_adam_dense_99_kernel_m_read_readvariableop/savev2_adam_dense_99_bias_m_read_readvariableop2savev2_adam_dense_100_kernel_m_read_readvariableop0savev2_adam_dense_100_bias_m_read_readvariableop2savev2_adam_dense_101_kernel_m_read_readvariableop0savev2_adam_dense_101_bias_m_read_readvariableop1savev2_adam_dense_96_kernel_v_read_readvariableop/savev2_adam_dense_96_bias_v_read_readvariableop1savev2_adam_dense_97_kernel_v_read_readvariableop/savev2_adam_dense_97_bias_v_read_readvariableop1savev2_adam_dense_98_kernel_v_read_readvariableop1savev2_adam_dense_99_kernel_v_read_readvariableop/savev2_adam_dense_99_bias_v_read_readvariableop2savev2_adam_dense_100_kernel_v_read_readvariableop0savev2_adam_dense_100_bias_v_read_readvariableop2savev2_adam_dense_101_kernel_v_read_readvariableop0savev2_adam_dense_101_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::n:n:nn:n:nd:d: : : : : : : : : ::::::n:n:nn:n:nd:d::::::n:n:nn:n:nd:d: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:n: 

_output_shapes
:n:$ 

_output_shapes

:nn: 	

_output_shapes
:n:$
 

_output_shapes

:nd: 

_output_shapes
:d:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:n: 

_output_shapes
:n:$ 

_output_shapes

:nn: 

_output_shapes
:n:$ 

_output_shapes

:nd: 

_output_shapes
:d:$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

::$% 

_output_shapes

:n: &

_output_shapes
:n:$' 

_output_shapes

:nn: (

_output_shapes
:n:$) 

_output_shapes

:nd: *

_output_shapes
:d:+

_output_shapes
: 
�
�
/__inference_sequential_16_layer_call_fn_1862785
input_17
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:n
	unknown_5:n
	unknown_6:nn
	unknown_7:n
	unknown_8:nd
	unknown_9:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:���������d: : : : *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_18627562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_17
�
H
1__inference_dense_97_activity_regularizer_1862578
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�

�
E__inference_dense_97_layer_call_and_return_conditional_losses_1863668

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_dense_96_layer_call_fn_1863518

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_18626222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_dense_98_layer_call_and_return_conditional_losses_1863576

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOp�.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMulX
TanhTanhMatMul:product:0*
T0*'
_output_shapes
:���������2
Tanh�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^MatMul/ReadVariableOp/^dense_98/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_16_layer_call_fn_1863278

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:n
	unknown_5:n
	unknown_6:nn
	unknown_7:n
	unknown_8:nd
	unknown_9:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:���������d: : : : *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_18627562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
H
1__inference_dense_96_activity_regularizer_1862565
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:���������2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
�
�
I__inference_dense_96_layer_call_and_return_all_conditional_losses_1863529

inputs
unknown:
	unknown_0:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_18626222
StatefulPartitionedCall�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_96_activity_regularizer_18625652
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_100_layer_call_fn_1863605

inputs
unknown:nn
	unknown_0:n
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_18627152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������n2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�
I__inference_dense_97_layer_call_and_return_all_conditional_losses_1863549

inputs
unknown:
	unknown_0:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_18626472
StatefulPartitionedCall�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_97_activity_regularizer_18625782
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_dense_100_layer_call_and_return_all_conditional_losses_1863616

inputs
unknown:nn
	unknown_0:n
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_100_layer_call_and_return_conditional_losses_18627152
StatefulPartitionedCall�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *;
f6R4
2__inference_dense_100_activity_regularizer_18626042
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������n2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�
I__inference_dense_99_layer_call_and_return_all_conditional_losses_1863596

inputs
unknown:n
	unknown_0:n
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������n*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_99_layer_call_and_return_conditional_losses_18626902
StatefulPartitionedCall�
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_dense_99_activity_regularizer_18625912
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������n2

Identityf

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_dense_98_layer_call_and_return_conditional_losses_1862675

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOp�.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMulX
TanhTanhMatMul:product:0*
T0*'
_output_shapes
:���������2
Tanh�
.dense_98/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype020
.dense_98/kernel/Regularizer/Abs/ReadVariableOp�
dense_98/kernel/Regularizer/AbsAbs6dense_98/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:2!
dense_98/kernel/Regularizer/Abs�
!dense_98/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_98/kernel/Regularizer/Const�
dense_98/kernel/Regularizer/SumSum#dense_98/kernel/Regularizer/Abs:y:0*dense_98/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/Sum�
!dense_98/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!dense_98/kernel/Regularizer/mul/x�
dense_98/kernel/Regularizer/mulMul*dense_98/kernel/Regularizer/mul/x:output:0(dense_98/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_98/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^MatMul/ReadVariableOp/^dense_98/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_98/kernel/Regularizer/Abs/ReadVariableOp.dense_98/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
E__inference_dense_99_layer_call_and_return_conditional_losses_1863679

inputs0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������n2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������n2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
~
*__inference_dense_98_layer_call_fn_1863562

inputs
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_18626752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_101_layer_call_fn_1863625

inputs
unknown:nd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_101_layer_call_and_return_conditional_losses_18627392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������n: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������n
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
=
input_171
serving_default_input_17:0���������=
	dense_1010
StatefulPartitionedCall:0���������dtensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
regularization_losses
	trainable_variables

	variables
	keras_api

signatures
y__call__
z_default_save_signature
*{&call_and_return_all_conditional_losses"
_tf_keras_sequential
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

*kernel
+bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0iter

1beta_1

2beta_2
	3decay
4learning_ratemcmdmemfmgmhmi$mj%mk*ml+mmvnvovpvqvrvsvt$vu%vv*vw+vx"
	optimizer
(
�0"
trackable_list_wrapper
n
0
1
2
3
4
5
6
$7
%8
*9
+10"
trackable_list_wrapper
n
0
1
2
3
4
5
6
$7
%8
*9
+10"
trackable_list_wrapper
�
regularization_losses
	trainable_variables

5layers
6non_trainable_variables
7metrics
8layer_metrics
9layer_regularization_losses

	variables
y__call__
z_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
!:2dense_96/kernel
:2dense_96/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses

:layers
trainable_variables
;non_trainable_variables
<metrics
=layer_metrics
>layer_regularization_losses
	variables
|__call__
�activity_regularizer_fn
*}&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:2dense_97/kernel
:2dense_97/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses

?layers
trainable_variables
@non_trainable_variables
Ametrics
Blayer_metrics
Clayer_regularization_losses
	variables
~__call__
�activity_regularizer_fn
*&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:2dense_98/kernel
(
�0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
regularization_losses

Dlayers
trainable_variables
Enon_trainable_variables
Fmetrics
Glayer_metrics
Hlayer_regularization_losses
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:n2dense_99/kernel
:n2dense_99/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
 regularization_losses

Ilayers
!trainable_variables
Jnon_trainable_variables
Kmetrics
Llayer_metrics
Mlayer_regularization_losses
"	variables
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": nn2dense_100/kernel
:n2dense_100/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
�
&regularization_losses

Nlayers
'trainable_variables
Onon_trainable_variables
Pmetrics
Qlayer_metrics
Rlayer_regularization_losses
(	variables
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": nd2dense_101/kernel
:d2dense_101/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
,regularization_losses

Slayers
-trainable_variables
Tnon_trainable_variables
Umetrics
Vlayer_metrics
Wlayer_regularization_losses
.	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
N
	Ztotal
	[count
\	variables
]	keras_api"
_tf_keras_metric
^
	^total
	_count
`
_fn_kwargs
a	variables
b	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
Z0
[1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
^0
_1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
&:$2Adam/dense_96/kernel/m
 :2Adam/dense_96/bias/m
&:$2Adam/dense_97/kernel/m
 :2Adam/dense_97/bias/m
&:$2Adam/dense_98/kernel/m
&:$n2Adam/dense_99/kernel/m
 :n2Adam/dense_99/bias/m
':%nn2Adam/dense_100/kernel/m
!:n2Adam/dense_100/bias/m
':%nd2Adam/dense_101/kernel/m
!:d2Adam/dense_101/bias/m
&:$2Adam/dense_96/kernel/v
 :2Adam/dense_96/bias/v
&:$2Adam/dense_97/kernel/v
 :2Adam/dense_97/bias/v
&:$2Adam/dense_98/kernel/v
&:$n2Adam/dense_99/kernel/v
 :n2Adam/dense_99/bias/v
':%nn2Adam/dense_100/kernel/v
!:n2Adam/dense_100/bias/v
':%nd2Adam/dense_101/kernel/v
!:d2Adam/dense_101/bias/v
�2�
/__inference_sequential_16_layer_call_fn_1862785
/__inference_sequential_16_layer_call_fn_1863278
/__inference_sequential_16_layer_call_fn_1863309
/__inference_sequential_16_layer_call_fn_1863058�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_1862552input_17"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863409
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863509
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863132
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863206�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dense_96_layer_call_fn_1863518�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_dense_96_layer_call_and_return_all_conditional_losses_1863529�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dense_97_layer_call_fn_1863538�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_dense_97_layer_call_and_return_all_conditional_losses_1863549�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dense_98_layer_call_fn_1863562�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dense_98_layer_call_and_return_conditional_losses_1863576�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dense_99_layer_call_fn_1863585�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_dense_99_layer_call_and_return_all_conditional_losses_1863596�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_100_layer_call_fn_1863605�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_dense_100_layer_call_and_return_all_conditional_losses_1863616�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_101_layer_call_fn_1863625�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_dense_101_layer_call_and_return_conditional_losses_1863635�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_1863646�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
%__inference_signature_wrapper_1863247input_17"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_dense_96_activity_regularizer_1862565�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�2�
E__inference_dense_96_layer_call_and_return_conditional_losses_1863657�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_dense_97_activity_regularizer_1862578�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�2�
E__inference_dense_97_layer_call_and_return_conditional_losses_1863668�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_dense_99_activity_regularizer_1862591�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�2�
E__inference_dense_99_layer_call_and_return_conditional_losses_1863679�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
2__inference_dense_100_activity_regularizer_1862604�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
�2�
F__inference_dense_100_layer_call_and_return_conditional_losses_1863690�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
"__inference__wrapped_model_1862552w$%*+1�.
'�$
"�
input_17���������
� "5�2
0
	dense_101#� 
	dense_101���������d\
2__inference_dense_100_activity_regularizer_1862604&�
�
�	
x
� "� �
J__inference_dense_100_layer_call_and_return_all_conditional_losses_1863616j$%/�,
%�"
 �
inputs���������n
� "3�0
�
0���������n
�
�	
1/0 �
F__inference_dense_100_layer_call_and_return_conditional_losses_1863690\$%/�,
%�"
 �
inputs���������n
� "%�"
�
0���������n
� ~
+__inference_dense_100_layer_call_fn_1863605O$%/�,
%�"
 �
inputs���������n
� "����������n�
F__inference_dense_101_layer_call_and_return_conditional_losses_1863635\*+/�,
%�"
 �
inputs���������n
� "%�"
�
0���������d
� ~
+__inference_dense_101_layer_call_fn_1863625O*+/�,
%�"
 �
inputs���������n
� "����������d[
1__inference_dense_96_activity_regularizer_1862565&�
�
�	
x
� "� �
I__inference_dense_96_layer_call_and_return_all_conditional_losses_1863529j/�,
%�"
 �
inputs���������
� "3�0
�
0���������
�
�	
1/0 �
E__inference_dense_96_layer_call_and_return_conditional_losses_1863657\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_96_layer_call_fn_1863518O/�,
%�"
 �
inputs���������
� "����������[
1__inference_dense_97_activity_regularizer_1862578&�
�
�	
x
� "� �
I__inference_dense_97_layer_call_and_return_all_conditional_losses_1863549j/�,
%�"
 �
inputs���������
� "3�0
�
0���������
�
�	
1/0 �
E__inference_dense_97_layer_call_and_return_conditional_losses_1863668\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_97_layer_call_fn_1863538O/�,
%�"
 �
inputs���������
� "�����������
E__inference_dense_98_layer_call_and_return_conditional_losses_1863576[/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
*__inference_dense_98_layer_call_fn_1863562N/�,
%�"
 �
inputs���������
� "����������[
1__inference_dense_99_activity_regularizer_1862591&�
�
�	
x
� "� �
I__inference_dense_99_layer_call_and_return_all_conditional_losses_1863596j/�,
%�"
 �
inputs���������
� "3�0
�
0���������n
�
�	
1/0 �
E__inference_dense_99_layer_call_and_return_conditional_losses_1863679\/�,
%�"
 �
inputs���������
� "%�"
�
0���������n
� }
*__inference_dense_99_layer_call_fn_1863585O/�,
%�"
 �
inputs���������
� "����������n<
__inference_loss_fn_0_1863646�

� 
� "� �
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863132�$%*+9�6
/�,
"�
input_17���������
p 

 
� "]�Z
�
0���������d
;�8
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 �
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863206�$%*+9�6
/�,
"�
input_17���������
p

 
� "]�Z
�
0���������d
;�8
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 �
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863409�$%*+7�4
-�*
 �
inputs���������
p 

 
� "]�Z
�
0���������d
;�8
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 �
J__inference_sequential_16_layer_call_and_return_conditional_losses_1863509�$%*+7�4
-�*
 �
inputs���������
p

 
� "]�Z
�
0���������d
;�8
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 �
/__inference_sequential_16_layer_call_fn_1862785b$%*+9�6
/�,
"�
input_17���������
p 

 
� "����������d�
/__inference_sequential_16_layer_call_fn_1863058b$%*+9�6
/�,
"�
input_17���������
p

 
� "����������d�
/__inference_sequential_16_layer_call_fn_1863278`$%*+7�4
-�*
 �
inputs���������
p 

 
� "����������d�
/__inference_sequential_16_layer_call_fn_1863309`$%*+7�4
-�*
 �
inputs���������
p

 
� "����������d�
%__inference_signature_wrapper_1863247�$%*+=�:
� 
3�0
.
input_17"�
input_17���������"5�2
0
	dense_101#� 
	dense_101���������d