��
��
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02unknown8��
z
hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namehidden_1/kernel
s
#hidden_1/kernel/Read/ReadVariableOpReadVariableOphidden_1/kernel*
_output_shapes

:2*
dtype0
r
hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namehidden_1/bias
k
!hidden_1/bias/Read/ReadVariableOpReadVariableOphidden_1/bias*
_output_shapes
:2*
dtype0
z
hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22* 
shared_namehidden_2/kernel
s
#hidden_2/kernel/Read/ReadVariableOpReadVariableOphidden_2/kernel*
_output_shapes

:22*
dtype0
r
hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namehidden_2/bias
k
!hidden_2/bias/Read/ReadVariableOpReadVariableOphidden_2/bias*
_output_shapes
:2*
dtype0
~
bottleneck/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*"
shared_namebottleneck/kernel
w
%bottleneck/kernel/Read/ReadVariableOpReadVariableOpbottleneck/kernel*
_output_shapes

:2*
dtype0
�
branch_1_hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*)
shared_namebranch_1_hidden_1/kernel
�
,branch_1_hidden_1/kernel/Read/ReadVariableOpReadVariableOpbranch_1_hidden_1/kernel*
_output_shapes
:	�*
dtype0
�
branch_1_hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_namebranch_1_hidden_1/bias
~
*branch_1_hidden_1/bias/Read/ReadVariableOpReadVariableOpbranch_1_hidden_1/bias*
_output_shapes	
:�*
dtype0
�
branch_1_hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_namebranch_1_hidden_2/kernel
�
,branch_1_hidden_2/kernel/Read/ReadVariableOpReadVariableOpbranch_1_hidden_2/kernel* 
_output_shapes
:
��*
dtype0
�
branch_1_hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_namebranch_1_hidden_2/bias
~
*branch_1_hidden_2/bias/Read/ReadVariableOpReadVariableOpbranch_1_hidden_2/bias*
_output_shapes	
:�*
dtype0
�
branch_1_hidden_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_namebranch_1_hidden_3/kernel
�
,branch_1_hidden_3/kernel/Read/ReadVariableOpReadVariableOpbranch_1_hidden_3/kernel* 
_output_shapes
:
��*
dtype0
�
branch_1_hidden_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_namebranch_1_hidden_3/bias
~
*branch_1_hidden_3/bias/Read/ReadVariableOpReadVariableOpbranch_1_hidden_3/bias*
_output_shapes	
:�*
dtype0
�
branch_1_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_namebranch_1_output/kernel
�
*branch_1_output/kernel/Read/ReadVariableOpReadVariableOpbranch_1_output/kernel* 
_output_shapes
:
��*
dtype0
�
branch_1_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_namebranch_1_output/bias
z
(branch_1_output/bias/Read/ReadVariableOpReadVariableOpbranch_1_output/bias*
_output_shapes	
:�*
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
Adam/hidden_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/hidden_1/kernel/m
�
*Adam/hidden_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_1/kernel/m*
_output_shapes

:2*
dtype0
�
Adam/hidden_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/hidden_1/bias/m
y
(Adam/hidden_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_1/bias/m*
_output_shapes
:2*
dtype0
�
Adam/hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/hidden_2/kernel/m
�
*Adam/hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_2/kernel/m*
_output_shapes

:22*
dtype0
�
Adam/hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/hidden_2/bias/m
y
(Adam/hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_2/bias/m*
_output_shapes
:2*
dtype0
�
Adam/bottleneck/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/bottleneck/kernel/m
�
,Adam/bottleneck/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bottleneck/kernel/m*
_output_shapes

:2*
dtype0
�
Adam/branch_1_hidden_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*0
shared_name!Adam/branch_1_hidden_1/kernel/m
�
3Adam/branch_1_hidden_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_1/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/branch_1_hidden_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/branch_1_hidden_1/bias/m
�
1Adam/branch_1_hidden_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/branch_1_hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*0
shared_name!Adam/branch_1_hidden_2/kernel/m
�
3Adam/branch_1_hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_2/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/branch_1_hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/branch_1_hidden_2/bias/m
�
1Adam/branch_1_hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/branch_1_hidden_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*0
shared_name!Adam/branch_1_hidden_3/kernel/m
�
3Adam/branch_1_hidden_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_3/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/branch_1_hidden_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/branch_1_hidden_3/bias/m
�
1Adam/branch_1_hidden_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_3/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/branch_1_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/branch_1_output/kernel/m
�
1Adam/branch_1_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_output/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/branch_1_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/branch_1_output/bias/m
�
/Adam/branch_1_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/branch_1_output/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/hidden_1/kernel/v
�
*Adam/hidden_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_1/kernel/v*
_output_shapes

:2*
dtype0
�
Adam/hidden_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/hidden_1/bias/v
y
(Adam/hidden_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_1/bias/v*
_output_shapes
:2*
dtype0
�
Adam/hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*'
shared_nameAdam/hidden_2/kernel/v
�
*Adam/hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_2/kernel/v*
_output_shapes

:22*
dtype0
�
Adam/hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/hidden_2/bias/v
y
(Adam/hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_2/bias/v*
_output_shapes
:2*
dtype0
�
Adam/bottleneck/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*)
shared_nameAdam/bottleneck/kernel/v
�
,Adam/bottleneck/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bottleneck/kernel/v*
_output_shapes

:2*
dtype0
�
Adam/branch_1_hidden_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*0
shared_name!Adam/branch_1_hidden_1/kernel/v
�
3Adam/branch_1_hidden_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_1/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/branch_1_hidden_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/branch_1_hidden_1/bias/v
�
1Adam/branch_1_hidden_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/branch_1_hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*0
shared_name!Adam/branch_1_hidden_2/kernel/v
�
3Adam/branch_1_hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_2/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/branch_1_hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/branch_1_hidden_2/bias/v
�
1Adam/branch_1_hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_2/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/branch_1_hidden_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*0
shared_name!Adam/branch_1_hidden_3/kernel/v
�
3Adam/branch_1_hidden_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_3/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/branch_1_hidden_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/branch_1_hidden_3/bias/v
�
1Adam/branch_1_hidden_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_hidden_3/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/branch_1_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/branch_1_output/kernel/v
�
1Adam/branch_1_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_output/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/branch_1_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/branch_1_output/bias/v
�
/Adam/branch_1_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/branch_1_output/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�F
value�FB�F B�F
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		optimizer

loss
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
^

kernel
regularization_losses
trainable_variables
	variables
 	keras_api
h

!kernel
"bias
#regularization_losses
$trainable_variables
%	variables
&	keras_api
h

'kernel
(bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
h

-kernel
.bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
h

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
�
9iter

:beta_1

;beta_2
	<decay
=learning_ratemqmrmsmtmu!mv"mw'mx(my-mz.m{3m|4m}v~vv�v�v�!v�"v�'v�(v�-v�.v�3v�4v�
 
 
^
0
1
2
3
4
!5
"6
'7
(8
-9
.10
311
412
^
0
1
2
3
4
!5
"6
'7
(8
-9
.10
311
412
�
>layer_regularization_losses
regularization_losses
trainable_variables
?metrics
@non_trainable_variables
Alayer_metrics
	variables

Blayers
 
[Y
VARIABLE_VALUEhidden_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEhidden_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
Clayer_regularization_losses
regularization_losses
trainable_variables
Dmetrics
Enon_trainable_variables
Flayer_metrics
	variables

Glayers
[Y
VARIABLE_VALUEhidden_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEhidden_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
Hlayer_regularization_losses
regularization_losses
trainable_variables
Imetrics
Jnon_trainable_variables
Klayer_metrics
	variables

Llayers
][
VARIABLE_VALUEbottleneck/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
�
Mlayer_regularization_losses
regularization_losses
trainable_variables
Nmetrics
Onon_trainable_variables
Player_metrics
	variables

Qlayers
db
VARIABLE_VALUEbranch_1_hidden_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbranch_1_hidden_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
�
Rlayer_regularization_losses
#regularization_losses
$trainable_variables
Smetrics
Tnon_trainable_variables
Ulayer_metrics
%	variables

Vlayers
db
VARIABLE_VALUEbranch_1_hidden_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbranch_1_hidden_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
�
Wlayer_regularization_losses
)regularization_losses
*trainable_variables
Xmetrics
Ynon_trainable_variables
Zlayer_metrics
+	variables

[layers
db
VARIABLE_VALUEbranch_1_hidden_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbranch_1_hidden_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

-0
.1
�
\layer_regularization_losses
/regularization_losses
0trainable_variables
]metrics
^non_trainable_variables
_layer_metrics
1	variables

`layers
b`
VARIABLE_VALUEbranch_1_output/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEbranch_1_output/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
�
alayer_regularization_losses
5regularization_losses
6trainable_variables
bmetrics
cnon_trainable_variables
dlayer_metrics
7	variables

elayers
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
 

f0
g1
 
 
8
0
1
2
3
4
5
6
7
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
 
 
 
4
	htotal
	icount
j	variables
k	keras_api
D
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

j	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

o	variables
~|
VARIABLE_VALUEAdam/hidden_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/hidden_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/hidden_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/hidden_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/bottleneck/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_output/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/branch_1_output/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/hidden_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/hidden_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/hidden_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/hidden_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/bottleneck/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_hidden_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/branch_1_output/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/branch_1_output/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_input_layerPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerhidden_1/kernelhidden_1/biashidden_2/kernelhidden_2/biasbottleneck/kernelbranch_1_hidden_1/kernelbranch_1_hidden_1/biasbranch_1_hidden_2/kernelbranch_1_hidden_2/biasbranch_1_hidden_3/kernelbranch_1_hidden_3/biasbranch_1_output/kernelbranch_1_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_5159676
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#hidden_1/kernel/Read/ReadVariableOp!hidden_1/bias/Read/ReadVariableOp#hidden_2/kernel/Read/ReadVariableOp!hidden_2/bias/Read/ReadVariableOp%bottleneck/kernel/Read/ReadVariableOp,branch_1_hidden_1/kernel/Read/ReadVariableOp*branch_1_hidden_1/bias/Read/ReadVariableOp,branch_1_hidden_2/kernel/Read/ReadVariableOp*branch_1_hidden_2/bias/Read/ReadVariableOp,branch_1_hidden_3/kernel/Read/ReadVariableOp*branch_1_hidden_3/bias/Read/ReadVariableOp*branch_1_output/kernel/Read/ReadVariableOp(branch_1_output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/hidden_1/kernel/m/Read/ReadVariableOp(Adam/hidden_1/bias/m/Read/ReadVariableOp*Adam/hidden_2/kernel/m/Read/ReadVariableOp(Adam/hidden_2/bias/m/Read/ReadVariableOp,Adam/bottleneck/kernel/m/Read/ReadVariableOp3Adam/branch_1_hidden_1/kernel/m/Read/ReadVariableOp1Adam/branch_1_hidden_1/bias/m/Read/ReadVariableOp3Adam/branch_1_hidden_2/kernel/m/Read/ReadVariableOp1Adam/branch_1_hidden_2/bias/m/Read/ReadVariableOp3Adam/branch_1_hidden_3/kernel/m/Read/ReadVariableOp1Adam/branch_1_hidden_3/bias/m/Read/ReadVariableOp1Adam/branch_1_output/kernel/m/Read/ReadVariableOp/Adam/branch_1_output/bias/m/Read/ReadVariableOp*Adam/hidden_1/kernel/v/Read/ReadVariableOp(Adam/hidden_1/bias/v/Read/ReadVariableOp*Adam/hidden_2/kernel/v/Read/ReadVariableOp(Adam/hidden_2/bias/v/Read/ReadVariableOp,Adam/bottleneck/kernel/v/Read/ReadVariableOp3Adam/branch_1_hidden_1/kernel/v/Read/ReadVariableOp1Adam/branch_1_hidden_1/bias/v/Read/ReadVariableOp3Adam/branch_1_hidden_2/kernel/v/Read/ReadVariableOp1Adam/branch_1_hidden_2/bias/v/Read/ReadVariableOp3Adam/branch_1_hidden_3/kernel/v/Read/ReadVariableOp1Adam/branch_1_hidden_3/bias/v/Read/ReadVariableOp1Adam/branch_1_output/kernel/v/Read/ReadVariableOp/Adam/branch_1_output/bias/v/Read/ReadVariableOpConst*=
Tin6
422	*
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
 __inference__traced_save_5160364
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamehidden_1/kernelhidden_1/biashidden_2/kernelhidden_2/biasbottleneck/kernelbranch_1_hidden_1/kernelbranch_1_hidden_1/biasbranch_1_hidden_2/kernelbranch_1_hidden_2/biasbranch_1_hidden_3/kernelbranch_1_hidden_3/biasbranch_1_output/kernelbranch_1_output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/hidden_1/kernel/mAdam/hidden_1/bias/mAdam/hidden_2/kernel/mAdam/hidden_2/bias/mAdam/bottleneck/kernel/mAdam/branch_1_hidden_1/kernel/mAdam/branch_1_hidden_1/bias/mAdam/branch_1_hidden_2/kernel/mAdam/branch_1_hidden_2/bias/mAdam/branch_1_hidden_3/kernel/mAdam/branch_1_hidden_3/bias/mAdam/branch_1_output/kernel/mAdam/branch_1_output/bias/mAdam/hidden_1/kernel/vAdam/hidden_1/bias/vAdam/hidden_2/kernel/vAdam/hidden_2/bias/vAdam/bottleneck/kernel/vAdam/branch_1_hidden_1/kernel/vAdam/branch_1_hidden_1/bias/vAdam/branch_1_hidden_2/kernel/vAdam/branch_1_hidden_2/bias/vAdam/branch_1_hidden_3/kernel/vAdam/branch_1_hidden_3/bias/vAdam/branch_1_output/kernel/vAdam/branch_1_output/bias/v*<
Tin5
321*
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
#__inference__traced_restore_5160518��
�
�
R__inference_branch_1_hidden_2_layer_call_and_return_all_conditional_losses_5160083

inputs
unknown:
��
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_51590302
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_2_activity_regularizer_51589072
PartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

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
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
Q
:__inference_branch_1_hidden_3_activity_regularizer_5158920
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
�
H
1__inference_hidden_2_activity_regularizer_5158881
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
��
�
"__inference__wrapped_model_5158855
input_layerB
0model_38_hidden_1_matmul_readvariableop_resource:2?
1model_38_hidden_1_biasadd_readvariableop_resource:2B
0model_38_hidden_2_matmul_readvariableop_resource:22?
1model_38_hidden_2_biasadd_readvariableop_resource:2D
2model_38_bottleneck_matmul_readvariableop_resource:2L
9model_38_branch_1_hidden_1_matmul_readvariableop_resource:	�I
:model_38_branch_1_hidden_1_biasadd_readvariableop_resource:	�M
9model_38_branch_1_hidden_2_matmul_readvariableop_resource:
��I
:model_38_branch_1_hidden_2_biasadd_readvariableop_resource:	�M
9model_38_branch_1_hidden_3_matmul_readvariableop_resource:
��I
:model_38_branch_1_hidden_3_biasadd_readvariableop_resource:	�K
7model_38_branch_1_output_matmul_readvariableop_resource:
��G
8model_38_branch_1_output_biasadd_readvariableop_resource:	�
identity��)model_38/bottleneck/MatMul/ReadVariableOp�1model_38/branch_1_hidden_1/BiasAdd/ReadVariableOp�0model_38/branch_1_hidden_1/MatMul/ReadVariableOp�1model_38/branch_1_hidden_2/BiasAdd/ReadVariableOp�0model_38/branch_1_hidden_2/MatMul/ReadVariableOp�1model_38/branch_1_hidden_3/BiasAdd/ReadVariableOp�0model_38/branch_1_hidden_3/MatMul/ReadVariableOp�/model_38/branch_1_output/BiasAdd/ReadVariableOp�.model_38/branch_1_output/MatMul/ReadVariableOp�(model_38/hidden_1/BiasAdd/ReadVariableOp�'model_38/hidden_1/MatMul/ReadVariableOp�(model_38/hidden_2/BiasAdd/ReadVariableOp�'model_38/hidden_2/MatMul/ReadVariableOp�
'model_38/hidden_1/MatMul/ReadVariableOpReadVariableOp0model_38_hidden_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02)
'model_38/hidden_1/MatMul/ReadVariableOp�
model_38/hidden_1/MatMulMatMulinput_layer/model_38/hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
model_38/hidden_1/MatMul�
(model_38/hidden_1/BiasAdd/ReadVariableOpReadVariableOp1model_38_hidden_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_38/hidden_1/BiasAdd/ReadVariableOp�
model_38/hidden_1/BiasAddBiasAdd"model_38/hidden_1/MatMul:product:00model_38/hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
model_38/hidden_1/BiasAdd�
model_38/hidden_1/ReluRelu"model_38/hidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������22
model_38/hidden_1/Relu�
,model_38/hidden_1/ActivityRegularizer/SquareSquare$model_38/hidden_1/Relu:activations:0*
T0*'
_output_shapes
:���������22.
,model_38/hidden_1/ActivityRegularizer/Square�
+model_38/hidden_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+model_38/hidden_1/ActivityRegularizer/Const�
)model_38/hidden_1/ActivityRegularizer/SumSum0model_38/hidden_1/ActivityRegularizer/Square:y:04model_38/hidden_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)model_38/hidden_1/ActivityRegularizer/Sum�
+model_38/hidden_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+model_38/hidden_1/ActivityRegularizer/mul/x�
)model_38/hidden_1/ActivityRegularizer/mulMul4model_38/hidden_1/ActivityRegularizer/mul/x:output:02model_38/hidden_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)model_38/hidden_1/ActivityRegularizer/mul�
+model_38/hidden_1/ActivityRegularizer/ShapeShape$model_38/hidden_1/Relu:activations:0*
T0*
_output_shapes
:2-
+model_38/hidden_1/ActivityRegularizer/Shape�
9model_38/hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model_38/hidden_1/ActivityRegularizer/strided_slice/stack�
;model_38/hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model_38/hidden_1/ActivityRegularizer/strided_slice/stack_1�
;model_38/hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model_38/hidden_1/ActivityRegularizer/strided_slice/stack_2�
3model_38/hidden_1/ActivityRegularizer/strided_sliceStridedSlice4model_38/hidden_1/ActivityRegularizer/Shape:output:0Bmodel_38/hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dmodel_38/hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dmodel_38/hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model_38/hidden_1/ActivityRegularizer/strided_slice�
*model_38/hidden_1/ActivityRegularizer/CastCast<model_38/hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*model_38/hidden_1/ActivityRegularizer/Cast�
-model_38/hidden_1/ActivityRegularizer/truedivRealDiv-model_38/hidden_1/ActivityRegularizer/mul:z:0.model_38/hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-model_38/hidden_1/ActivityRegularizer/truediv�
'model_38/hidden_2/MatMul/ReadVariableOpReadVariableOp0model_38_hidden_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02)
'model_38/hidden_2/MatMul/ReadVariableOp�
model_38/hidden_2/MatMulMatMul$model_38/hidden_1/Relu:activations:0/model_38/hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
model_38/hidden_2/MatMul�
(model_38/hidden_2/BiasAdd/ReadVariableOpReadVariableOp1model_38_hidden_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02*
(model_38/hidden_2/BiasAdd/ReadVariableOp�
model_38/hidden_2/BiasAddBiasAdd"model_38/hidden_2/MatMul:product:00model_38/hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
model_38/hidden_2/BiasAdd�
model_38/hidden_2/ReluRelu"model_38/hidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������22
model_38/hidden_2/Relu�
,model_38/hidden_2/ActivityRegularizer/SquareSquare$model_38/hidden_2/Relu:activations:0*
T0*'
_output_shapes
:���������22.
,model_38/hidden_2/ActivityRegularizer/Square�
+model_38/hidden_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+model_38/hidden_2/ActivityRegularizer/Const�
)model_38/hidden_2/ActivityRegularizer/SumSum0model_38/hidden_2/ActivityRegularizer/Square:y:04model_38/hidden_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)model_38/hidden_2/ActivityRegularizer/Sum�
+model_38/hidden_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+model_38/hidden_2/ActivityRegularizer/mul/x�
)model_38/hidden_2/ActivityRegularizer/mulMul4model_38/hidden_2/ActivityRegularizer/mul/x:output:02model_38/hidden_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)model_38/hidden_2/ActivityRegularizer/mul�
+model_38/hidden_2/ActivityRegularizer/ShapeShape$model_38/hidden_2/Relu:activations:0*
T0*
_output_shapes
:2-
+model_38/hidden_2/ActivityRegularizer/Shape�
9model_38/hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model_38/hidden_2/ActivityRegularizer/strided_slice/stack�
;model_38/hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model_38/hidden_2/ActivityRegularizer/strided_slice/stack_1�
;model_38/hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model_38/hidden_2/ActivityRegularizer/strided_slice/stack_2�
3model_38/hidden_2/ActivityRegularizer/strided_sliceStridedSlice4model_38/hidden_2/ActivityRegularizer/Shape:output:0Bmodel_38/hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dmodel_38/hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dmodel_38/hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model_38/hidden_2/ActivityRegularizer/strided_slice�
*model_38/hidden_2/ActivityRegularizer/CastCast<model_38/hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*model_38/hidden_2/ActivityRegularizer/Cast�
-model_38/hidden_2/ActivityRegularizer/truedivRealDiv-model_38/hidden_2/ActivityRegularizer/mul:z:0.model_38/hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-model_38/hidden_2/ActivityRegularizer/truediv�
)model_38/bottleneck/MatMul/ReadVariableOpReadVariableOp2model_38_bottleneck_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02+
)model_38/bottleneck/MatMul/ReadVariableOp�
model_38/bottleneck/MatMulMatMul$model_38/hidden_2/Relu:activations:01model_38/bottleneck/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_38/bottleneck/MatMul�
0model_38/branch_1_hidden_1/MatMul/ReadVariableOpReadVariableOp9model_38_branch_1_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype022
0model_38/branch_1_hidden_1/MatMul/ReadVariableOp�
!model_38/branch_1_hidden_1/MatMulMatMul$model_38/bottleneck/MatMul:product:08model_38/branch_1_hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!model_38/branch_1_hidden_1/MatMul�
1model_38/branch_1_hidden_1/BiasAdd/ReadVariableOpReadVariableOp:model_38_branch_1_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype023
1model_38/branch_1_hidden_1/BiasAdd/ReadVariableOp�
"model_38/branch_1_hidden_1/BiasAddBiasAdd+model_38/branch_1_hidden_1/MatMul:product:09model_38/branch_1_hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"model_38/branch_1_hidden_1/BiasAdd�
model_38/branch_1_hidden_1/ReluRelu+model_38/branch_1_hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2!
model_38/branch_1_hidden_1/Relu�
5model_38/branch_1_hidden_1/ActivityRegularizer/SquareSquare-model_38/branch_1_hidden_1/Relu:activations:0*
T0*(
_output_shapes
:����������27
5model_38/branch_1_hidden_1/ActivityRegularizer/Square�
4model_38/branch_1_hidden_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_38/branch_1_hidden_1/ActivityRegularizer/Const�
2model_38/branch_1_hidden_1/ActivityRegularizer/SumSum9model_38/branch_1_hidden_1/ActivityRegularizer/Square:y:0=model_38/branch_1_hidden_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 24
2model_38/branch_1_hidden_1/ActivityRegularizer/Sum�
4model_38/branch_1_hidden_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4model_38/branch_1_hidden_1/ActivityRegularizer/mul/x�
2model_38/branch_1_hidden_1/ActivityRegularizer/mulMul=model_38/branch_1_hidden_1/ActivityRegularizer/mul/x:output:0;model_38/branch_1_hidden_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 24
2model_38/branch_1_hidden_1/ActivityRegularizer/mul�
4model_38/branch_1_hidden_1/ActivityRegularizer/ShapeShape-model_38/branch_1_hidden_1/Relu:activations:0*
T0*
_output_shapes
:26
4model_38/branch_1_hidden_1/ActivityRegularizer/Shape�
Bmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
Dmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
Dmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
<model_38/branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice=model_38/branch_1_hidden_1/ActivityRegularizer/Shape:output:0Kmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Mmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Mmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<model_38/branch_1_hidden_1/ActivityRegularizer/strided_slice�
3model_38/branch_1_hidden_1/ActivityRegularizer/CastCastEmodel_38/branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 25
3model_38/branch_1_hidden_1/ActivityRegularizer/Cast�
6model_38/branch_1_hidden_1/ActivityRegularizer/truedivRealDiv6model_38/branch_1_hidden_1/ActivityRegularizer/mul:z:07model_38/branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 28
6model_38/branch_1_hidden_1/ActivityRegularizer/truediv�
0model_38/branch_1_hidden_2/MatMul/ReadVariableOpReadVariableOp9model_38_branch_1_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype022
0model_38/branch_1_hidden_2/MatMul/ReadVariableOp�
!model_38/branch_1_hidden_2/MatMulMatMul-model_38/branch_1_hidden_1/Relu:activations:08model_38/branch_1_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!model_38/branch_1_hidden_2/MatMul�
1model_38/branch_1_hidden_2/BiasAdd/ReadVariableOpReadVariableOp:model_38_branch_1_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype023
1model_38/branch_1_hidden_2/BiasAdd/ReadVariableOp�
"model_38/branch_1_hidden_2/BiasAddBiasAdd+model_38/branch_1_hidden_2/MatMul:product:09model_38/branch_1_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"model_38/branch_1_hidden_2/BiasAdd�
model_38/branch_1_hidden_2/ReluRelu+model_38/branch_1_hidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2!
model_38/branch_1_hidden_2/Relu�
5model_38/branch_1_hidden_2/ActivityRegularizer/SquareSquare-model_38/branch_1_hidden_2/Relu:activations:0*
T0*(
_output_shapes
:����������27
5model_38/branch_1_hidden_2/ActivityRegularizer/Square�
4model_38/branch_1_hidden_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_38/branch_1_hidden_2/ActivityRegularizer/Const�
2model_38/branch_1_hidden_2/ActivityRegularizer/SumSum9model_38/branch_1_hidden_2/ActivityRegularizer/Square:y:0=model_38/branch_1_hidden_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 24
2model_38/branch_1_hidden_2/ActivityRegularizer/Sum�
4model_38/branch_1_hidden_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4model_38/branch_1_hidden_2/ActivityRegularizer/mul/x�
2model_38/branch_1_hidden_2/ActivityRegularizer/mulMul=model_38/branch_1_hidden_2/ActivityRegularizer/mul/x:output:0;model_38/branch_1_hidden_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 24
2model_38/branch_1_hidden_2/ActivityRegularizer/mul�
4model_38/branch_1_hidden_2/ActivityRegularizer/ShapeShape-model_38/branch_1_hidden_2/Relu:activations:0*
T0*
_output_shapes
:26
4model_38/branch_1_hidden_2/ActivityRegularizer/Shape�
Bmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
Dmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
Dmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
<model_38/branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice=model_38/branch_1_hidden_2/ActivityRegularizer/Shape:output:0Kmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Mmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Mmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<model_38/branch_1_hidden_2/ActivityRegularizer/strided_slice�
3model_38/branch_1_hidden_2/ActivityRegularizer/CastCastEmodel_38/branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 25
3model_38/branch_1_hidden_2/ActivityRegularizer/Cast�
6model_38/branch_1_hidden_2/ActivityRegularizer/truedivRealDiv6model_38/branch_1_hidden_2/ActivityRegularizer/mul:z:07model_38/branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 28
6model_38/branch_1_hidden_2/ActivityRegularizer/truediv�
0model_38/branch_1_hidden_3/MatMul/ReadVariableOpReadVariableOp9model_38_branch_1_hidden_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype022
0model_38/branch_1_hidden_3/MatMul/ReadVariableOp�
!model_38/branch_1_hidden_3/MatMulMatMul-model_38/branch_1_hidden_2/Relu:activations:08model_38/branch_1_hidden_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!model_38/branch_1_hidden_3/MatMul�
1model_38/branch_1_hidden_3/BiasAdd/ReadVariableOpReadVariableOp:model_38_branch_1_hidden_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype023
1model_38/branch_1_hidden_3/BiasAdd/ReadVariableOp�
"model_38/branch_1_hidden_3/BiasAddBiasAdd+model_38/branch_1_hidden_3/MatMul:product:09model_38/branch_1_hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"model_38/branch_1_hidden_3/BiasAdd�
model_38/branch_1_hidden_3/ReluRelu+model_38/branch_1_hidden_3/BiasAdd:output:0*
T0*(
_output_shapes
:����������2!
model_38/branch_1_hidden_3/Relu�
5model_38/branch_1_hidden_3/ActivityRegularizer/SquareSquare-model_38/branch_1_hidden_3/Relu:activations:0*
T0*(
_output_shapes
:����������27
5model_38/branch_1_hidden_3/ActivityRegularizer/Square�
4model_38/branch_1_hidden_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_38/branch_1_hidden_3/ActivityRegularizer/Const�
2model_38/branch_1_hidden_3/ActivityRegularizer/SumSum9model_38/branch_1_hidden_3/ActivityRegularizer/Square:y:0=model_38/branch_1_hidden_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 24
2model_38/branch_1_hidden_3/ActivityRegularizer/Sum�
4model_38/branch_1_hidden_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4model_38/branch_1_hidden_3/ActivityRegularizer/mul/x�
2model_38/branch_1_hidden_3/ActivityRegularizer/mulMul=model_38/branch_1_hidden_3/ActivityRegularizer/mul/x:output:0;model_38/branch_1_hidden_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 24
2model_38/branch_1_hidden_3/ActivityRegularizer/mul�
4model_38/branch_1_hidden_3/ActivityRegularizer/ShapeShape-model_38/branch_1_hidden_3/Relu:activations:0*
T0*
_output_shapes
:26
4model_38/branch_1_hidden_3/ActivityRegularizer/Shape�
Bmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
Dmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
Dmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
<model_38/branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice=model_38/branch_1_hidden_3/ActivityRegularizer/Shape:output:0Kmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Mmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Mmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<model_38/branch_1_hidden_3/ActivityRegularizer/strided_slice�
3model_38/branch_1_hidden_3/ActivityRegularizer/CastCastEmodel_38/branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 25
3model_38/branch_1_hidden_3/ActivityRegularizer/Cast�
6model_38/branch_1_hidden_3/ActivityRegularizer/truedivRealDiv6model_38/branch_1_hidden_3/ActivityRegularizer/mul:z:07model_38/branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 28
6model_38/branch_1_hidden_3/ActivityRegularizer/truediv�
.model_38/branch_1_output/MatMul/ReadVariableOpReadVariableOp7model_38_branch_1_output_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype020
.model_38/branch_1_output/MatMul/ReadVariableOp�
model_38/branch_1_output/MatMulMatMul-model_38/branch_1_hidden_3/Relu:activations:06model_38/branch_1_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
model_38/branch_1_output/MatMul�
/model_38/branch_1_output/BiasAdd/ReadVariableOpReadVariableOp8model_38_branch_1_output_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/model_38/branch_1_output/BiasAdd/ReadVariableOp�
 model_38/branch_1_output/BiasAddBiasAdd)model_38/branch_1_output/MatMul:product:07model_38/branch_1_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 model_38/branch_1_output/BiasAdd�
IdentityIdentity)model_38/branch_1_output/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity�
NoOpNoOp*^model_38/bottleneck/MatMul/ReadVariableOp2^model_38/branch_1_hidden_1/BiasAdd/ReadVariableOp1^model_38/branch_1_hidden_1/MatMul/ReadVariableOp2^model_38/branch_1_hidden_2/BiasAdd/ReadVariableOp1^model_38/branch_1_hidden_2/MatMul/ReadVariableOp2^model_38/branch_1_hidden_3/BiasAdd/ReadVariableOp1^model_38/branch_1_hidden_3/MatMul/ReadVariableOp0^model_38/branch_1_output/BiasAdd/ReadVariableOp/^model_38/branch_1_output/MatMul/ReadVariableOp)^model_38/hidden_1/BiasAdd/ReadVariableOp(^model_38/hidden_1/MatMul/ReadVariableOp)^model_38/hidden_2/BiasAdd/ReadVariableOp(^model_38/hidden_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2V
)model_38/bottleneck/MatMul/ReadVariableOp)model_38/bottleneck/MatMul/ReadVariableOp2f
1model_38/branch_1_hidden_1/BiasAdd/ReadVariableOp1model_38/branch_1_hidden_1/BiasAdd/ReadVariableOp2d
0model_38/branch_1_hidden_1/MatMul/ReadVariableOp0model_38/branch_1_hidden_1/MatMul/ReadVariableOp2f
1model_38/branch_1_hidden_2/BiasAdd/ReadVariableOp1model_38/branch_1_hidden_2/BiasAdd/ReadVariableOp2d
0model_38/branch_1_hidden_2/MatMul/ReadVariableOp0model_38/branch_1_hidden_2/MatMul/ReadVariableOp2f
1model_38/branch_1_hidden_3/BiasAdd/ReadVariableOp1model_38/branch_1_hidden_3/BiasAdd/ReadVariableOp2d
0model_38/branch_1_hidden_3/MatMul/ReadVariableOp0model_38/branch_1_hidden_3/MatMul/ReadVariableOp2b
/model_38/branch_1_output/BiasAdd/ReadVariableOp/model_38/branch_1_output/BiasAdd/ReadVariableOp2`
.model_38/branch_1_output/MatMul/ReadVariableOp.model_38/branch_1_output/MatMul/ReadVariableOp2T
(model_38/hidden_1/BiasAdd/ReadVariableOp(model_38/hidden_1/BiasAdd/ReadVariableOp2R
'model_38/hidden_1/MatMul/ReadVariableOp'model_38/hidden_1/MatMul/ReadVariableOp2T
(model_38/hidden_2/BiasAdd/ReadVariableOp(model_38/hidden_2/BiasAdd/ReadVariableOp2R
'model_38/hidden_2/MatMul/ReadVariableOp'model_38/hidden_2/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
E__inference_model_38_layer_call_and_return_conditional_losses_5159914

inputs9
'hidden_1_matmul_readvariableop_resource:26
(hidden_1_biasadd_readvariableop_resource:29
'hidden_2_matmul_readvariableop_resource:226
(hidden_2_biasadd_readvariableop_resource:2;
)bottleneck_matmul_readvariableop_resource:2C
0branch_1_hidden_1_matmul_readvariableop_resource:	�@
1branch_1_hidden_1_biasadd_readvariableop_resource:	�D
0branch_1_hidden_2_matmul_readvariableop_resource:
��@
1branch_1_hidden_2_biasadd_readvariableop_resource:	�D
0branch_1_hidden_3_matmul_readvariableop_resource:
��@
1branch_1_hidden_3_biasadd_readvariableop_resource:	�B
.branch_1_output_matmul_readvariableop_resource:
��>
/branch_1_output_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2

identity_3

identity_4

identity_5�� bottleneck/MatMul/ReadVariableOp�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�(branch_1_hidden_1/BiasAdd/ReadVariableOp�'branch_1_hidden_1/MatMul/ReadVariableOp�(branch_1_hidden_2/BiasAdd/ReadVariableOp�'branch_1_hidden_2/MatMul/ReadVariableOp�(branch_1_hidden_3/BiasAdd/ReadVariableOp�'branch_1_hidden_3/MatMul/ReadVariableOp�&branch_1_output/BiasAdd/ReadVariableOp�%branch_1_output/MatMul/ReadVariableOp�hidden_1/BiasAdd/ReadVariableOp�hidden_1/MatMul/ReadVariableOp�hidden_2/BiasAdd/ReadVariableOp�hidden_2/MatMul/ReadVariableOp�
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
hidden_1/MatMul/ReadVariableOp�
hidden_1/MatMulMatMulinputs&hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_1/MatMul�
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
hidden_1/BiasAdd/ReadVariableOp�
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_1/BiasAdds
hidden_1/ReluReluhidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������22
hidden_1/Relu�
#hidden_1/ActivityRegularizer/SquareSquarehidden_1/Relu:activations:0*
T0*'
_output_shapes
:���������22%
#hidden_1/ActivityRegularizer/Square�
"hidden_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"hidden_1/ActivityRegularizer/Const�
 hidden_1/ActivityRegularizer/SumSum'hidden_1/ActivityRegularizer/Square:y:0+hidden_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 hidden_1/ActivityRegularizer/Sum�
"hidden_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"hidden_1/ActivityRegularizer/mul/x�
 hidden_1/ActivityRegularizer/mulMul+hidden_1/ActivityRegularizer/mul/x:output:0)hidden_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 hidden_1/ActivityRegularizer/mul�
"hidden_1/ActivityRegularizer/ShapeShapehidden_1/Relu:activations:0*
T0*
_output_shapes
:2$
"hidden_1/ActivityRegularizer/Shape�
0hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_1/ActivityRegularizer/strided_slice/stack�
2hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_1�
2hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_2�
*hidden_1/ActivityRegularizer/strided_sliceStridedSlice+hidden_1/ActivityRegularizer/Shape:output:09hidden_1/ActivityRegularizer/strided_slice/stack:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_1/ActivityRegularizer/strided_slice�
!hidden_1/ActivityRegularizer/CastCast3hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_1/ActivityRegularizer/Cast�
$hidden_1/ActivityRegularizer/truedivRealDiv$hidden_1/ActivityRegularizer/mul:z:0%hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_1/ActivityRegularizer/truediv�
hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
hidden_2/MatMul/ReadVariableOp�
hidden_2/MatMulMatMulhidden_1/Relu:activations:0&hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_2/MatMul�
hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
hidden_2/BiasAdd/ReadVariableOp�
hidden_2/BiasAddBiasAddhidden_2/MatMul:product:0'hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_2/BiasAdds
hidden_2/ReluReluhidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������22
hidden_2/Relu�
#hidden_2/ActivityRegularizer/SquareSquarehidden_2/Relu:activations:0*
T0*'
_output_shapes
:���������22%
#hidden_2/ActivityRegularizer/Square�
"hidden_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"hidden_2/ActivityRegularizer/Const�
 hidden_2/ActivityRegularizer/SumSum'hidden_2/ActivityRegularizer/Square:y:0+hidden_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 hidden_2/ActivityRegularizer/Sum�
"hidden_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"hidden_2/ActivityRegularizer/mul/x�
 hidden_2/ActivityRegularizer/mulMul+hidden_2/ActivityRegularizer/mul/x:output:0)hidden_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 hidden_2/ActivityRegularizer/mul�
"hidden_2/ActivityRegularizer/ShapeShapehidden_2/Relu:activations:0*
T0*
_output_shapes
:2$
"hidden_2/ActivityRegularizer/Shape�
0hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_2/ActivityRegularizer/strided_slice/stack�
2hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_1�
2hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_2�
*hidden_2/ActivityRegularizer/strided_sliceStridedSlice+hidden_2/ActivityRegularizer/Shape:output:09hidden_2/ActivityRegularizer/strided_slice/stack:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_2/ActivityRegularizer/strided_slice�
!hidden_2/ActivityRegularizer/CastCast3hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_2/ActivityRegularizer/Cast�
$hidden_2/ActivityRegularizer/truedivRealDiv$hidden_2/ActivityRegularizer/mul:z:0%hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_2/ActivityRegularizer/truediv�
 bottleneck/MatMul/ReadVariableOpReadVariableOp)bottleneck_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02"
 bottleneck/MatMul/ReadVariableOp�
bottleneck/MatMulMatMulhidden_2/Relu:activations:0(bottleneck/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
bottleneck/MatMul�
'branch_1_hidden_1/MatMul/ReadVariableOpReadVariableOp0branch_1_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02)
'branch_1_hidden_1/MatMul/ReadVariableOp�
branch_1_hidden_1/MatMulMatMulbottleneck/MatMul:product:0/branch_1_hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_1/MatMul�
(branch_1_hidden_1/BiasAdd/ReadVariableOpReadVariableOp1branch_1_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(branch_1_hidden_1/BiasAdd/ReadVariableOp�
branch_1_hidden_1/BiasAddBiasAdd"branch_1_hidden_1/MatMul:product:00branch_1_hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_1/BiasAdd�
branch_1_hidden_1/ReluRelu"branch_1_hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_1/Relu�
,branch_1_hidden_1/ActivityRegularizer/SquareSquare$branch_1_hidden_1/Relu:activations:0*
T0*(
_output_shapes
:����������2.
,branch_1_hidden_1/ActivityRegularizer/Square�
+branch_1_hidden_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+branch_1_hidden_1/ActivityRegularizer/Const�
)branch_1_hidden_1/ActivityRegularizer/SumSum0branch_1_hidden_1/ActivityRegularizer/Square:y:04branch_1_hidden_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_1/ActivityRegularizer/Sum�
+branch_1_hidden_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+branch_1_hidden_1/ActivityRegularizer/mul/x�
)branch_1_hidden_1/ActivityRegularizer/mulMul4branch_1_hidden_1/ActivityRegularizer/mul/x:output:02branch_1_hidden_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_1/ActivityRegularizer/mul�
+branch_1_hidden_1/ActivityRegularizer/ShapeShape$branch_1_hidden_1/Relu:activations:0*
T0*
_output_shapes
:2-
+branch_1_hidden_1/ActivityRegularizer/Shape�
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_1/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_1/ActivityRegularizer/strided_slice�
*branch_1_hidden_1/ActivityRegularizer/CastCast<branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_1/ActivityRegularizer/Cast�
-branch_1_hidden_1/ActivityRegularizer/truedivRealDiv-branch_1_hidden_1/ActivityRegularizer/mul:z:0.branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_1/ActivityRegularizer/truediv�
'branch_1_hidden_2/MatMul/ReadVariableOpReadVariableOp0branch_1_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'branch_1_hidden_2/MatMul/ReadVariableOp�
branch_1_hidden_2/MatMulMatMul$branch_1_hidden_1/Relu:activations:0/branch_1_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_2/MatMul�
(branch_1_hidden_2/BiasAdd/ReadVariableOpReadVariableOp1branch_1_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(branch_1_hidden_2/BiasAdd/ReadVariableOp�
branch_1_hidden_2/BiasAddBiasAdd"branch_1_hidden_2/MatMul:product:00branch_1_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_2/BiasAdd�
branch_1_hidden_2/ReluRelu"branch_1_hidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_2/Relu�
,branch_1_hidden_2/ActivityRegularizer/SquareSquare$branch_1_hidden_2/Relu:activations:0*
T0*(
_output_shapes
:����������2.
,branch_1_hidden_2/ActivityRegularizer/Square�
+branch_1_hidden_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+branch_1_hidden_2/ActivityRegularizer/Const�
)branch_1_hidden_2/ActivityRegularizer/SumSum0branch_1_hidden_2/ActivityRegularizer/Square:y:04branch_1_hidden_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_2/ActivityRegularizer/Sum�
+branch_1_hidden_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+branch_1_hidden_2/ActivityRegularizer/mul/x�
)branch_1_hidden_2/ActivityRegularizer/mulMul4branch_1_hidden_2/ActivityRegularizer/mul/x:output:02branch_1_hidden_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_2/ActivityRegularizer/mul�
+branch_1_hidden_2/ActivityRegularizer/ShapeShape$branch_1_hidden_2/Relu:activations:0*
T0*
_output_shapes
:2-
+branch_1_hidden_2/ActivityRegularizer/Shape�
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_2/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_2/ActivityRegularizer/strided_slice�
*branch_1_hidden_2/ActivityRegularizer/CastCast<branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_2/ActivityRegularizer/Cast�
-branch_1_hidden_2/ActivityRegularizer/truedivRealDiv-branch_1_hidden_2/ActivityRegularizer/mul:z:0.branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_2/ActivityRegularizer/truediv�
'branch_1_hidden_3/MatMul/ReadVariableOpReadVariableOp0branch_1_hidden_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'branch_1_hidden_3/MatMul/ReadVariableOp�
branch_1_hidden_3/MatMulMatMul$branch_1_hidden_2/Relu:activations:0/branch_1_hidden_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_3/MatMul�
(branch_1_hidden_3/BiasAdd/ReadVariableOpReadVariableOp1branch_1_hidden_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(branch_1_hidden_3/BiasAdd/ReadVariableOp�
branch_1_hidden_3/BiasAddBiasAdd"branch_1_hidden_3/MatMul:product:00branch_1_hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_3/BiasAdd�
branch_1_hidden_3/ReluRelu"branch_1_hidden_3/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_3/Relu�
,branch_1_hidden_3/ActivityRegularizer/SquareSquare$branch_1_hidden_3/Relu:activations:0*
T0*(
_output_shapes
:����������2.
,branch_1_hidden_3/ActivityRegularizer/Square�
+branch_1_hidden_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+branch_1_hidden_3/ActivityRegularizer/Const�
)branch_1_hidden_3/ActivityRegularizer/SumSum0branch_1_hidden_3/ActivityRegularizer/Square:y:04branch_1_hidden_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_3/ActivityRegularizer/Sum�
+branch_1_hidden_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+branch_1_hidden_3/ActivityRegularizer/mul/x�
)branch_1_hidden_3/ActivityRegularizer/mulMul4branch_1_hidden_3/ActivityRegularizer/mul/x:output:02branch_1_hidden_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_3/ActivityRegularizer/mul�
+branch_1_hidden_3/ActivityRegularizer/ShapeShape$branch_1_hidden_3/Relu:activations:0*
T0*
_output_shapes
:2-
+branch_1_hidden_3/ActivityRegularizer/Shape�
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_3/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_3/ActivityRegularizer/strided_slice�
*branch_1_hidden_3/ActivityRegularizer/CastCast<branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_3/ActivityRegularizer/Cast�
-branch_1_hidden_3/ActivityRegularizer/truedivRealDiv-branch_1_hidden_3/ActivityRegularizer/mul:z:0.branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_3/ActivityRegularizer/truediv�
%branch_1_output/MatMul/ReadVariableOpReadVariableOp.branch_1_output_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02'
%branch_1_output/MatMul/ReadVariableOp�
branch_1_output/MatMulMatMul$branch_1_hidden_3/Relu:activations:0-branch_1_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_output/MatMul�
&branch_1_output/BiasAdd/ReadVariableOpReadVariableOp/branch_1_output_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&branch_1_output/BiasAdd/ReadVariableOp�
branch_1_output/BiasAddBiasAdd branch_1_output/MatMul:product:0.branch_1_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_output/BiasAdd�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp)bottleneck_matmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mul|
IdentityIdentity branch_1_output/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityv

Identity_1Identity(hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity1branch_1_hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3

Identity_4Identity1branch_1_hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4

Identity_5Identity1branch_1_hidden_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_5�
NoOpNoOp!^bottleneck/MatMul/ReadVariableOp1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp)^branch_1_hidden_1/BiasAdd/ReadVariableOp(^branch_1_hidden_1/MatMul/ReadVariableOp)^branch_1_hidden_2/BiasAdd/ReadVariableOp(^branch_1_hidden_2/MatMul/ReadVariableOp)^branch_1_hidden_3/BiasAdd/ReadVariableOp(^branch_1_hidden_3/MatMul/ReadVariableOp'^branch_1_output/BiasAdd/ReadVariableOp&^branch_1_output/MatMul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp ^hidden_2/BiasAdd/ReadVariableOp^hidden_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2D
 bottleneck/MatMul/ReadVariableOp bottleneck/MatMul/ReadVariableOp2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp2T
(branch_1_hidden_1/BiasAdd/ReadVariableOp(branch_1_hidden_1/BiasAdd/ReadVariableOp2R
'branch_1_hidden_1/MatMul/ReadVariableOp'branch_1_hidden_1/MatMul/ReadVariableOp2T
(branch_1_hidden_2/BiasAdd/ReadVariableOp(branch_1_hidden_2/BiasAdd/ReadVariableOp2R
'branch_1_hidden_2/MatMul/ReadVariableOp'branch_1_hidden_2/MatMul/ReadVariableOp2T
(branch_1_hidden_3/BiasAdd/ReadVariableOp(branch_1_hidden_3/BiasAdd/ReadVariableOp2R
'branch_1_hidden_3/MatMul/ReadVariableOp'branch_1_hidden_3/MatMul/ReadVariableOp2P
&branch_1_output/BiasAdd/ReadVariableOp&branch_1_output/BiasAdd/ReadVariableOp2N
%branch_1_output/MatMul/ReadVariableOp%branch_1_output/MatMul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2B
hidden_2/BiasAdd/ReadVariableOphidden_2/BiasAdd/ReadVariableOp2@
hidden_2/MatMul/ReadVariableOphidden_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_model_38_layer_call_fn_5159131
input_layer
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:	�
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:
��

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout

2*
_collective_manager_ids
 *2
_output_shapes 
:����������: : : : : */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_38_layer_call_and_return_conditional_losses_51590972
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_5159005

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

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
�
%__inference_signature_wrapper_5159676
input_layer
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:	�
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:
��

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_51588552
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
__inference_loss_fn_0_5160142K
9bottleneck_kernel_regularizer_abs_readvariableop_resource:2
identity��0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9bottleneck_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mulo
IdentityIdentity%bottleneck/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity�
NoOpNoOp1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp
�
�
E__inference_hidden_2_layer_call_and_return_conditional_losses_5158963

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������22
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
E__inference_hidden_1_layer_call_and_return_conditional_losses_5158938

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������22
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_5159030

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_hidden_2_layer_call_fn_5160026

inputs
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_2_layer_call_and_return_conditional_losses_51589632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
3__inference_branch_1_hidden_1_layer_call_fn_5160072

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_51590052
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

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
�
�
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_5160186

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_model_38_layer_call_fn_5159455
input_layer
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:	�
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:
��

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout

2*
_collective_manager_ids
 *2
_output_shapes 
:����������: : : : : */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_38_layer_call_and_return_conditional_losses_51593852
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_5160175

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

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
�
�
G__inference_bottleneck_layer_call_and_return_conditional_losses_5158990

inputs0
matmul_readvariableop_resource:2
identity��MatMul/ReadVariableOp�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^MatMul/ReadVariableOp1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������2: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_5159055

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_hidden_1_layer_call_fn_5160006

inputs
unknown:2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_1_layer_call_and_return_conditional_losses_51589382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_model_38_layer_call_and_return_conditional_losses_5159631
input_layer"
hidden_1_5159546:2
hidden_1_5159548:2"
hidden_2_5159559:22
hidden_2_5159561:2$
bottleneck_5159572:2,
branch_1_hidden_1_5159575:	�(
branch_1_hidden_1_5159577:	�-
branch_1_hidden_2_5159588:
��(
branch_1_hidden_2_5159590:	�-
branch_1_hidden_3_5159601:
��(
branch_1_hidden_3_5159603:	�+
branch_1_output_5159614:
��&
branch_1_output_5159616:	�
identity

identity_1

identity_2

identity_3

identity_4

identity_5��"bottleneck/StatefulPartitionedCall�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�)branch_1_hidden_1/StatefulPartitionedCall�)branch_1_hidden_2/StatefulPartitionedCall�)branch_1_hidden_3/StatefulPartitionedCall�'branch_1_output/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall� hidden_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerhidden_1_5159546hidden_1_5159548*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_1_layer_call_and_return_conditional_losses_51589382"
 hidden_1/StatefulPartitionedCall�
,hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
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
1__inference_hidden_1_activity_regularizer_51588682.
,hidden_1/ActivityRegularizer/PartitionedCall�
"hidden_1/ActivityRegularizer/ShapeShape)hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_1/ActivityRegularizer/Shape�
0hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_1/ActivityRegularizer/strided_slice/stack�
2hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_1�
2hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_2�
*hidden_1/ActivityRegularizer/strided_sliceStridedSlice+hidden_1/ActivityRegularizer/Shape:output:09hidden_1/ActivityRegularizer/strided_slice/stack:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_1/ActivityRegularizer/strided_slice�
!hidden_1/ActivityRegularizer/CastCast3hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_1/ActivityRegularizer/Cast�
$hidden_1/ActivityRegularizer/truedivRealDiv5hidden_1/ActivityRegularizer/PartitionedCall:output:0%hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_1/ActivityRegularizer/truediv�
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall)hidden_1/StatefulPartitionedCall:output:0hidden_2_5159559hidden_2_5159561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_2_layer_call_and_return_conditional_losses_51589632"
 hidden_2/StatefulPartitionedCall�
,hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
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
1__inference_hidden_2_activity_regularizer_51588812.
,hidden_2/ActivityRegularizer/PartitionedCall�
"hidden_2/ActivityRegularizer/ShapeShape)hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_2/ActivityRegularizer/Shape�
0hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_2/ActivityRegularizer/strided_slice/stack�
2hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_1�
2hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_2�
*hidden_2/ActivityRegularizer/strided_sliceStridedSlice+hidden_2/ActivityRegularizer/Shape:output:09hidden_2/ActivityRegularizer/strided_slice/stack:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_2/ActivityRegularizer/strided_slice�
!hidden_2/ActivityRegularizer/CastCast3hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_2/ActivityRegularizer/Cast�
$hidden_2/ActivityRegularizer/truedivRealDiv5hidden_2/ActivityRegularizer/PartitionedCall:output:0%hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_2/ActivityRegularizer/truediv�
"bottleneck/StatefulPartitionedCallStatefulPartitionedCall)hidden_2/StatefulPartitionedCall:output:0bottleneck_5159572*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_bottleneck_layer_call_and_return_conditional_losses_51589902$
"bottleneck/StatefulPartitionedCall�
)branch_1_hidden_1/StatefulPartitionedCallStatefulPartitionedCall+bottleneck/StatefulPartitionedCall:output:0branch_1_hidden_1_5159575branch_1_hidden_1_5159577*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_51590052+
)branch_1_hidden_1/StatefulPartitionedCall�
5branch_1_hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_1_activity_regularizer_515889427
5branch_1_hidden_1/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_1/ActivityRegularizer/ShapeShape2branch_1_hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_1/ActivityRegularizer/Shape�
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_1/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_1/ActivityRegularizer/strided_slice�
*branch_1_hidden_1/ActivityRegularizer/CastCast<branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_1/ActivityRegularizer/Cast�
-branch_1_hidden_1/ActivityRegularizer/truedivRealDiv>branch_1_hidden_1/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_1/ActivityRegularizer/truediv�
)branch_1_hidden_2/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0branch_1_hidden_2_5159588branch_1_hidden_2_5159590*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_51590302+
)branch_1_hidden_2/StatefulPartitionedCall�
5branch_1_hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_2_activity_regularizer_515890727
5branch_1_hidden_2/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_2/ActivityRegularizer/ShapeShape2branch_1_hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_2/ActivityRegularizer/Shape�
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_2/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_2/ActivityRegularizer/strided_slice�
*branch_1_hidden_2/ActivityRegularizer/CastCast<branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_2/ActivityRegularizer/Cast�
-branch_1_hidden_2/ActivityRegularizer/truedivRealDiv>branch_1_hidden_2/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_2/ActivityRegularizer/truediv�
)branch_1_hidden_3/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0branch_1_hidden_3_5159601branch_1_hidden_3_5159603*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_51590552+
)branch_1_hidden_3/StatefulPartitionedCall�
5branch_1_hidden_3/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_3_activity_regularizer_515892027
5branch_1_hidden_3/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_3/ActivityRegularizer/ShapeShape2branch_1_hidden_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_3/ActivityRegularizer/Shape�
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_3/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_3/ActivityRegularizer/strided_slice�
*branch_1_hidden_3/ActivityRegularizer/CastCast<branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_3/ActivityRegularizer/Cast�
-branch_1_hidden_3/ActivityRegularizer/truedivRealDiv>branch_1_hidden_3/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_3/ActivityRegularizer/truediv�
'branch_1_output/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0branch_1_output_5159614branch_1_output_5159616*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_branch_1_output_layer_call_and_return_conditional_losses_51590792)
'branch_1_output/StatefulPartitionedCall�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpbottleneck_5159572*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mul�
IdentityIdentity0branch_1_output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityv

Identity_1Identity(hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity1branch_1_hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3

Identity_4Identity1branch_1_hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4

Identity_5Identity1branch_1_hidden_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_5�
NoOpNoOp#^bottleneck/StatefulPartitionedCall1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*^branch_1_hidden_1/StatefulPartitionedCall*^branch_1_hidden_2/StatefulPartitionedCall*^branch_1_hidden_3/StatefulPartitionedCall(^branch_1_output/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"bottleneck/StatefulPartitionedCall"bottleneck/StatefulPartitionedCall2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp2V
)branch_1_hidden_1/StatefulPartitionedCall)branch_1_hidden_1/StatefulPartitionedCall2V
)branch_1_hidden_2/StatefulPartitionedCall)branch_1_hidden_2/StatefulPartitionedCall2V
)branch_1_hidden_3/StatefulPartitionedCall)branch_1_hidden_3/StatefulPartitionedCall2R
'branch_1_output/StatefulPartitionedCall'branch_1_output/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
,__inference_bottleneck_layer_call_fn_5160052

inputs
unknown:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_bottleneck_layer_call_and_return_conditional_losses_51589902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������2: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
L__inference_branch_1_output_layer_call_and_return_conditional_losses_5160122

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
E__inference_model_38_layer_call_and_return_conditional_losses_5159385

inputs"
hidden_1_5159300:2
hidden_1_5159302:2"
hidden_2_5159313:22
hidden_2_5159315:2$
bottleneck_5159326:2,
branch_1_hidden_1_5159329:	�(
branch_1_hidden_1_5159331:	�-
branch_1_hidden_2_5159342:
��(
branch_1_hidden_2_5159344:	�-
branch_1_hidden_3_5159355:
��(
branch_1_hidden_3_5159357:	�+
branch_1_output_5159368:
��&
branch_1_output_5159370:	�
identity

identity_1

identity_2

identity_3

identity_4

identity_5��"bottleneck/StatefulPartitionedCall�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�)branch_1_hidden_1/StatefulPartitionedCall�)branch_1_hidden_2/StatefulPartitionedCall�)branch_1_hidden_3/StatefulPartitionedCall�'branch_1_output/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall� hidden_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_5159300hidden_1_5159302*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_1_layer_call_and_return_conditional_losses_51589382"
 hidden_1/StatefulPartitionedCall�
,hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
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
1__inference_hidden_1_activity_regularizer_51588682.
,hidden_1/ActivityRegularizer/PartitionedCall�
"hidden_1/ActivityRegularizer/ShapeShape)hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_1/ActivityRegularizer/Shape�
0hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_1/ActivityRegularizer/strided_slice/stack�
2hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_1�
2hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_2�
*hidden_1/ActivityRegularizer/strided_sliceStridedSlice+hidden_1/ActivityRegularizer/Shape:output:09hidden_1/ActivityRegularizer/strided_slice/stack:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_1/ActivityRegularizer/strided_slice�
!hidden_1/ActivityRegularizer/CastCast3hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_1/ActivityRegularizer/Cast�
$hidden_1/ActivityRegularizer/truedivRealDiv5hidden_1/ActivityRegularizer/PartitionedCall:output:0%hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_1/ActivityRegularizer/truediv�
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall)hidden_1/StatefulPartitionedCall:output:0hidden_2_5159313hidden_2_5159315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_2_layer_call_and_return_conditional_losses_51589632"
 hidden_2/StatefulPartitionedCall�
,hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
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
1__inference_hidden_2_activity_regularizer_51588812.
,hidden_2/ActivityRegularizer/PartitionedCall�
"hidden_2/ActivityRegularizer/ShapeShape)hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_2/ActivityRegularizer/Shape�
0hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_2/ActivityRegularizer/strided_slice/stack�
2hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_1�
2hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_2�
*hidden_2/ActivityRegularizer/strided_sliceStridedSlice+hidden_2/ActivityRegularizer/Shape:output:09hidden_2/ActivityRegularizer/strided_slice/stack:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_2/ActivityRegularizer/strided_slice�
!hidden_2/ActivityRegularizer/CastCast3hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_2/ActivityRegularizer/Cast�
$hidden_2/ActivityRegularizer/truedivRealDiv5hidden_2/ActivityRegularizer/PartitionedCall:output:0%hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_2/ActivityRegularizer/truediv�
"bottleneck/StatefulPartitionedCallStatefulPartitionedCall)hidden_2/StatefulPartitionedCall:output:0bottleneck_5159326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_bottleneck_layer_call_and_return_conditional_losses_51589902$
"bottleneck/StatefulPartitionedCall�
)branch_1_hidden_1/StatefulPartitionedCallStatefulPartitionedCall+bottleneck/StatefulPartitionedCall:output:0branch_1_hidden_1_5159329branch_1_hidden_1_5159331*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_51590052+
)branch_1_hidden_1/StatefulPartitionedCall�
5branch_1_hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_1_activity_regularizer_515889427
5branch_1_hidden_1/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_1/ActivityRegularizer/ShapeShape2branch_1_hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_1/ActivityRegularizer/Shape�
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_1/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_1/ActivityRegularizer/strided_slice�
*branch_1_hidden_1/ActivityRegularizer/CastCast<branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_1/ActivityRegularizer/Cast�
-branch_1_hidden_1/ActivityRegularizer/truedivRealDiv>branch_1_hidden_1/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_1/ActivityRegularizer/truediv�
)branch_1_hidden_2/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0branch_1_hidden_2_5159342branch_1_hidden_2_5159344*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_51590302+
)branch_1_hidden_2/StatefulPartitionedCall�
5branch_1_hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_2_activity_regularizer_515890727
5branch_1_hidden_2/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_2/ActivityRegularizer/ShapeShape2branch_1_hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_2/ActivityRegularizer/Shape�
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_2/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_2/ActivityRegularizer/strided_slice�
*branch_1_hidden_2/ActivityRegularizer/CastCast<branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_2/ActivityRegularizer/Cast�
-branch_1_hidden_2/ActivityRegularizer/truedivRealDiv>branch_1_hidden_2/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_2/ActivityRegularizer/truediv�
)branch_1_hidden_3/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0branch_1_hidden_3_5159355branch_1_hidden_3_5159357*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_51590552+
)branch_1_hidden_3/StatefulPartitionedCall�
5branch_1_hidden_3/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_3_activity_regularizer_515892027
5branch_1_hidden_3/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_3/ActivityRegularizer/ShapeShape2branch_1_hidden_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_3/ActivityRegularizer/Shape�
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_3/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_3/ActivityRegularizer/strided_slice�
*branch_1_hidden_3/ActivityRegularizer/CastCast<branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_3/ActivityRegularizer/Cast�
-branch_1_hidden_3/ActivityRegularizer/truedivRealDiv>branch_1_hidden_3/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_3/ActivityRegularizer/truediv�
'branch_1_output/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0branch_1_output_5159368branch_1_output_5159370*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_branch_1_output_layer_call_and_return_conditional_losses_51590792)
'branch_1_output/StatefulPartitionedCall�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpbottleneck_5159326*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mul�
IdentityIdentity0branch_1_output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityv

Identity_1Identity(hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity1branch_1_hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3

Identity_4Identity1branch_1_hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4

Identity_5Identity1branch_1_hidden_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_5�
NoOpNoOp#^bottleneck/StatefulPartitionedCall1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*^branch_1_hidden_1/StatefulPartitionedCall*^branch_1_hidden_2/StatefulPartitionedCall*^branch_1_hidden_3/StatefulPartitionedCall(^branch_1_output/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"bottleneck/StatefulPartitionedCall"bottleneck/StatefulPartitionedCall2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp2V
)branch_1_hidden_1/StatefulPartitionedCall)branch_1_hidden_1/StatefulPartitionedCall2V
)branch_1_hidden_2/StatefulPartitionedCall)branch_1_hidden_2/StatefulPartitionedCall2V
)branch_1_hidden_3/StatefulPartitionedCall)branch_1_hidden_3/StatefulPartitionedCall2R
'branch_1_output/StatefulPartitionedCall'branch_1_output/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
Q
:__inference_branch_1_hidden_2_activity_regularizer_5158907
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
�
H
1__inference_hidden_1_activity_regularizer_5158868
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

�
L__inference_branch_1_output_layer_call_and_return_conditional_losses_5159079

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_branch_1_output_layer_call_fn_5160131

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_branch_1_output_layer_call_and_return_conditional_losses_51590792
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_hidden_1_layer_call_and_return_conditional_losses_5160153

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������22
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
R__inference_branch_1_hidden_3_layer_call_and_return_all_conditional_losses_5160103

inputs
unknown:
��
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_51590552
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_3_activity_regularizer_51589202
PartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

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
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_model_38_layer_call_and_return_conditional_losses_5159543
input_layer"
hidden_1_5159458:2
hidden_1_5159460:2"
hidden_2_5159471:22
hidden_2_5159473:2$
bottleneck_5159484:2,
branch_1_hidden_1_5159487:	�(
branch_1_hidden_1_5159489:	�-
branch_1_hidden_2_5159500:
��(
branch_1_hidden_2_5159502:	�-
branch_1_hidden_3_5159513:
��(
branch_1_hidden_3_5159515:	�+
branch_1_output_5159526:
��&
branch_1_output_5159528:	�
identity

identity_1

identity_2

identity_3

identity_4

identity_5��"bottleneck/StatefulPartitionedCall�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�)branch_1_hidden_1/StatefulPartitionedCall�)branch_1_hidden_2/StatefulPartitionedCall�)branch_1_hidden_3/StatefulPartitionedCall�'branch_1_output/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall� hidden_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerhidden_1_5159458hidden_1_5159460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_1_layer_call_and_return_conditional_losses_51589382"
 hidden_1/StatefulPartitionedCall�
,hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
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
1__inference_hidden_1_activity_regularizer_51588682.
,hidden_1/ActivityRegularizer/PartitionedCall�
"hidden_1/ActivityRegularizer/ShapeShape)hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_1/ActivityRegularizer/Shape�
0hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_1/ActivityRegularizer/strided_slice/stack�
2hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_1�
2hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_2�
*hidden_1/ActivityRegularizer/strided_sliceStridedSlice+hidden_1/ActivityRegularizer/Shape:output:09hidden_1/ActivityRegularizer/strided_slice/stack:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_1/ActivityRegularizer/strided_slice�
!hidden_1/ActivityRegularizer/CastCast3hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_1/ActivityRegularizer/Cast�
$hidden_1/ActivityRegularizer/truedivRealDiv5hidden_1/ActivityRegularizer/PartitionedCall:output:0%hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_1/ActivityRegularizer/truediv�
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall)hidden_1/StatefulPartitionedCall:output:0hidden_2_5159471hidden_2_5159473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_2_layer_call_and_return_conditional_losses_51589632"
 hidden_2/StatefulPartitionedCall�
,hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
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
1__inference_hidden_2_activity_regularizer_51588812.
,hidden_2/ActivityRegularizer/PartitionedCall�
"hidden_2/ActivityRegularizer/ShapeShape)hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_2/ActivityRegularizer/Shape�
0hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_2/ActivityRegularizer/strided_slice/stack�
2hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_1�
2hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_2�
*hidden_2/ActivityRegularizer/strided_sliceStridedSlice+hidden_2/ActivityRegularizer/Shape:output:09hidden_2/ActivityRegularizer/strided_slice/stack:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_2/ActivityRegularizer/strided_slice�
!hidden_2/ActivityRegularizer/CastCast3hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_2/ActivityRegularizer/Cast�
$hidden_2/ActivityRegularizer/truedivRealDiv5hidden_2/ActivityRegularizer/PartitionedCall:output:0%hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_2/ActivityRegularizer/truediv�
"bottleneck/StatefulPartitionedCallStatefulPartitionedCall)hidden_2/StatefulPartitionedCall:output:0bottleneck_5159484*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_bottleneck_layer_call_and_return_conditional_losses_51589902$
"bottleneck/StatefulPartitionedCall�
)branch_1_hidden_1/StatefulPartitionedCallStatefulPartitionedCall+bottleneck/StatefulPartitionedCall:output:0branch_1_hidden_1_5159487branch_1_hidden_1_5159489*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_51590052+
)branch_1_hidden_1/StatefulPartitionedCall�
5branch_1_hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_1_activity_regularizer_515889427
5branch_1_hidden_1/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_1/ActivityRegularizer/ShapeShape2branch_1_hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_1/ActivityRegularizer/Shape�
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_1/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_1/ActivityRegularizer/strided_slice�
*branch_1_hidden_1/ActivityRegularizer/CastCast<branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_1/ActivityRegularizer/Cast�
-branch_1_hidden_1/ActivityRegularizer/truedivRealDiv>branch_1_hidden_1/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_1/ActivityRegularizer/truediv�
)branch_1_hidden_2/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0branch_1_hidden_2_5159500branch_1_hidden_2_5159502*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_51590302+
)branch_1_hidden_2/StatefulPartitionedCall�
5branch_1_hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_2_activity_regularizer_515890727
5branch_1_hidden_2/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_2/ActivityRegularizer/ShapeShape2branch_1_hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_2/ActivityRegularizer/Shape�
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_2/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_2/ActivityRegularizer/strided_slice�
*branch_1_hidden_2/ActivityRegularizer/CastCast<branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_2/ActivityRegularizer/Cast�
-branch_1_hidden_2/ActivityRegularizer/truedivRealDiv>branch_1_hidden_2/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_2/ActivityRegularizer/truediv�
)branch_1_hidden_3/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0branch_1_hidden_3_5159513branch_1_hidden_3_5159515*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_51590552+
)branch_1_hidden_3/StatefulPartitionedCall�
5branch_1_hidden_3/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_3_activity_regularizer_515892027
5branch_1_hidden_3/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_3/ActivityRegularizer/ShapeShape2branch_1_hidden_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_3/ActivityRegularizer/Shape�
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_3/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_3/ActivityRegularizer/strided_slice�
*branch_1_hidden_3/ActivityRegularizer/CastCast<branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_3/ActivityRegularizer/Cast�
-branch_1_hidden_3/ActivityRegularizer/truedivRealDiv>branch_1_hidden_3/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_3/ActivityRegularizer/truediv�
'branch_1_output/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0branch_1_output_5159526branch_1_output_5159528*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_branch_1_output_layer_call_and_return_conditional_losses_51590792)
'branch_1_output/StatefulPartitionedCall�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpbottleneck_5159484*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mul�
IdentityIdentity0branch_1_output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityv

Identity_1Identity(hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity1branch_1_hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3

Identity_4Identity1branch_1_hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4

Identity_5Identity1branch_1_hidden_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_5�
NoOpNoOp#^bottleneck/StatefulPartitionedCall1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*^branch_1_hidden_1/StatefulPartitionedCall*^branch_1_hidden_2/StatefulPartitionedCall*^branch_1_hidden_3/StatefulPartitionedCall(^branch_1_output/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"bottleneck/StatefulPartitionedCall"bottleneck/StatefulPartitionedCall2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp2V
)branch_1_hidden_1/StatefulPartitionedCall)branch_1_hidden_1/StatefulPartitionedCall2V
)branch_1_hidden_2/StatefulPartitionedCall)branch_1_hidden_2/StatefulPartitionedCall2V
)branch_1_hidden_3/StatefulPartitionedCall)branch_1_hidden_3/StatefulPartitionedCall2R
'branch_1_output/StatefulPartitionedCall'branch_1_output/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
G__inference_bottleneck_layer_call_and_return_conditional_losses_5160045

inputs0
matmul_readvariableop_resource:2
identity��MatMul/ReadVariableOp�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mulk
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^MatMul/ReadVariableOp1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������2: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
Q
:__inference_branch_1_hidden_1_activity_regularizer_5158894
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
�e
�
 __inference__traced_save_5160364
file_prefix.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop.
*savev2_hidden_2_kernel_read_readvariableop,
(savev2_hidden_2_bias_read_readvariableop0
,savev2_bottleneck_kernel_read_readvariableop7
3savev2_branch_1_hidden_1_kernel_read_readvariableop5
1savev2_branch_1_hidden_1_bias_read_readvariableop7
3savev2_branch_1_hidden_2_kernel_read_readvariableop5
1savev2_branch_1_hidden_2_bias_read_readvariableop7
3savev2_branch_1_hidden_3_kernel_read_readvariableop5
1savev2_branch_1_hidden_3_bias_read_readvariableop5
1savev2_branch_1_output_kernel_read_readvariableop3
/savev2_branch_1_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_hidden_1_kernel_m_read_readvariableop3
/savev2_adam_hidden_1_bias_m_read_readvariableop5
1savev2_adam_hidden_2_kernel_m_read_readvariableop3
/savev2_adam_hidden_2_bias_m_read_readvariableop7
3savev2_adam_bottleneck_kernel_m_read_readvariableop>
:savev2_adam_branch_1_hidden_1_kernel_m_read_readvariableop<
8savev2_adam_branch_1_hidden_1_bias_m_read_readvariableop>
:savev2_adam_branch_1_hidden_2_kernel_m_read_readvariableop<
8savev2_adam_branch_1_hidden_2_bias_m_read_readvariableop>
:savev2_adam_branch_1_hidden_3_kernel_m_read_readvariableop<
8savev2_adam_branch_1_hidden_3_bias_m_read_readvariableop<
8savev2_adam_branch_1_output_kernel_m_read_readvariableop:
6savev2_adam_branch_1_output_bias_m_read_readvariableop5
1savev2_adam_hidden_1_kernel_v_read_readvariableop3
/savev2_adam_hidden_1_bias_v_read_readvariableop5
1savev2_adam_hidden_2_kernel_v_read_readvariableop3
/savev2_adam_hidden_2_bias_v_read_readvariableop7
3savev2_adam_bottleneck_kernel_v_read_readvariableop>
:savev2_adam_branch_1_hidden_1_kernel_v_read_readvariableop<
8savev2_adam_branch_1_hidden_1_bias_v_read_readvariableop>
:savev2_adam_branch_1_hidden_2_kernel_v_read_readvariableop<
8savev2_adam_branch_1_hidden_2_bias_v_read_readvariableop>
:savev2_adam_branch_1_hidden_3_kernel_v_read_readvariableop<
8savev2_adam_branch_1_hidden_3_bias_v_read_readvariableop<
8savev2_adam_branch_1_output_kernel_v_read_readvariableop:
6savev2_adam_branch_1_output_bias_v_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop*savev2_hidden_2_kernel_read_readvariableop(savev2_hidden_2_bias_read_readvariableop,savev2_bottleneck_kernel_read_readvariableop3savev2_branch_1_hidden_1_kernel_read_readvariableop1savev2_branch_1_hidden_1_bias_read_readvariableop3savev2_branch_1_hidden_2_kernel_read_readvariableop1savev2_branch_1_hidden_2_bias_read_readvariableop3savev2_branch_1_hidden_3_kernel_read_readvariableop1savev2_branch_1_hidden_3_bias_read_readvariableop1savev2_branch_1_output_kernel_read_readvariableop/savev2_branch_1_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_hidden_1_kernel_m_read_readvariableop/savev2_adam_hidden_1_bias_m_read_readvariableop1savev2_adam_hidden_2_kernel_m_read_readvariableop/savev2_adam_hidden_2_bias_m_read_readvariableop3savev2_adam_bottleneck_kernel_m_read_readvariableop:savev2_adam_branch_1_hidden_1_kernel_m_read_readvariableop8savev2_adam_branch_1_hidden_1_bias_m_read_readvariableop:savev2_adam_branch_1_hidden_2_kernel_m_read_readvariableop8savev2_adam_branch_1_hidden_2_bias_m_read_readvariableop:savev2_adam_branch_1_hidden_3_kernel_m_read_readvariableop8savev2_adam_branch_1_hidden_3_bias_m_read_readvariableop8savev2_adam_branch_1_output_kernel_m_read_readvariableop6savev2_adam_branch_1_output_bias_m_read_readvariableop1savev2_adam_hidden_1_kernel_v_read_readvariableop/savev2_adam_hidden_1_bias_v_read_readvariableop1savev2_adam_hidden_2_kernel_v_read_readvariableop/savev2_adam_hidden_2_bias_v_read_readvariableop3savev2_adam_bottleneck_kernel_v_read_readvariableop:savev2_adam_branch_1_hidden_1_kernel_v_read_readvariableop8savev2_adam_branch_1_hidden_1_bias_v_read_readvariableop:savev2_adam_branch_1_hidden_2_kernel_v_read_readvariableop8savev2_adam_branch_1_hidden_2_bias_v_read_readvariableop:savev2_adam_branch_1_hidden_3_kernel_v_read_readvariableop8savev2_adam_branch_1_hidden_3_bias_v_read_readvariableop8savev2_adam_branch_1_output_kernel_v_read_readvariableop6savev2_adam_branch_1_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes5
321	2
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :2:2:22:2:2:	�:�:
��:�:
��:�:
��:�: : : : : : : : : :2:2:22:2:2:	�:�:
��:�:
��:�:
��:�:2:2:22:2:2:	�:�:
��:�:
��:�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!	

_output_shapes	
:�:&
"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:22: 

_output_shapes
:2:$ 

_output_shapes

:2:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:& "
 
_output_shapes
:
��:!!

_output_shapes	
:�:&""
 
_output_shapes
:
��:!#

_output_shapes	
:�:$$ 

_output_shapes

:2: %

_output_shapes
:2:$& 

_output_shapes

:22: '

_output_shapes
:2:$( 

_output_shapes

:2:%)!

_output_shapes
:	�:!*

_output_shapes	
:�:&+"
 
_output_shapes
:
��:!,

_output_shapes	
:�:&-"
 
_output_shapes
:
��:!.

_output_shapes	
:�:&/"
 
_output_shapes
:
��:!0

_output_shapes	
:�:1

_output_shapes
: 
�
�
I__inference_hidden_1_layer_call_and_return_all_conditional_losses_5159997

inputs
unknown:2
	unknown_0:2
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
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_1_layer_call_and_return_conditional_losses_51589382
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
1__inference_hidden_1_activity_regularizer_51588682
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������22

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
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_model_38_layer_call_fn_5159950

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:	�
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:
��

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout

2*
_collective_manager_ids
 *2
_output_shapes 
:����������: : : : : */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_38_layer_call_and_return_conditional_losses_51590972
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_5160197

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_branch_1_hidden_1_layer_call_and_return_all_conditional_losses_5160063

inputs
unknown:	�
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_51590052
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_1_activity_regularizer_51588942
PartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

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
�
�
E__inference_model_38_layer_call_and_return_conditional_losses_5159795

inputs9
'hidden_1_matmul_readvariableop_resource:26
(hidden_1_biasadd_readvariableop_resource:29
'hidden_2_matmul_readvariableop_resource:226
(hidden_2_biasadd_readvariableop_resource:2;
)bottleneck_matmul_readvariableop_resource:2C
0branch_1_hidden_1_matmul_readvariableop_resource:	�@
1branch_1_hidden_1_biasadd_readvariableop_resource:	�D
0branch_1_hidden_2_matmul_readvariableop_resource:
��@
1branch_1_hidden_2_biasadd_readvariableop_resource:	�D
0branch_1_hidden_3_matmul_readvariableop_resource:
��@
1branch_1_hidden_3_biasadd_readvariableop_resource:	�B
.branch_1_output_matmul_readvariableop_resource:
��>
/branch_1_output_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2

identity_3

identity_4

identity_5�� bottleneck/MatMul/ReadVariableOp�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�(branch_1_hidden_1/BiasAdd/ReadVariableOp�'branch_1_hidden_1/MatMul/ReadVariableOp�(branch_1_hidden_2/BiasAdd/ReadVariableOp�'branch_1_hidden_2/MatMul/ReadVariableOp�(branch_1_hidden_3/BiasAdd/ReadVariableOp�'branch_1_hidden_3/MatMul/ReadVariableOp�&branch_1_output/BiasAdd/ReadVariableOp�%branch_1_output/MatMul/ReadVariableOp�hidden_1/BiasAdd/ReadVariableOp�hidden_1/MatMul/ReadVariableOp�hidden_2/BiasAdd/ReadVariableOp�hidden_2/MatMul/ReadVariableOp�
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
hidden_1/MatMul/ReadVariableOp�
hidden_1/MatMulMatMulinputs&hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_1/MatMul�
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
hidden_1/BiasAdd/ReadVariableOp�
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_1/BiasAdds
hidden_1/ReluReluhidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������22
hidden_1/Relu�
#hidden_1/ActivityRegularizer/SquareSquarehidden_1/Relu:activations:0*
T0*'
_output_shapes
:���������22%
#hidden_1/ActivityRegularizer/Square�
"hidden_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"hidden_1/ActivityRegularizer/Const�
 hidden_1/ActivityRegularizer/SumSum'hidden_1/ActivityRegularizer/Square:y:0+hidden_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 hidden_1/ActivityRegularizer/Sum�
"hidden_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"hidden_1/ActivityRegularizer/mul/x�
 hidden_1/ActivityRegularizer/mulMul+hidden_1/ActivityRegularizer/mul/x:output:0)hidden_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 hidden_1/ActivityRegularizer/mul�
"hidden_1/ActivityRegularizer/ShapeShapehidden_1/Relu:activations:0*
T0*
_output_shapes
:2$
"hidden_1/ActivityRegularizer/Shape�
0hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_1/ActivityRegularizer/strided_slice/stack�
2hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_1�
2hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_2�
*hidden_1/ActivityRegularizer/strided_sliceStridedSlice+hidden_1/ActivityRegularizer/Shape:output:09hidden_1/ActivityRegularizer/strided_slice/stack:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_1/ActivityRegularizer/strided_slice�
!hidden_1/ActivityRegularizer/CastCast3hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_1/ActivityRegularizer/Cast�
$hidden_1/ActivityRegularizer/truedivRealDiv$hidden_1/ActivityRegularizer/mul:z:0%hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_1/ActivityRegularizer/truediv�
hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:22*
dtype02 
hidden_2/MatMul/ReadVariableOp�
hidden_2/MatMulMatMulhidden_1/Relu:activations:0&hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_2/MatMul�
hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
hidden_2/BiasAdd/ReadVariableOp�
hidden_2/BiasAddBiasAddhidden_2/MatMul:product:0'hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
hidden_2/BiasAdds
hidden_2/ReluReluhidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������22
hidden_2/Relu�
#hidden_2/ActivityRegularizer/SquareSquarehidden_2/Relu:activations:0*
T0*'
_output_shapes
:���������22%
#hidden_2/ActivityRegularizer/Square�
"hidden_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"hidden_2/ActivityRegularizer/Const�
 hidden_2/ActivityRegularizer/SumSum'hidden_2/ActivityRegularizer/Square:y:0+hidden_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 hidden_2/ActivityRegularizer/Sum�
"hidden_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"hidden_2/ActivityRegularizer/mul/x�
 hidden_2/ActivityRegularizer/mulMul+hidden_2/ActivityRegularizer/mul/x:output:0)hidden_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 hidden_2/ActivityRegularizer/mul�
"hidden_2/ActivityRegularizer/ShapeShapehidden_2/Relu:activations:0*
T0*
_output_shapes
:2$
"hidden_2/ActivityRegularizer/Shape�
0hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_2/ActivityRegularizer/strided_slice/stack�
2hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_1�
2hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_2�
*hidden_2/ActivityRegularizer/strided_sliceStridedSlice+hidden_2/ActivityRegularizer/Shape:output:09hidden_2/ActivityRegularizer/strided_slice/stack:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_2/ActivityRegularizer/strided_slice�
!hidden_2/ActivityRegularizer/CastCast3hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_2/ActivityRegularizer/Cast�
$hidden_2/ActivityRegularizer/truedivRealDiv$hidden_2/ActivityRegularizer/mul:z:0%hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_2/ActivityRegularizer/truediv�
 bottleneck/MatMul/ReadVariableOpReadVariableOp)bottleneck_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02"
 bottleneck/MatMul/ReadVariableOp�
bottleneck/MatMulMatMulhidden_2/Relu:activations:0(bottleneck/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
bottleneck/MatMul�
'branch_1_hidden_1/MatMul/ReadVariableOpReadVariableOp0branch_1_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02)
'branch_1_hidden_1/MatMul/ReadVariableOp�
branch_1_hidden_1/MatMulMatMulbottleneck/MatMul:product:0/branch_1_hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_1/MatMul�
(branch_1_hidden_1/BiasAdd/ReadVariableOpReadVariableOp1branch_1_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(branch_1_hidden_1/BiasAdd/ReadVariableOp�
branch_1_hidden_1/BiasAddBiasAdd"branch_1_hidden_1/MatMul:product:00branch_1_hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_1/BiasAdd�
branch_1_hidden_1/ReluRelu"branch_1_hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_1/Relu�
,branch_1_hidden_1/ActivityRegularizer/SquareSquare$branch_1_hidden_1/Relu:activations:0*
T0*(
_output_shapes
:����������2.
,branch_1_hidden_1/ActivityRegularizer/Square�
+branch_1_hidden_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+branch_1_hidden_1/ActivityRegularizer/Const�
)branch_1_hidden_1/ActivityRegularizer/SumSum0branch_1_hidden_1/ActivityRegularizer/Square:y:04branch_1_hidden_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_1/ActivityRegularizer/Sum�
+branch_1_hidden_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+branch_1_hidden_1/ActivityRegularizer/mul/x�
)branch_1_hidden_1/ActivityRegularizer/mulMul4branch_1_hidden_1/ActivityRegularizer/mul/x:output:02branch_1_hidden_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_1/ActivityRegularizer/mul�
+branch_1_hidden_1/ActivityRegularizer/ShapeShape$branch_1_hidden_1/Relu:activations:0*
T0*
_output_shapes
:2-
+branch_1_hidden_1/ActivityRegularizer/Shape�
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_1/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_1/ActivityRegularizer/strided_slice�
*branch_1_hidden_1/ActivityRegularizer/CastCast<branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_1/ActivityRegularizer/Cast�
-branch_1_hidden_1/ActivityRegularizer/truedivRealDiv-branch_1_hidden_1/ActivityRegularizer/mul:z:0.branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_1/ActivityRegularizer/truediv�
'branch_1_hidden_2/MatMul/ReadVariableOpReadVariableOp0branch_1_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'branch_1_hidden_2/MatMul/ReadVariableOp�
branch_1_hidden_2/MatMulMatMul$branch_1_hidden_1/Relu:activations:0/branch_1_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_2/MatMul�
(branch_1_hidden_2/BiasAdd/ReadVariableOpReadVariableOp1branch_1_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(branch_1_hidden_2/BiasAdd/ReadVariableOp�
branch_1_hidden_2/BiasAddBiasAdd"branch_1_hidden_2/MatMul:product:00branch_1_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_2/BiasAdd�
branch_1_hidden_2/ReluRelu"branch_1_hidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_2/Relu�
,branch_1_hidden_2/ActivityRegularizer/SquareSquare$branch_1_hidden_2/Relu:activations:0*
T0*(
_output_shapes
:����������2.
,branch_1_hidden_2/ActivityRegularizer/Square�
+branch_1_hidden_2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+branch_1_hidden_2/ActivityRegularizer/Const�
)branch_1_hidden_2/ActivityRegularizer/SumSum0branch_1_hidden_2/ActivityRegularizer/Square:y:04branch_1_hidden_2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_2/ActivityRegularizer/Sum�
+branch_1_hidden_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+branch_1_hidden_2/ActivityRegularizer/mul/x�
)branch_1_hidden_2/ActivityRegularizer/mulMul4branch_1_hidden_2/ActivityRegularizer/mul/x:output:02branch_1_hidden_2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_2/ActivityRegularizer/mul�
+branch_1_hidden_2/ActivityRegularizer/ShapeShape$branch_1_hidden_2/Relu:activations:0*
T0*
_output_shapes
:2-
+branch_1_hidden_2/ActivityRegularizer/Shape�
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_2/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_2/ActivityRegularizer/strided_slice�
*branch_1_hidden_2/ActivityRegularizer/CastCast<branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_2/ActivityRegularizer/Cast�
-branch_1_hidden_2/ActivityRegularizer/truedivRealDiv-branch_1_hidden_2/ActivityRegularizer/mul:z:0.branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_2/ActivityRegularizer/truediv�
'branch_1_hidden_3/MatMul/ReadVariableOpReadVariableOp0branch_1_hidden_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02)
'branch_1_hidden_3/MatMul/ReadVariableOp�
branch_1_hidden_3/MatMulMatMul$branch_1_hidden_2/Relu:activations:0/branch_1_hidden_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_3/MatMul�
(branch_1_hidden_3/BiasAdd/ReadVariableOpReadVariableOp1branch_1_hidden_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(branch_1_hidden_3/BiasAdd/ReadVariableOp�
branch_1_hidden_3/BiasAddBiasAdd"branch_1_hidden_3/MatMul:product:00branch_1_hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_3/BiasAdd�
branch_1_hidden_3/ReluRelu"branch_1_hidden_3/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
branch_1_hidden_3/Relu�
,branch_1_hidden_3/ActivityRegularizer/SquareSquare$branch_1_hidden_3/Relu:activations:0*
T0*(
_output_shapes
:����������2.
,branch_1_hidden_3/ActivityRegularizer/Square�
+branch_1_hidden_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+branch_1_hidden_3/ActivityRegularizer/Const�
)branch_1_hidden_3/ActivityRegularizer/SumSum0branch_1_hidden_3/ActivityRegularizer/Square:y:04branch_1_hidden_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_3/ActivityRegularizer/Sum�
+branch_1_hidden_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+branch_1_hidden_3/ActivityRegularizer/mul/x�
)branch_1_hidden_3/ActivityRegularizer/mulMul4branch_1_hidden_3/ActivityRegularizer/mul/x:output:02branch_1_hidden_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)branch_1_hidden_3/ActivityRegularizer/mul�
+branch_1_hidden_3/ActivityRegularizer/ShapeShape$branch_1_hidden_3/Relu:activations:0*
T0*
_output_shapes
:2-
+branch_1_hidden_3/ActivityRegularizer/Shape�
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_3/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_3/ActivityRegularizer/strided_slice�
*branch_1_hidden_3/ActivityRegularizer/CastCast<branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_3/ActivityRegularizer/Cast�
-branch_1_hidden_3/ActivityRegularizer/truedivRealDiv-branch_1_hidden_3/ActivityRegularizer/mul:z:0.branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_3/ActivityRegularizer/truediv�
%branch_1_output/MatMul/ReadVariableOpReadVariableOp.branch_1_output_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02'
%branch_1_output/MatMul/ReadVariableOp�
branch_1_output/MatMulMatMul$branch_1_hidden_3/Relu:activations:0-branch_1_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_output/MatMul�
&branch_1_output/BiasAdd/ReadVariableOpReadVariableOp/branch_1_output_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&branch_1_output/BiasAdd/ReadVariableOp�
branch_1_output/BiasAddBiasAdd branch_1_output/MatMul:product:0.branch_1_output/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
branch_1_output/BiasAdd�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp)bottleneck_matmul_readvariableop_resource*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mul|
IdentityIdentity branch_1_output/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityv

Identity_1Identity(hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity1branch_1_hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3

Identity_4Identity1branch_1_hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4

Identity_5Identity1branch_1_hidden_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_5�
NoOpNoOp!^bottleneck/MatMul/ReadVariableOp1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp)^branch_1_hidden_1/BiasAdd/ReadVariableOp(^branch_1_hidden_1/MatMul/ReadVariableOp)^branch_1_hidden_2/BiasAdd/ReadVariableOp(^branch_1_hidden_2/MatMul/ReadVariableOp)^branch_1_hidden_3/BiasAdd/ReadVariableOp(^branch_1_hidden_3/MatMul/ReadVariableOp'^branch_1_output/BiasAdd/ReadVariableOp&^branch_1_output/MatMul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp ^hidden_2/BiasAdd/ReadVariableOp^hidden_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2D
 bottleneck/MatMul/ReadVariableOp bottleneck/MatMul/ReadVariableOp2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp2T
(branch_1_hidden_1/BiasAdd/ReadVariableOp(branch_1_hidden_1/BiasAdd/ReadVariableOp2R
'branch_1_hidden_1/MatMul/ReadVariableOp'branch_1_hidden_1/MatMul/ReadVariableOp2T
(branch_1_hidden_2/BiasAdd/ReadVariableOp(branch_1_hidden_2/BiasAdd/ReadVariableOp2R
'branch_1_hidden_2/MatMul/ReadVariableOp'branch_1_hidden_2/MatMul/ReadVariableOp2T
(branch_1_hidden_3/BiasAdd/ReadVariableOp(branch_1_hidden_3/BiasAdd/ReadVariableOp2R
'branch_1_hidden_3/MatMul/ReadVariableOp'branch_1_hidden_3/MatMul/ReadVariableOp2P
&branch_1_output/BiasAdd/ReadVariableOp&branch_1_output/BiasAdd/ReadVariableOp2N
%branch_1_output/MatMul/ReadVariableOp%branch_1_output/MatMul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2B
hidden_2/BiasAdd/ReadVariableOphidden_2/BiasAdd/ReadVariableOp2@
hidden_2/MatMul/ReadVariableOphidden_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
3__inference_branch_1_hidden_2_layer_call_fn_5160092

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_51590302
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_5160518
file_prefix2
 assignvariableop_hidden_1_kernel:2.
 assignvariableop_1_hidden_1_bias:24
"assignvariableop_2_hidden_2_kernel:22.
 assignvariableop_3_hidden_2_bias:26
$assignvariableop_4_bottleneck_kernel:2>
+assignvariableop_5_branch_1_hidden_1_kernel:	�8
)assignvariableop_6_branch_1_hidden_1_bias:	�?
+assignvariableop_7_branch_1_hidden_2_kernel:
��8
)assignvariableop_8_branch_1_hidden_2_bias:	�?
+assignvariableop_9_branch_1_hidden_3_kernel:
��9
*assignvariableop_10_branch_1_hidden_3_bias:	�>
*assignvariableop_11_branch_1_output_kernel:
��7
(assignvariableop_12_branch_1_output_bias:	�'
assignvariableop_13_adam_iter:	 )
assignvariableop_14_adam_beta_1: )
assignvariableop_15_adam_beta_2: (
assignvariableop_16_adam_decay: 0
&assignvariableop_17_adam_learning_rate: #
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: <
*assignvariableop_22_adam_hidden_1_kernel_m:26
(assignvariableop_23_adam_hidden_1_bias_m:2<
*assignvariableop_24_adam_hidden_2_kernel_m:226
(assignvariableop_25_adam_hidden_2_bias_m:2>
,assignvariableop_26_adam_bottleneck_kernel_m:2F
3assignvariableop_27_adam_branch_1_hidden_1_kernel_m:	�@
1assignvariableop_28_adam_branch_1_hidden_1_bias_m:	�G
3assignvariableop_29_adam_branch_1_hidden_2_kernel_m:
��@
1assignvariableop_30_adam_branch_1_hidden_2_bias_m:	�G
3assignvariableop_31_adam_branch_1_hidden_3_kernel_m:
��@
1assignvariableop_32_adam_branch_1_hidden_3_bias_m:	�E
1assignvariableop_33_adam_branch_1_output_kernel_m:
��>
/assignvariableop_34_adam_branch_1_output_bias_m:	�<
*assignvariableop_35_adam_hidden_1_kernel_v:26
(assignvariableop_36_adam_hidden_1_bias_v:2<
*assignvariableop_37_adam_hidden_2_kernel_v:226
(assignvariableop_38_adam_hidden_2_bias_v:2>
,assignvariableop_39_adam_bottleneck_kernel_v:2F
3assignvariableop_40_adam_branch_1_hidden_1_kernel_v:	�@
1assignvariableop_41_adam_branch_1_hidden_1_bias_v:	�G
3assignvariableop_42_adam_branch_1_hidden_2_kernel_v:
��@
1assignvariableop_43_adam_branch_1_hidden_2_bias_v:	�G
3assignvariableop_44_adam_branch_1_hidden_3_kernel_v:
��@
1assignvariableop_45_adam_branch_1_hidden_3_bias_v:	�E
1assignvariableop_46_adam_branch_1_output_kernel_v:
��>
/assignvariableop_47_adam_branch_1_output_bias_v:	�
identity_49��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*�
value�B�1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_hidden_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_hidden_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_hidden_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_hidden_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_bottleneck_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp+assignvariableop_5_branch_1_hidden_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp)assignvariableop_6_branch_1_hidden_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp+assignvariableop_7_branch_1_hidden_2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp)assignvariableop_8_branch_1_hidden_2_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_branch_1_hidden_3_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp*assignvariableop_10_branch_1_hidden_3_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_branch_1_output_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_branch_1_output_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_hidden_1_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_hidden_1_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_hidden_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_hidden_2_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_bottleneck_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_branch_1_hidden_1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp1assignvariableop_28_adam_branch_1_hidden_1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_branch_1_hidden_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp1assignvariableop_30_adam_branch_1_hidden_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp3assignvariableop_31_adam_branch_1_hidden_3_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp1assignvariableop_32_adam_branch_1_hidden_3_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp1assignvariableop_33_adam_branch_1_output_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp/assignvariableop_34_adam_branch_1_output_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_hidden_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_hidden_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_hidden_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_hidden_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_bottleneck_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp3assignvariableop_40_adam_branch_1_hidden_1_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp1assignvariableop_41_adam_branch_1_hidden_1_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp3assignvariableop_42_adam_branch_1_hidden_2_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp1assignvariableop_43_adam_branch_1_hidden_2_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp3assignvariableop_44_adam_branch_1_hidden_3_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp1assignvariableop_45_adam_branch_1_hidden_3_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp1assignvariableop_46_adam_branch_1_output_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp/assignvariableop_47_adam_branch_1_output_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48f
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_49�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
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
�
�
*__inference_model_38_layer_call_fn_5159986

inputs
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:2
	unknown_4:	�
	unknown_5:	�
	unknown_6:
��
	unknown_7:	�
	unknown_8:
��
	unknown_9:	�

unknown_10:
��

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout

2*
_collective_manager_ids
 *2
_output_shapes 
:����������: : : : : */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_38_layer_call_and_return_conditional_losses_51593852
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
3__inference_branch_1_hidden_3_layer_call_fn_5160112

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_51590552
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_hidden_2_layer_call_and_return_conditional_losses_5160164

inputs0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������22
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�
E__inference_model_38_layer_call_and_return_conditional_losses_5159097

inputs"
hidden_1_5158939:2
hidden_1_5158941:2"
hidden_2_5158964:22
hidden_2_5158966:2$
bottleneck_5158991:2,
branch_1_hidden_1_5159006:	�(
branch_1_hidden_1_5159008:	�-
branch_1_hidden_2_5159031:
��(
branch_1_hidden_2_5159033:	�-
branch_1_hidden_3_5159056:
��(
branch_1_hidden_3_5159058:	�+
branch_1_output_5159080:
��&
branch_1_output_5159082:	�
identity

identity_1

identity_2

identity_3

identity_4

identity_5��"bottleneck/StatefulPartitionedCall�0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�)branch_1_hidden_1/StatefulPartitionedCall�)branch_1_hidden_2/StatefulPartitionedCall�)branch_1_hidden_3/StatefulPartitionedCall�'branch_1_output/StatefulPartitionedCall� hidden_1/StatefulPartitionedCall� hidden_2/StatefulPartitionedCall�
 hidden_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_1_5158939hidden_1_5158941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_1_layer_call_and_return_conditional_losses_51589382"
 hidden_1/StatefulPartitionedCall�
,hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
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
1__inference_hidden_1_activity_regularizer_51588682.
,hidden_1/ActivityRegularizer/PartitionedCall�
"hidden_1/ActivityRegularizer/ShapeShape)hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_1/ActivityRegularizer/Shape�
0hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_1/ActivityRegularizer/strided_slice/stack�
2hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_1�
2hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_1/ActivityRegularizer/strided_slice/stack_2�
*hidden_1/ActivityRegularizer/strided_sliceStridedSlice+hidden_1/ActivityRegularizer/Shape:output:09hidden_1/ActivityRegularizer/strided_slice/stack:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_1/ActivityRegularizer/strided_slice�
!hidden_1/ActivityRegularizer/CastCast3hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_1/ActivityRegularizer/Cast�
$hidden_1/ActivityRegularizer/truedivRealDiv5hidden_1/ActivityRegularizer/PartitionedCall:output:0%hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_1/ActivityRegularizer/truediv�
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall)hidden_1/StatefulPartitionedCall:output:0hidden_2_5158964hidden_2_5158966*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_2_layer_call_and_return_conditional_losses_51589632"
 hidden_2/StatefulPartitionedCall�
,hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
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
1__inference_hidden_2_activity_regularizer_51588812.
,hidden_2/ActivityRegularizer/PartitionedCall�
"hidden_2/ActivityRegularizer/ShapeShape)hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"hidden_2/ActivityRegularizer/Shape�
0hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0hidden_2/ActivityRegularizer/strided_slice/stack�
2hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_1�
2hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2hidden_2/ActivityRegularizer/strided_slice/stack_2�
*hidden_2/ActivityRegularizer/strided_sliceStridedSlice+hidden_2/ActivityRegularizer/Shape:output:09hidden_2/ActivityRegularizer/strided_slice/stack:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0;hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*hidden_2/ActivityRegularizer/strided_slice�
!hidden_2/ActivityRegularizer/CastCast3hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!hidden_2/ActivityRegularizer/Cast�
$hidden_2/ActivityRegularizer/truedivRealDiv5hidden_2/ActivityRegularizer/PartitionedCall:output:0%hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$hidden_2/ActivityRegularizer/truediv�
"bottleneck/StatefulPartitionedCallStatefulPartitionedCall)hidden_2/StatefulPartitionedCall:output:0bottleneck_5158991*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_bottleneck_layer_call_and_return_conditional_losses_51589902$
"bottleneck/StatefulPartitionedCall�
)branch_1_hidden_1/StatefulPartitionedCallStatefulPartitionedCall+bottleneck/StatefulPartitionedCall:output:0branch_1_hidden_1_5159006branch_1_hidden_1_5159008*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_51590052+
)branch_1_hidden_1/StatefulPartitionedCall�
5branch_1_hidden_1/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_1_activity_regularizer_515889427
5branch_1_hidden_1/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_1/ActivityRegularizer/ShapeShape2branch_1_hidden_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_1/ActivityRegularizer/Shape�
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_1/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_1/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_1/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_1/ActivityRegularizer/strided_slice�
*branch_1_hidden_1/ActivityRegularizer/CastCast<branch_1_hidden_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_1/ActivityRegularizer/Cast�
-branch_1_hidden_1/ActivityRegularizer/truedivRealDiv>branch_1_hidden_1/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_1/ActivityRegularizer/truediv�
)branch_1_hidden_2/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_1/StatefulPartitionedCall:output:0branch_1_hidden_2_5159031branch_1_hidden_2_5159033*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_51590302+
)branch_1_hidden_2/StatefulPartitionedCall�
5branch_1_hidden_2/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_2_activity_regularizer_515890727
5branch_1_hidden_2/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_2/ActivityRegularizer/ShapeShape2branch_1_hidden_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_2/ActivityRegularizer/Shape�
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_2/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_2/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_2/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_2/ActivityRegularizer/strided_slice�
*branch_1_hidden_2/ActivityRegularizer/CastCast<branch_1_hidden_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_2/ActivityRegularizer/Cast�
-branch_1_hidden_2/ActivityRegularizer/truedivRealDiv>branch_1_hidden_2/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_2/ActivityRegularizer/truediv�
)branch_1_hidden_3/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_2/StatefulPartitionedCall:output:0branch_1_hidden_3_5159056branch_1_hidden_3_5159058*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_51590552+
)branch_1_hidden_3/StatefulPartitionedCall�
5branch_1_hidden_3/ActivityRegularizer/PartitionedCallPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *C
f>R<
:__inference_branch_1_hidden_3_activity_regularizer_515892027
5branch_1_hidden_3/ActivityRegularizer/PartitionedCall�
+branch_1_hidden_3/ActivityRegularizer/ShapeShape2branch_1_hidden_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2-
+branch_1_hidden_3/ActivityRegularizer/Shape�
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9branch_1_hidden_3/ActivityRegularizer/strided_slice/stack�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1�
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;branch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2�
3branch_1_hidden_3/ActivityRegularizer/strided_sliceStridedSlice4branch_1_hidden_3/ActivityRegularizer/Shape:output:0Bbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_1:output:0Dbranch_1_hidden_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3branch_1_hidden_3/ActivityRegularizer/strided_slice�
*branch_1_hidden_3/ActivityRegularizer/CastCast<branch_1_hidden_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*branch_1_hidden_3/ActivityRegularizer/Cast�
-branch_1_hidden_3/ActivityRegularizer/truedivRealDiv>branch_1_hidden_3/ActivityRegularizer/PartitionedCall:output:0.branch_1_hidden_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2/
-branch_1_hidden_3/ActivityRegularizer/truediv�
'branch_1_output/StatefulPartitionedCallStatefulPartitionedCall2branch_1_hidden_3/StatefulPartitionedCall:output:0branch_1_output_5159080branch_1_output_5159082*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_branch_1_output_layer_call_and_return_conditional_losses_51590792)
'branch_1_output/StatefulPartitionedCall�
0bottleneck/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpbottleneck_5158991*
_output_shapes

:2*
dtype022
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp�
!bottleneck/kernel/Regularizer/AbsAbs8bottleneck/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:22#
!bottleneck/kernel/Regularizer/Abs�
#bottleneck/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#bottleneck/kernel/Regularizer/Const�
!bottleneck/kernel/Regularizer/SumSum%bottleneck/kernel/Regularizer/Abs:y:0,bottleneck/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/Sum�
#bottleneck/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#bottleneck/kernel/Regularizer/mul/x�
!bottleneck/kernel/Regularizer/mulMul,bottleneck/kernel/Regularizer/mul/x:output:0*bottleneck/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!bottleneck/kernel/Regularizer/mul�
IdentityIdentity0branch_1_output/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityv

Identity_1Identity(hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_1v

Identity_2Identity(hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity1branch_1_hidden_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3

Identity_4Identity1branch_1_hidden_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_4

Identity_5Identity1branch_1_hidden_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_5�
NoOpNoOp#^bottleneck/StatefulPartitionedCall1^bottleneck/kernel/Regularizer/Abs/ReadVariableOp*^branch_1_hidden_1/StatefulPartitionedCall*^branch_1_hidden_2/StatefulPartitionedCall*^branch_1_hidden_3/StatefulPartitionedCall(^branch_1_output/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : 2H
"bottleneck/StatefulPartitionedCall"bottleneck/StatefulPartitionedCall2d
0bottleneck/kernel/Regularizer/Abs/ReadVariableOp0bottleneck/kernel/Regularizer/Abs/ReadVariableOp2V
)branch_1_hidden_1/StatefulPartitionedCall)branch_1_hidden_1/StatefulPartitionedCall2V
)branch_1_hidden_2/StatefulPartitionedCall)branch_1_hidden_2/StatefulPartitionedCall2V
)branch_1_hidden_3/StatefulPartitionedCall)branch_1_hidden_3/StatefulPartitionedCall2R
'branch_1_output/StatefulPartitionedCall'branch_1_output/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_hidden_2_layer_call_and_return_all_conditional_losses_5160017

inputs
unknown:22
	unknown_0:2
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
:���������2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hidden_2_layer_call_and_return_conditional_losses_51589632
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
1__inference_hidden_2_activity_regularizer_51588812
PartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������22

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
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_layer4
serving_default_input_layer:0���������D
branch_1_output1
StatefulPartitionedCall:0����������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		optimizer

loss
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+�&call_and_return_all_conditional_losses
�_default_save_signature
�__call__"
_tf_keras_network
"
_tf_keras_input_layer
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

kernel
regularization_losses
trainable_variables
	variables
 	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

!kernel
"bias
#regularization_losses
$trainable_variables
%	variables
&	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

'kernel
(bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

-kernel
.bias
/regularization_losses
0trainable_variables
1	variables
2	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
9iter

:beta_1

;beta_2
	<decay
=learning_ratemqmrmsmtmu!mv"mw'mx(my-mz.m{3m|4m}v~vv�v�v�!v�"v�'v�(v�-v�.v�3v�4v�"
	optimizer
 "
trackable_dict_wrapper
(
�0"
trackable_list_wrapper
~
0
1
2
3
4
!5
"6
'7
(8
-9
.10
311
412"
trackable_list_wrapper
~
0
1
2
3
4
!5
"6
'7
(8
-9
.10
311
412"
trackable_list_wrapper
�
>layer_regularization_losses
regularization_losses
trainable_variables
?metrics
@non_trainable_variables
Alayer_metrics
	variables

Blayers
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
!:22hidden_1/kernel
:22hidden_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Clayer_regularization_losses
regularization_losses
trainable_variables
Dmetrics
Enon_trainable_variables
Flayer_metrics
	variables

Glayers
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:222hidden_2/kernel
:22hidden_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Hlayer_regularization_losses
regularization_losses
trainable_variables
Imetrics
Jnon_trainable_variables
Klayer_metrics
	variables

Llayers
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!22bottleneck/kernel
(
�0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Mlayer_regularization_losses
regularization_losses
trainable_variables
Nmetrics
Onon_trainable_variables
Player_metrics
	variables

Qlayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
+:)	�2branch_1_hidden_1/kernel
%:#�2branch_1_hidden_1/bias
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
�
Rlayer_regularization_losses
#regularization_losses
$trainable_variables
Smetrics
Tnon_trainable_variables
Ulayer_metrics
%	variables

Vlayers
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
,:*
��2branch_1_hidden_2/kernel
%:#�2branch_1_hidden_2/bias
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
�
Wlayer_regularization_losses
)regularization_losses
*trainable_variables
Xmetrics
Ynon_trainable_variables
Zlayer_metrics
+	variables

[layers
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
,:*
��2branch_1_hidden_3/kernel
%:#�2branch_1_hidden_3/bias
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
�
\layer_regularization_losses
/regularization_losses
0trainable_variables
]metrics
^non_trainable_variables
_layer_metrics
1	variables

`layers
�__call__
�activity_regularizer_fn
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(
��2branch_1_output/kernel
#:!�2branch_1_output/bias
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
�
alayer_regularization_losses
5regularization_losses
6trainable_variables
bmetrics
cnon_trainable_variables
dlayer_metrics
7	variables

elayers
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
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
6
7"
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
(
�0"
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
	htotal
	icount
j	variables
k	keras_api"
_tf_keras_metric
^
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
&:$22Adam/hidden_1/kernel/m
 :22Adam/hidden_1/bias/m
&:$222Adam/hidden_2/kernel/m
 :22Adam/hidden_2/bias/m
(:&22Adam/bottleneck/kernel/m
0:.	�2Adam/branch_1_hidden_1/kernel/m
*:(�2Adam/branch_1_hidden_1/bias/m
1:/
��2Adam/branch_1_hidden_2/kernel/m
*:(�2Adam/branch_1_hidden_2/bias/m
1:/
��2Adam/branch_1_hidden_3/kernel/m
*:(�2Adam/branch_1_hidden_3/bias/m
/:-
��2Adam/branch_1_output/kernel/m
(:&�2Adam/branch_1_output/bias/m
&:$22Adam/hidden_1/kernel/v
 :22Adam/hidden_1/bias/v
&:$222Adam/hidden_2/kernel/v
 :22Adam/hidden_2/bias/v
(:&22Adam/bottleneck/kernel/v
0:.	�2Adam/branch_1_hidden_1/kernel/v
*:(�2Adam/branch_1_hidden_1/bias/v
1:/
��2Adam/branch_1_hidden_2/kernel/v
*:(�2Adam/branch_1_hidden_2/bias/v
1:/
��2Adam/branch_1_hidden_3/kernel/v
*:(�2Adam/branch_1_hidden_3/bias/v
/:-
��2Adam/branch_1_output/kernel/v
(:&�2Adam/branch_1_output/bias/v
�2�
E__inference_model_38_layer_call_and_return_conditional_losses_5159795
E__inference_model_38_layer_call_and_return_conditional_losses_5159914
E__inference_model_38_layer_call_and_return_conditional_losses_5159543
E__inference_model_38_layer_call_and_return_conditional_losses_5159631�
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
"__inference__wrapped_model_5158855input_layer"�
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
�2�
*__inference_model_38_layer_call_fn_5159131
*__inference_model_38_layer_call_fn_5159950
*__inference_model_38_layer_call_fn_5159986
*__inference_model_38_layer_call_fn_5159455�
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
I__inference_hidden_1_layer_call_and_return_all_conditional_losses_5159997�
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
*__inference_hidden_1_layer_call_fn_5160006�
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
I__inference_hidden_2_layer_call_and_return_all_conditional_losses_5160017�
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
*__inference_hidden_2_layer_call_fn_5160026�
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
G__inference_bottleneck_layer_call_and_return_conditional_losses_5160045�
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
,__inference_bottleneck_layer_call_fn_5160052�
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
R__inference_branch_1_hidden_1_layer_call_and_return_all_conditional_losses_5160063�
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
3__inference_branch_1_hidden_1_layer_call_fn_5160072�
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
R__inference_branch_1_hidden_2_layer_call_and_return_all_conditional_losses_5160083�
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
3__inference_branch_1_hidden_2_layer_call_fn_5160092�
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
R__inference_branch_1_hidden_3_layer_call_and_return_all_conditional_losses_5160103�
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
3__inference_branch_1_hidden_3_layer_call_fn_5160112�
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
L__inference_branch_1_output_layer_call_and_return_conditional_losses_5160122�
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
1__inference_branch_1_output_layer_call_fn_5160131�
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
__inference_loss_fn_0_5160142�
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
%__inference_signature_wrapper_5159676input_layer"�
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
1__inference_hidden_1_activity_regularizer_5158868�
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
E__inference_hidden_1_layer_call_and_return_conditional_losses_5160153�
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
1__inference_hidden_2_activity_regularizer_5158881�
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
E__inference_hidden_2_layer_call_and_return_conditional_losses_5160164�
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
:__inference_branch_1_hidden_1_activity_regularizer_5158894�
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
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_5160175�
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
:__inference_branch_1_hidden_2_activity_regularizer_5158907�
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
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_5160186�
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
:__inference_branch_1_hidden_3_activity_regularizer_5158920�
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
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_5160197�
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
"__inference__wrapped_model_5158855�!"'(-.344�1
*�'
%�"
input_layer���������
� "B�?
=
branch_1_output*�'
branch_1_output�����������
G__inference_bottleneck_layer_call_and_return_conditional_losses_5160045[/�,
%�"
 �
inputs���������2
� "%�"
�
0���������
� ~
,__inference_bottleneck_layer_call_fn_5160052N/�,
%�"
 �
inputs���������2
� "����������d
:__inference_branch_1_hidden_1_activity_regularizer_5158894&�
�
�	
x
� "� �
R__inference_branch_1_hidden_1_layer_call_and_return_all_conditional_losses_5160063k!"/�,
%�"
 �
inputs���������
� "4�1
�
0����������
�
�	
1/0 �
N__inference_branch_1_hidden_1_layer_call_and_return_conditional_losses_5160175]!"/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
3__inference_branch_1_hidden_1_layer_call_fn_5160072P!"/�,
%�"
 �
inputs���������
� "�����������d
:__inference_branch_1_hidden_2_activity_regularizer_5158907&�
�
�	
x
� "� �
R__inference_branch_1_hidden_2_layer_call_and_return_all_conditional_losses_5160083l'(0�-
&�#
!�
inputs����������
� "4�1
�
0����������
�
�	
1/0 �
N__inference_branch_1_hidden_2_layer_call_and_return_conditional_losses_5160186^'(0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
3__inference_branch_1_hidden_2_layer_call_fn_5160092Q'(0�-
&�#
!�
inputs����������
� "�����������d
:__inference_branch_1_hidden_3_activity_regularizer_5158920&�
�
�	
x
� "� �
R__inference_branch_1_hidden_3_layer_call_and_return_all_conditional_losses_5160103l-.0�-
&�#
!�
inputs����������
� "4�1
�
0����������
�
�	
1/0 �
N__inference_branch_1_hidden_3_layer_call_and_return_conditional_losses_5160197^-.0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
3__inference_branch_1_hidden_3_layer_call_fn_5160112Q-.0�-
&�#
!�
inputs����������
� "������������
L__inference_branch_1_output_layer_call_and_return_conditional_losses_5160122^340�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
1__inference_branch_1_output_layer_call_fn_5160131Q340�-
&�#
!�
inputs����������
� "�����������[
1__inference_hidden_1_activity_regularizer_5158868&�
�
�	
x
� "� �
I__inference_hidden_1_layer_call_and_return_all_conditional_losses_5159997j/�,
%�"
 �
inputs���������
� "3�0
�
0���������2
�
�	
1/0 �
E__inference_hidden_1_layer_call_and_return_conditional_losses_5160153\/�,
%�"
 �
inputs���������
� "%�"
�
0���������2
� }
*__inference_hidden_1_layer_call_fn_5160006O/�,
%�"
 �
inputs���������
� "����������2[
1__inference_hidden_2_activity_regularizer_5158881&�
�
�	
x
� "� �
I__inference_hidden_2_layer_call_and_return_all_conditional_losses_5160017j/�,
%�"
 �
inputs���������2
� "3�0
�
0���������2
�
�	
1/0 �
E__inference_hidden_2_layer_call_and_return_conditional_losses_5160164\/�,
%�"
 �
inputs���������2
� "%�"
�
0���������2
� }
*__inference_hidden_2_layer_call_fn_5160026O/�,
%�"
 �
inputs���������2
� "����������2<
__inference_loss_fn_0_5160142�

� 
� "� �
E__inference_model_38_layer_call_and_return_conditional_losses_5159543�!"'(-.34<�9
2�/
%�"
input_layer���������
p 

 
� "l�i
�
0����������
I�F
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 
�	
1/4 �
E__inference_model_38_layer_call_and_return_conditional_losses_5159631�!"'(-.34<�9
2�/
%�"
input_layer���������
p

 
� "l�i
�
0����������
I�F
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 
�	
1/4 �
E__inference_model_38_layer_call_and_return_conditional_losses_5159795�!"'(-.347�4
-�*
 �
inputs���������
p 

 
� "l�i
�
0����������
I�F
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 
�	
1/4 �
E__inference_model_38_layer_call_and_return_conditional_losses_5159914�!"'(-.347�4
-�*
 �
inputs���������
p

 
� "l�i
�
0����������
I�F
�	
1/0 
�	
1/1 
�	
1/2 
�	
1/3 
�	
1/4 �
*__inference_model_38_layer_call_fn_5159131h!"'(-.34<�9
2�/
%�"
input_layer���������
p 

 
� "������������
*__inference_model_38_layer_call_fn_5159455h!"'(-.34<�9
2�/
%�"
input_layer���������
p

 
� "������������
*__inference_model_38_layer_call_fn_5159950c!"'(-.347�4
-�*
 �
inputs���������
p 

 
� "������������
*__inference_model_38_layer_call_fn_5159986c!"'(-.347�4
-�*
 �
inputs���������
p

 
� "������������
%__inference_signature_wrapper_5159676�!"'(-.34C�@
� 
9�6
4
input_layer%�"
input_layer���������"B�?
=
branch_1_output*�'
branch_1_output����������