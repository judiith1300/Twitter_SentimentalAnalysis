??+
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??)
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
??*
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
?
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namelstm/lstm_cell/kernel
?
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel* 
_output_shapes
:
??*
dtype0
?
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*0
shared_name!lstm/lstm_cell/recurrent_kernel
?
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:?*
dtype0
?
 module_wrapper_9/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" module_wrapper_9/dense_10/kernel
?
4module_wrapper_9/dense_10/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_9/dense_10/kernel*
_output_shapes
:	?*
dtype0
?
module_wrapper_9/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name module_wrapper_9/dense_10/bias
?
2module_wrapper_9/dense_10/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_9/dense_10/bias*
_output_shapes
:*
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
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/lstm/lstm_cell/kernel/m
?
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m* 
_output_shapes
:
??*
dtype0
?
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
?
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/lstm/lstm_cell/bias/m
?
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_9/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/module_wrapper_9/dense_10/kernel/m
?
;Adam/module_wrapper_9/dense_10/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_9/dense_10/kernel/m*
_output_shapes
:	?*
dtype0
?
%Adam/module_wrapper_9/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_9/dense_10/bias/m
?
9Adam/module_wrapper_9/dense_10/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_9/dense_10/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/lstm/lstm_cell/kernel/v
?
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v* 
_output_shapes
:
??*
dtype0
?
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
?
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/lstm/lstm_cell/bias/v
?
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:?*
dtype0
?
'Adam/module_wrapper_9/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/module_wrapper_9/dense_10/kernel/v
?
;Adam/module_wrapper_9/dense_10/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_9/dense_10/kernel/v*
_output_shapes
:	?*
dtype0
?
%Adam/module_wrapper_9/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/module_wrapper_9/dense_10/bias/v
?
9Adam/module_wrapper_9/dense_10/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_9/dense_10/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?/
value?/B?/ B?/
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer

signatures
#_self_saveable_object_factories
trainable_variables
		variables

regularization_losses
	keras_api
?

embeddings
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
_
_module
trainable_variables
 	variables
!regularization_losses
"	keras_api
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratemf(mg)mh*mi+mj,mkvl(vm)vn*vo+vp,vq
 
 
*
0
(1
)2
*3
+4
,5
*
0
(1
)2
*3
+4
,5
 
?
-metrics
.layer_metrics
trainable_variables
/layer_regularization_losses
0non_trainable_variables
		variables

regularization_losses

1layers
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
 
?
2metrics
3layer_metrics
trainable_variables
4layer_regularization_losses
5non_trainable_variables
	variables
regularization_losses

6layers
 
 
 
 
?
7metrics
8layer_metrics
trainable_variables
9layer_regularization_losses
:non_trainable_variables
	variables
regularization_losses

;layers
?
<
state_size

(kernel
)recurrent_kernel
*bias
#=_self_saveable_object_factories
>trainable_variables
?	variables
@regularization_losses
A	keras_api
 
 

(0
)1
*2

(0
)1
*2
 
?
Bmetrics
Clayer_metrics
trainable_variables
Dlayer_regularization_losses

Estates
Fnon_trainable_variables
	variables
regularization_losses

Glayers
h

+kernel
,bias
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api

+0
,1

+0
,1
 
?
Lmetrics
Mlayer_metrics
trainable_variables
Nlayer_regularization_losses
Onon_trainable_variables
 	variables
!regularization_losses

Players
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
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_9/dense_10/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_9/dense_10/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE

Q0
R1
 
 
 

0
1
2
3
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

(0
)1
*2

(0
)1
*2
 
?
Smetrics
Tlayer_metrics
>trainable_variables
Ulayer_regularization_losses
Vnon_trainable_variables
?	variables
@regularization_losses

Wlayers
 
 
 
 
 

0

+0
,1

+0
,1
 
?
Xmetrics
Ylayer_metrics
Htrainable_variables
Zlayer_regularization_losses
[non_trainable_variables
I	variables
Jregularization_losses

\layers
 
 
 
 
 
4
	]total
	^count
_	variables
`	keras_api
D
	atotal
	bcount
c
_fn_kwargs
d	variables
e	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

]0
^1

_	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

a0
b1

d	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_9/dense_10/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_9/dense_10/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_9/dense_10/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_9/dense_10/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_embedding_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kernel module_wrapper_9/dense_10/kernelmodule_wrapper_9/dense_10/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_237585
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp4module_wrapper_9/dense_10/kernel/Read/ReadVariableOp2module_wrapper_9/dense_10/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp;Adam/module_wrapper_9/dense_10/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_9/dense_10/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOp;Adam/module_wrapper_9/dense_10/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_9/dense_10/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_240095
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias module_wrapper_9/dense_10/kernelmodule_wrapper_9/dense_10/biastotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/m'Adam/module_wrapper_9/dense_10/kernel/m%Adam/module_wrapper_9/dense_10/bias/mAdam/embedding/embeddings/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v'Adam/module_wrapper_9/dense_10/kernel/v%Adam/module_wrapper_9/dense_10/bias/v*'
Tin 
2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_240186??(
?
?
%__inference_lstm_layer_call_fn_239667
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2363982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
+__inference_sequential_layer_call_fn_236978
embedding_input
unknown:
??
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2369632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_nameembedding_input
??
?

lstm_while_body_237709&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0K
7lstm_while_lstm_cell_46_split_readvariableop_resource_0:
??H
9lstm_while_lstm_cell_46_split_1_readvariableop_resource_0:	?E
1lstm_while_lstm_cell_46_readvariableop_resource_0:
??
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorI
5lstm_while_lstm_cell_46_split_readvariableop_resource:
??F
7lstm_while_lstm_cell_46_split_1_readvariableop_resource:	?C
/lstm_while_lstm_cell_46_readvariableop_resource:
????&lstm/while/lstm_cell_46/ReadVariableOp?(lstm/while/lstm_cell_46/ReadVariableOp_1?(lstm/while/lstm_cell_46/ReadVariableOp_2?(lstm/while/lstm_cell_46/ReadVariableOp_3?,lstm/while/lstm_cell_46/split/ReadVariableOp?.lstm/while/lstm_cell_46/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
'lstm/while/lstm_cell_46/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/ones_like/Shape?
'lstm/while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/ones_like/Const?
!lstm/while/lstm_cell_46/ones_likeFill0lstm/while/lstm_cell_46/ones_like/Shape:output:00lstm/while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/ones_like?
)lstm/while/lstm_cell_46/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2+
)lstm/while/lstm_cell_46/ones_like_1/Shape?
)lstm/while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)lstm/while/lstm_cell_46/ones_like_1/Const?
#lstm/while/lstm_cell_46/ones_like_1Fill2lstm/while/lstm_cell_46/ones_like_1/Shape:output:02lstm/while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell_46/ones_like_1?
lstm/while/lstm_cell_46/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul?
lstm/while/lstm_cell_46/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_1?
lstm/while/lstm_cell_46/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_2?
lstm/while/lstm_cell_46/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_3?
'lstm/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'lstm/while/lstm_cell_46/split/split_dim?
,lstm/while/lstm_cell_46/split/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,lstm/while/lstm_cell_46/split/ReadVariableOp?
lstm/while/lstm_cell_46/splitSplit0lstm/while/lstm_cell_46/split/split_dim:output:04lstm/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm/while/lstm_cell_46/split?
lstm/while/lstm_cell_46/MatMulMatMullstm/while/lstm_cell_46/mul:z:0&lstm/while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell_46/MatMul?
 lstm/while/lstm_cell_46/MatMul_1MatMul!lstm/while/lstm_cell_46/mul_1:z:0&lstm/while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_1?
 lstm/while/lstm_cell_46/MatMul_2MatMul!lstm/while/lstm_cell_46/mul_2:z:0&lstm/while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_2?
 lstm/while/lstm_cell_46/MatMul_3MatMul!lstm/while/lstm_cell_46/mul_3:z:0&lstm/while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_3?
)lstm/while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2+
)lstm/while/lstm_cell_46/split_1/split_dim?
.lstm/while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp9lstm_while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype020
.lstm/while/lstm_cell_46/split_1/ReadVariableOp?
lstm/while/lstm_cell_46/split_1Split2lstm/while/lstm_cell_46/split_1/split_dim:output:06lstm/while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2!
lstm/while/lstm_cell_46/split_1?
lstm/while/lstm_cell_46/BiasAddBiasAdd(lstm/while/lstm_cell_46/MatMul:product:0(lstm/while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2!
lstm/while/lstm_cell_46/BiasAdd?
!lstm/while/lstm_cell_46/BiasAdd_1BiasAdd*lstm/while/lstm_cell_46/MatMul_1:product:0(lstm/while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/BiasAdd_1?
!lstm/while/lstm_cell_46/BiasAdd_2BiasAdd*lstm/while/lstm_cell_46/MatMul_2:product:0(lstm/while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/BiasAdd_2?
!lstm/while/lstm_cell_46/BiasAdd_3BiasAdd*lstm/while/lstm_cell_46/MatMul_3:product:0(lstm/while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/BiasAdd_3?
lstm/while/lstm_cell_46/mul_4Mullstm_while_placeholder_2,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_4?
lstm/while/lstm_cell_46/mul_5Mullstm_while_placeholder_2,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_5?
lstm/while/lstm_cell_46/mul_6Mullstm_while_placeholder_2,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_6?
lstm/while/lstm_cell_46/mul_7Mullstm_while_placeholder_2,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_7?
&lstm/while/lstm_cell_46/ReadVariableOpReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&lstm/while/lstm_cell_46/ReadVariableOp?
+lstm/while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+lstm/while/lstm_cell_46/strided_slice/stack?
-lstm/while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2/
-lstm/while/lstm_cell_46/strided_slice/stack_1?
-lstm/while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-lstm/while/lstm_cell_46/strided_slice/stack_2?
%lstm/while/lstm_cell_46/strided_sliceStridedSlice.lstm/while/lstm_cell_46/ReadVariableOp:value:04lstm/while/lstm_cell_46/strided_slice/stack:output:06lstm/while/lstm_cell_46/strided_slice/stack_1:output:06lstm/while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2'
%lstm/while/lstm_cell_46/strided_slice?
 lstm/while/lstm_cell_46/MatMul_4MatMul!lstm/while/lstm_cell_46/mul_4:z:0.lstm/while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_4?
lstm/while/lstm_cell_46/addAddV2(lstm/while/lstm_cell_46/BiasAdd:output:0*lstm/while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add?
lstm/while/lstm_cell_46/SigmoidSigmoidlstm/while/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2!
lstm/while/lstm_cell_46/Sigmoid?
(lstm/while/lstm_cell_46/ReadVariableOp_1ReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(lstm/while/lstm_cell_46/ReadVariableOp_1?
-lstm/while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2/
-lstm/while/lstm_cell_46/strided_slice_1/stack?
/lstm/while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  21
/lstm/while/lstm_cell_46/strided_slice_1/stack_1?
/lstm/while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm/while/lstm_cell_46/strided_slice_1/stack_2?
'lstm/while/lstm_cell_46/strided_slice_1StridedSlice0lstm/while/lstm_cell_46/ReadVariableOp_1:value:06lstm/while/lstm_cell_46/strided_slice_1/stack:output:08lstm/while/lstm_cell_46/strided_slice_1/stack_1:output:08lstm/while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'lstm/while/lstm_cell_46/strided_slice_1?
 lstm/while/lstm_cell_46/MatMul_5MatMul!lstm/while/lstm_cell_46/mul_5:z:00lstm/while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_5?
lstm/while/lstm_cell_46/add_1AddV2*lstm/while/lstm_cell_46/BiasAdd_1:output:0*lstm/while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_1?
!lstm/while/lstm_cell_46/Sigmoid_1Sigmoid!lstm/while/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/Sigmoid_1?
lstm/while/lstm_cell_46/mul_8Mul%lstm/while/lstm_cell_46/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_8?
(lstm/while/lstm_cell_46/ReadVariableOp_2ReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(lstm/while/lstm_cell_46/ReadVariableOp_2?
-lstm/while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2/
-lstm/while/lstm_cell_46/strided_slice_2/stack?
/lstm/while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  21
/lstm/while/lstm_cell_46/strided_slice_2/stack_1?
/lstm/while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm/while/lstm_cell_46/strided_slice_2/stack_2?
'lstm/while/lstm_cell_46/strided_slice_2StridedSlice0lstm/while/lstm_cell_46/ReadVariableOp_2:value:06lstm/while/lstm_cell_46/strided_slice_2/stack:output:08lstm/while/lstm_cell_46/strided_slice_2/stack_1:output:08lstm/while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'lstm/while/lstm_cell_46/strided_slice_2?
 lstm/while/lstm_cell_46/MatMul_6MatMul!lstm/while/lstm_cell_46/mul_6:z:00lstm/while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_6?
lstm/while/lstm_cell_46/add_2AddV2*lstm/while/lstm_cell_46/BiasAdd_2:output:0*lstm/while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_2?
lstm/while/lstm_cell_46/TanhTanh!lstm/while/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/Tanh?
lstm/while/lstm_cell_46/mul_9Mul#lstm/while/lstm_cell_46/Sigmoid:y:0 lstm/while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_9?
lstm/while/lstm_cell_46/add_3AddV2!lstm/while/lstm_cell_46/mul_8:z:0!lstm/while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_3?
(lstm/while/lstm_cell_46/ReadVariableOp_3ReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(lstm/while/lstm_cell_46/ReadVariableOp_3?
-lstm/while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2/
-lstm/while/lstm_cell_46/strided_slice_3/stack?
/lstm/while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/lstm/while/lstm_cell_46/strided_slice_3/stack_1?
/lstm/while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm/while/lstm_cell_46/strided_slice_3/stack_2?
'lstm/while/lstm_cell_46/strided_slice_3StridedSlice0lstm/while/lstm_cell_46/ReadVariableOp_3:value:06lstm/while/lstm_cell_46/strided_slice_3/stack:output:08lstm/while/lstm_cell_46/strided_slice_3/stack_1:output:08lstm/while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'lstm/while/lstm_cell_46/strided_slice_3?
 lstm/while/lstm_cell_46/MatMul_7MatMul!lstm/while/lstm_cell_46/mul_7:z:00lstm/while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_7?
lstm/while/lstm_cell_46/add_4AddV2*lstm/while/lstm_cell_46/BiasAdd_3:output:0*lstm/while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_4?
!lstm/while/lstm_cell_46/Sigmoid_2Sigmoid!lstm/while/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/Sigmoid_2?
lstm/while/lstm_cell_46/Tanh_1Tanh!lstm/while/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell_46/Tanh_1?
lstm/while/lstm_cell_46/mul_10Mul%lstm/while/lstm_cell_46/Sigmoid_2:y:0"lstm/while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell_46/mul_10?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder"lstm/while/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1?
lstm/while/IdentityIdentitylstm/while/add_1:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identity"lstm/while/lstm_cell_46/mul_10:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_4?
lstm/while/Identity_5Identity!lstm/while/lstm_cell_46/add_3:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"d
/lstm_while_lstm_cell_46_readvariableop_resource1lstm_while_lstm_cell_46_readvariableop_resource_0"t
7lstm_while_lstm_cell_46_split_1_readvariableop_resource9lstm_while_lstm_cell_46_split_1_readvariableop_resource_0"p
5lstm_while_lstm_cell_46_split_readvariableop_resource7lstm_while_lstm_cell_46_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&lstm/while/lstm_cell_46/ReadVariableOp&lstm/while/lstm_cell_46/ReadVariableOp2T
(lstm/while/lstm_cell_46/ReadVariableOp_1(lstm/while/lstm_cell_46/ReadVariableOp_12T
(lstm/while/lstm_cell_46/ReadVariableOp_2(lstm/while/lstm_cell_46/ReadVariableOp_22T
(lstm/while/lstm_cell_46/ReadVariableOp_3(lstm/while/lstm_cell_46/ReadVariableOp_32\
,lstm/while/lstm_cell_46/split/ReadVariableOp,lstm/while/lstm_cell_46/split/ReadVariableOp2`
.lstm/while/lstm_cell_46/split_1/ReadVariableOp.lstm/while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_237850

inputs5
!embedding_embedding_lookup_237589:
??C
/lstm_lstm_cell_46_split_readvariableop_resource:
??@
1lstm_lstm_cell_46_split_1_readvariableop_resource:	?=
)lstm_lstm_cell_46_readvariableop_resource:
??K
8module_wrapper_9_dense_10_matmul_readvariableop_resource:	?G
9module_wrapper_9_dense_10_biasadd_readvariableop_resource:
identity??embedding/embedding_lookup? lstm/lstm_cell_46/ReadVariableOp?"lstm/lstm_cell_46/ReadVariableOp_1?"lstm/lstm_cell_46/ReadVariableOp_2?"lstm/lstm_cell_46/ReadVariableOp_3?&lstm/lstm_cell_46/split/ReadVariableOp?(lstm/lstm_cell_46/split_1/ReadVariableOp?
lstm/while?0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp?/module_wrapper_9/dense_10/MatMul/ReadVariableOpq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_237589embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/237589*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/237589*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1?
spatial_dropout1d/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????2
spatial_dropout1d/Identityk

lstm/ShapeShape#spatial_dropout1d/Identity:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transpose#spatial_dropout1d/Identity:output:0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_2?
!lstm/lstm_cell_46/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/ones_like/Shape?
!lstm/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/ones_like/Const?
lstm/lstm_cell_46/ones_likeFill*lstm/lstm_cell_46/ones_like/Shape:output:0*lstm/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/ones_like?
#lstm/lstm_cell_46/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2%
#lstm/lstm_cell_46/ones_like_1/Shape?
#lstm/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm/lstm_cell_46/ones_like_1/Const?
lstm/lstm_cell_46/ones_like_1Fill,lstm/lstm_cell_46/ones_like_1/Shape:output:0,lstm/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/ones_like_1?
lstm/lstm_cell_46/mulMullstm/strided_slice_2:output:0$lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul?
lstm/lstm_cell_46/mul_1Mullstm/strided_slice_2:output:0$lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_1?
lstm/lstm_cell_46/mul_2Mullstm/strided_slice_2:output:0$lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_2?
lstm/lstm_cell_46/mul_3Mullstm/strided_slice_2:output:0$lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_3?
!lstm/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!lstm/lstm_cell_46/split/split_dim?
&lstm/lstm_cell_46/split/ReadVariableOpReadVariableOp/lstm_lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&lstm/lstm_cell_46/split/ReadVariableOp?
lstm/lstm_cell_46/splitSplit*lstm/lstm_cell_46/split/split_dim:output:0.lstm/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm/lstm_cell_46/split?
lstm/lstm_cell_46/MatMulMatMullstm/lstm_cell_46/mul:z:0 lstm/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul?
lstm/lstm_cell_46/MatMul_1MatMullstm/lstm_cell_46/mul_1:z:0 lstm/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_1?
lstm/lstm_cell_46/MatMul_2MatMullstm/lstm_cell_46/mul_2:z:0 lstm/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_2?
lstm/lstm_cell_46/MatMul_3MatMullstm/lstm_cell_46/mul_3:z:0 lstm/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_3?
#lstm/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#lstm/lstm_cell_46/split_1/split_dim?
(lstm/lstm_cell_46/split_1/ReadVariableOpReadVariableOp1lstm_lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(lstm/lstm_cell_46/split_1/ReadVariableOp?
lstm/lstm_cell_46/split_1Split,lstm/lstm_cell_46/split_1/split_dim:output:00lstm/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm/lstm_cell_46/split_1?
lstm/lstm_cell_46/BiasAddBiasAdd"lstm/lstm_cell_46/MatMul:product:0"lstm/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd?
lstm/lstm_cell_46/BiasAdd_1BiasAdd$lstm/lstm_cell_46/MatMul_1:product:0"lstm/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd_1?
lstm/lstm_cell_46/BiasAdd_2BiasAdd$lstm/lstm_cell_46/MatMul_2:product:0"lstm/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd_2?
lstm/lstm_cell_46/BiasAdd_3BiasAdd$lstm/lstm_cell_46/MatMul_3:product:0"lstm/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd_3?
lstm/lstm_cell_46/mul_4Mullstm/zeros:output:0&lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_4?
lstm/lstm_cell_46/mul_5Mullstm/zeros:output:0&lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_5?
lstm/lstm_cell_46/mul_6Mullstm/zeros:output:0&lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_6?
lstm/lstm_cell_46/mul_7Mullstm/zeros:output:0&lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_7?
 lstm/lstm_cell_46/ReadVariableOpReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 lstm/lstm_cell_46/ReadVariableOp?
%lstm/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm/lstm_cell_46/strided_slice/stack?
'lstm/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'lstm/lstm_cell_46/strided_slice/stack_1?
'lstm/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'lstm/lstm_cell_46/strided_slice/stack_2?
lstm/lstm_cell_46/strided_sliceStridedSlice(lstm/lstm_cell_46/ReadVariableOp:value:0.lstm/lstm_cell_46/strided_slice/stack:output:00lstm/lstm_cell_46/strided_slice/stack_1:output:00lstm/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
lstm/lstm_cell_46/strided_slice?
lstm/lstm_cell_46/MatMul_4MatMullstm/lstm_cell_46/mul_4:z:0(lstm/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_4?
lstm/lstm_cell_46/addAddV2"lstm/lstm_cell_46/BiasAdd:output:0$lstm/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add?
lstm/lstm_cell_46/SigmoidSigmoidlstm/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Sigmoid?
"lstm/lstm_cell_46/ReadVariableOp_1ReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm/lstm_cell_46/ReadVariableOp_1?
'lstm/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'lstm/lstm_cell_46/strided_slice_1/stack?
)lstm/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2+
)lstm/lstm_cell_46/strided_slice_1/stack_1?
)lstm/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm/lstm_cell_46/strided_slice_1/stack_2?
!lstm/lstm_cell_46/strided_slice_1StridedSlice*lstm/lstm_cell_46/ReadVariableOp_1:value:00lstm/lstm_cell_46/strided_slice_1/stack:output:02lstm/lstm_cell_46/strided_slice_1/stack_1:output:02lstm/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!lstm/lstm_cell_46/strided_slice_1?
lstm/lstm_cell_46/MatMul_5MatMullstm/lstm_cell_46/mul_5:z:0*lstm/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_5?
lstm/lstm_cell_46/add_1AddV2$lstm/lstm_cell_46/BiasAdd_1:output:0$lstm/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_1?
lstm/lstm_cell_46/Sigmoid_1Sigmoidlstm/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Sigmoid_1?
lstm/lstm_cell_46/mul_8Mullstm/lstm_cell_46/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_8?
"lstm/lstm_cell_46/ReadVariableOp_2ReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm/lstm_cell_46/ReadVariableOp_2?
'lstm/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'lstm/lstm_cell_46/strided_slice_2/stack?
)lstm/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)lstm/lstm_cell_46/strided_slice_2/stack_1?
)lstm/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm/lstm_cell_46/strided_slice_2/stack_2?
!lstm/lstm_cell_46/strided_slice_2StridedSlice*lstm/lstm_cell_46/ReadVariableOp_2:value:00lstm/lstm_cell_46/strided_slice_2/stack:output:02lstm/lstm_cell_46/strided_slice_2/stack_1:output:02lstm/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!lstm/lstm_cell_46/strided_slice_2?
lstm/lstm_cell_46/MatMul_6MatMullstm/lstm_cell_46/mul_6:z:0*lstm/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_6?
lstm/lstm_cell_46/add_2AddV2$lstm/lstm_cell_46/BiasAdd_2:output:0$lstm/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_2?
lstm/lstm_cell_46/TanhTanhlstm/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Tanh?
lstm/lstm_cell_46/mul_9Mullstm/lstm_cell_46/Sigmoid:y:0lstm/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_9?
lstm/lstm_cell_46/add_3AddV2lstm/lstm_cell_46/mul_8:z:0lstm/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_3?
"lstm/lstm_cell_46/ReadVariableOp_3ReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm/lstm_cell_46/ReadVariableOp_3?
'lstm/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'lstm/lstm_cell_46/strided_slice_3/stack?
)lstm/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)lstm/lstm_cell_46/strided_slice_3/stack_1?
)lstm/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm/lstm_cell_46/strided_slice_3/stack_2?
!lstm/lstm_cell_46/strided_slice_3StridedSlice*lstm/lstm_cell_46/ReadVariableOp_3:value:00lstm/lstm_cell_46/strided_slice_3/stack:output:02lstm/lstm_cell_46/strided_slice_3/stack_1:output:02lstm/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!lstm/lstm_cell_46/strided_slice_3?
lstm/lstm_cell_46/MatMul_7MatMullstm/lstm_cell_46/mul_7:z:0*lstm/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_7?
lstm/lstm_cell_46/add_4AddV2$lstm/lstm_cell_46/BiasAdd_3:output:0$lstm/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_4?
lstm/lstm_cell_46/Sigmoid_2Sigmoidlstm/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Sigmoid_2?
lstm/lstm_cell_46/Tanh_1Tanhlstm/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Tanh_1?
lstm/lstm_cell_46/mul_10Mullstm/lstm_cell_46/Sigmoid_2:y:0lstm/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_10?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0/lstm_lstm_cell_46_split_readvariableop_resource1lstm_lstm_cell_46_split_1_readvariableop_resource)lstm_lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*"
bodyR
lstm_while_body_237709*"
condR
lstm_while_cond_237708*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
/module_wrapper_9/dense_10/MatMul/ReadVariableOpReadVariableOp8module_wrapper_9_dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_9/dense_10/MatMul/ReadVariableOp?
 module_wrapper_9/dense_10/MatMulMatMullstm/strided_slice_3:output:07module_wrapper_9/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_9/dense_10/MatMul?
0module_wrapper_9/dense_10/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_9_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp?
!module_wrapper_9/dense_10/BiasAddBiasAdd*module_wrapper_9/dense_10/MatMul:product:08module_wrapper_9/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_9/dense_10/BiasAdd?
!module_wrapper_9/dense_10/SoftmaxSoftmax*module_wrapper_9/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_9/dense_10/Softmax?
IdentityIdentity+module_wrapper_9/dense_10/Softmax:softmax:0^embedding/embedding_lookup!^lstm/lstm_cell_46/ReadVariableOp#^lstm/lstm_cell_46/ReadVariableOp_1#^lstm/lstm_cell_46/ReadVariableOp_2#^lstm/lstm_cell_46/ReadVariableOp_3'^lstm/lstm_cell_46/split/ReadVariableOp)^lstm/lstm_cell_46/split_1/ReadVariableOp^lstm/while1^module_wrapper_9/dense_10/BiasAdd/ReadVariableOp0^module_wrapper_9/dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 28
embedding/embedding_lookupembedding/embedding_lookup2D
 lstm/lstm_cell_46/ReadVariableOp lstm/lstm_cell_46/ReadVariableOp2H
"lstm/lstm_cell_46/ReadVariableOp_1"lstm/lstm_cell_46/ReadVariableOp_12H
"lstm/lstm_cell_46/ReadVariableOp_2"lstm/lstm_cell_46/ReadVariableOp_22H
"lstm/lstm_cell_46/ReadVariableOp_3"lstm/lstm_cell_46/ReadVariableOp_32P
&lstm/lstm_cell_46/split/ReadVariableOp&lstm/lstm_cell_46/split/ReadVariableOp2T
(lstm/lstm_cell_46/split_1/ReadVariableOp(lstm/lstm_cell_46/split_1/ReadVariableOp2

lstm/while
lstm/while2d
0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp2b
/module_wrapper_9/dense_10/MatMul/ReadVariableOp/module_wrapper_9/dense_10/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_238260

inputs5
!embedding_embedding_lookup_237854:
??C
/lstm_lstm_cell_46_split_readvariableop_resource:
??@
1lstm_lstm_cell_46_split_1_readvariableop_resource:	?=
)lstm_lstm_cell_46_readvariableop_resource:
??K
8module_wrapper_9_dense_10_matmul_readvariableop_resource:	?G
9module_wrapper_9_dense_10_biasadd_readvariableop_resource:
identity??embedding/embedding_lookup? lstm/lstm_cell_46/ReadVariableOp?"lstm/lstm_cell_46/ReadVariableOp_1?"lstm/lstm_cell_46/ReadVariableOp_2?"lstm/lstm_cell_46/ReadVariableOp_3?&lstm/lstm_cell_46/split/ReadVariableOp?(lstm/lstm_cell_46/split_1/ReadVariableOp?
lstm/while?0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp?/module_wrapper_9/dense_10/MatMul/ReadVariableOpq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_237854embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/237854*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/237854*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1?
spatial_dropout1d/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d/Shape?
%spatial_dropout1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%spatial_dropout1d/strided_slice/stack?
'spatial_dropout1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'spatial_dropout1d/strided_slice/stack_1?
'spatial_dropout1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'spatial_dropout1d/strided_slice/stack_2?
spatial_dropout1d/strided_sliceStridedSlice spatial_dropout1d/Shape:output:0.spatial_dropout1d/strided_slice/stack:output:00spatial_dropout1d/strided_slice/stack_1:output:00spatial_dropout1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
spatial_dropout1d/strided_slice?
'spatial_dropout1d/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'spatial_dropout1d/strided_slice_1/stack?
)spatial_dropout1d/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d/strided_slice_1/stack_1?
)spatial_dropout1d/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d/strided_slice_1/stack_2?
!spatial_dropout1d/strided_slice_1StridedSlice spatial_dropout1d/Shape:output:00spatial_dropout1d/strided_slice_1/stack:output:02spatial_dropout1d/strided_slice_1/stack_1:output:02spatial_dropout1d/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d/strided_slice_1?
spatial_dropout1d/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2!
spatial_dropout1d/dropout/Const?
spatial_dropout1d/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0(spatial_dropout1d/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
spatial_dropout1d/dropout/Mul?
0spatial_dropout1d/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
0spatial_dropout1d/dropout/random_uniform/shape/1?
.spatial_dropout1d/dropout/random_uniform/shapePack(spatial_dropout1d/strided_slice:output:09spatial_dropout1d/dropout/random_uniform/shape/1:output:0*spatial_dropout1d/strided_slice_1:output:0*
N*
T0*
_output_shapes
:20
.spatial_dropout1d/dropout/random_uniform/shape?
6spatial_dropout1d/dropout/random_uniform/RandomUniformRandomUniform7spatial_dropout1d/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype028
6spatial_dropout1d/dropout/random_uniform/RandomUniform?
(spatial_dropout1d/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2*
(spatial_dropout1d/dropout/GreaterEqual/y?
&spatial_dropout1d/dropout/GreaterEqualGreaterEqual?spatial_dropout1d/dropout/random_uniform/RandomUniform:output:01spatial_dropout1d/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&spatial_dropout1d/dropout/GreaterEqual?
spatial_dropout1d/dropout/CastCast*spatial_dropout1d/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2 
spatial_dropout1d/dropout/Cast?
spatial_dropout1d/dropout/Mul_1Mul!spatial_dropout1d/dropout/Mul:z:0"spatial_dropout1d/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2!
spatial_dropout1d/dropout/Mul_1k

lstm/ShapeShape#spatial_dropout1d/dropout/Mul_1:z:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transpose#spatial_dropout1d/dropout/Mul_1:z:0lstm/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_2?
!lstm/lstm_cell_46/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/ones_like/Shape?
!lstm/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/ones_like/Const?
lstm/lstm_cell_46/ones_likeFill*lstm/lstm_cell_46/ones_like/Shape:output:0*lstm/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/ones_like?
lstm/lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
lstm/lstm_cell_46/dropout/Const?
lstm/lstm_cell_46/dropout/MulMul$lstm/lstm_cell_46/ones_like:output:0(lstm/lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/dropout/Mul?
lstm/lstm_cell_46/dropout/ShapeShape$lstm/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2!
lstm/lstm_cell_46/dropout/Shape?
6lstm/lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform(lstm/lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6lstm/lstm_cell_46/dropout/random_uniform/RandomUniform?
(lstm/lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(lstm/lstm_cell_46/dropout/GreaterEqual/y?
&lstm/lstm_cell_46/dropout/GreaterEqualGreaterEqual?lstm/lstm_cell_46/dropout/random_uniform/RandomUniform:output:01lstm/lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&lstm/lstm_cell_46/dropout/GreaterEqual?
lstm/lstm_cell_46/dropout/CastCast*lstm/lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
lstm/lstm_cell_46/dropout/Cast?
lstm/lstm_cell_46/dropout/Mul_1Mul!lstm/lstm_cell_46/dropout/Mul:z:0"lstm/lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout/Mul_1?
!lstm/lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_1/Const?
lstm/lstm_cell_46/dropout_1/MulMul$lstm/lstm_cell_46/ones_like:output:0*lstm/lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_1/Mul?
!lstm/lstm_cell_46/dropout_1/ShapeShape$lstm/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_1/Shape?
8lstm/lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ʨ2:
8lstm/lstm_cell_46/dropout_1/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_1/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_1/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_1/GreaterEqual?
 lstm/lstm_cell_46/dropout_1/CastCast,lstm/lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_1/Cast?
!lstm/lstm_cell_46/dropout_1/Mul_1Mul#lstm/lstm_cell_46/dropout_1/Mul:z:0$lstm/lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_1/Mul_1?
!lstm/lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_2/Const?
lstm/lstm_cell_46/dropout_2/MulMul$lstm/lstm_cell_46/ones_like:output:0*lstm/lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_2/Mul?
!lstm/lstm_cell_46/dropout_2/ShapeShape$lstm/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_2/Shape?
8lstm/lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2:
8lstm/lstm_cell_46/dropout_2/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_2/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_2/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_2/GreaterEqual?
 lstm/lstm_cell_46/dropout_2/CastCast,lstm/lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_2/Cast?
!lstm/lstm_cell_46/dropout_2/Mul_1Mul#lstm/lstm_cell_46/dropout_2/Mul:z:0$lstm/lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_2/Mul_1?
!lstm/lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_3/Const?
lstm/lstm_cell_46/dropout_3/MulMul$lstm/lstm_cell_46/ones_like:output:0*lstm/lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_3/Mul?
!lstm/lstm_cell_46/dropout_3/ShapeShape$lstm/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_3/Shape?
8lstm/lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2:
8lstm/lstm_cell_46/dropout_3/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_3/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_3/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_3/GreaterEqual?
 lstm/lstm_cell_46/dropout_3/CastCast,lstm/lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_3/Cast?
!lstm/lstm_cell_46/dropout_3/Mul_1Mul#lstm/lstm_cell_46/dropout_3/Mul:z:0$lstm/lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_3/Mul_1?
#lstm/lstm_cell_46/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2%
#lstm/lstm_cell_46/ones_like_1/Shape?
#lstm/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm/lstm_cell_46/ones_like_1/Const?
lstm/lstm_cell_46/ones_like_1Fill,lstm/lstm_cell_46/ones_like_1/Shape:output:0,lstm/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/ones_like_1?
!lstm/lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_4/Const?
lstm/lstm_cell_46/dropout_4/MulMul&lstm/lstm_cell_46/ones_like_1:output:0*lstm/lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_4/Mul?
!lstm/lstm_cell_46/dropout_4/ShapeShape&lstm/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_4/Shape?
8lstm/lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2:
8lstm/lstm_cell_46/dropout_4/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_4/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_4/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_4/GreaterEqual?
 lstm/lstm_cell_46/dropout_4/CastCast,lstm/lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_4/Cast?
!lstm/lstm_cell_46/dropout_4/Mul_1Mul#lstm/lstm_cell_46/dropout_4/Mul:z:0$lstm/lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_4/Mul_1?
!lstm/lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_5/Const?
lstm/lstm_cell_46/dropout_5/MulMul&lstm/lstm_cell_46/ones_like_1:output:0*lstm/lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_5/Mul?
!lstm/lstm_cell_46/dropout_5/ShapeShape&lstm/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_5/Shape?
8lstm/lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2:
8lstm/lstm_cell_46/dropout_5/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_5/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_5/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_5/GreaterEqual?
 lstm/lstm_cell_46/dropout_5/CastCast,lstm/lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_5/Cast?
!lstm/lstm_cell_46/dropout_5/Mul_1Mul#lstm/lstm_cell_46/dropout_5/Mul:z:0$lstm/lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_5/Mul_1?
!lstm/lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_6/Const?
lstm/lstm_cell_46/dropout_6/MulMul&lstm/lstm_cell_46/ones_like_1:output:0*lstm/lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_6/Mul?
!lstm/lstm_cell_46/dropout_6/ShapeShape&lstm/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_6/Shape?
8lstm/lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2:
8lstm/lstm_cell_46/dropout_6/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_6/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_6/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_6/GreaterEqual?
 lstm/lstm_cell_46/dropout_6/CastCast,lstm/lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_6/Cast?
!lstm/lstm_cell_46/dropout_6/Mul_1Mul#lstm/lstm_cell_46/dropout_6/Mul:z:0$lstm/lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_6/Mul_1?
!lstm/lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm/lstm_cell_46/dropout_7/Const?
lstm/lstm_cell_46/dropout_7/MulMul&lstm/lstm_cell_46/ones_like_1:output:0*lstm/lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2!
lstm/lstm_cell_46/dropout_7/Mul?
!lstm/lstm_cell_46/dropout_7/ShapeShape&lstm/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2#
!lstm/lstm_cell_46/dropout_7/Shape?
8lstm/lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform*lstm/lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ΰ2:
8lstm/lstm_cell_46/dropout_7/random_uniform/RandomUniform?
*lstm/lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*lstm/lstm_cell_46/dropout_7/GreaterEqual/y?
(lstm/lstm_cell_46/dropout_7/GreaterEqualGreaterEqualAlstm/lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:03lstm/lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2*
(lstm/lstm_cell_46/dropout_7/GreaterEqual?
 lstm/lstm_cell_46/dropout_7/CastCast,lstm/lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2"
 lstm/lstm_cell_46/dropout_7/Cast?
!lstm/lstm_cell_46/dropout_7/Mul_1Mul#lstm/lstm_cell_46/dropout_7/Mul:z:0$lstm/lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2#
!lstm/lstm_cell_46/dropout_7/Mul_1?
lstm/lstm_cell_46/mulMullstm/strided_slice_2:output:0#lstm/lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul?
lstm/lstm_cell_46/mul_1Mullstm/strided_slice_2:output:0%lstm/lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_1?
lstm/lstm_cell_46/mul_2Mullstm/strided_slice_2:output:0%lstm/lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_2?
lstm/lstm_cell_46/mul_3Mullstm/strided_slice_2:output:0%lstm/lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_3?
!lstm/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!lstm/lstm_cell_46/split/split_dim?
&lstm/lstm_cell_46/split/ReadVariableOpReadVariableOp/lstm_lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&lstm/lstm_cell_46/split/ReadVariableOp?
lstm/lstm_cell_46/splitSplit*lstm/lstm_cell_46/split/split_dim:output:0.lstm/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm/lstm_cell_46/split?
lstm/lstm_cell_46/MatMulMatMullstm/lstm_cell_46/mul:z:0 lstm/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul?
lstm/lstm_cell_46/MatMul_1MatMullstm/lstm_cell_46/mul_1:z:0 lstm/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_1?
lstm/lstm_cell_46/MatMul_2MatMullstm/lstm_cell_46/mul_2:z:0 lstm/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_2?
lstm/lstm_cell_46/MatMul_3MatMullstm/lstm_cell_46/mul_3:z:0 lstm/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_3?
#lstm/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#lstm/lstm_cell_46/split_1/split_dim?
(lstm/lstm_cell_46/split_1/ReadVariableOpReadVariableOp1lstm_lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(lstm/lstm_cell_46/split_1/ReadVariableOp?
lstm/lstm_cell_46/split_1Split,lstm/lstm_cell_46/split_1/split_dim:output:00lstm/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm/lstm_cell_46/split_1?
lstm/lstm_cell_46/BiasAddBiasAdd"lstm/lstm_cell_46/MatMul:product:0"lstm/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd?
lstm/lstm_cell_46/BiasAdd_1BiasAdd$lstm/lstm_cell_46/MatMul_1:product:0"lstm/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd_1?
lstm/lstm_cell_46/BiasAdd_2BiasAdd$lstm/lstm_cell_46/MatMul_2:product:0"lstm/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd_2?
lstm/lstm_cell_46/BiasAdd_3BiasAdd$lstm/lstm_cell_46/MatMul_3:product:0"lstm/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/BiasAdd_3?
lstm/lstm_cell_46/mul_4Mullstm/zeros:output:0%lstm/lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_4?
lstm/lstm_cell_46/mul_5Mullstm/zeros:output:0%lstm/lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_5?
lstm/lstm_cell_46/mul_6Mullstm/zeros:output:0%lstm/lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_6?
lstm/lstm_cell_46/mul_7Mullstm/zeros:output:0%lstm/lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_7?
 lstm/lstm_cell_46/ReadVariableOpReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 lstm/lstm_cell_46/ReadVariableOp?
%lstm/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%lstm/lstm_cell_46/strided_slice/stack?
'lstm/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'lstm/lstm_cell_46/strided_slice/stack_1?
'lstm/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'lstm/lstm_cell_46/strided_slice/stack_2?
lstm/lstm_cell_46/strided_sliceStridedSlice(lstm/lstm_cell_46/ReadVariableOp:value:0.lstm/lstm_cell_46/strided_slice/stack:output:00lstm/lstm_cell_46/strided_slice/stack_1:output:00lstm/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
lstm/lstm_cell_46/strided_slice?
lstm/lstm_cell_46/MatMul_4MatMullstm/lstm_cell_46/mul_4:z:0(lstm/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_4?
lstm/lstm_cell_46/addAddV2"lstm/lstm_cell_46/BiasAdd:output:0$lstm/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add?
lstm/lstm_cell_46/SigmoidSigmoidlstm/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Sigmoid?
"lstm/lstm_cell_46/ReadVariableOp_1ReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm/lstm_cell_46/ReadVariableOp_1?
'lstm/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'lstm/lstm_cell_46/strided_slice_1/stack?
)lstm/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2+
)lstm/lstm_cell_46/strided_slice_1/stack_1?
)lstm/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm/lstm_cell_46/strided_slice_1/stack_2?
!lstm/lstm_cell_46/strided_slice_1StridedSlice*lstm/lstm_cell_46/ReadVariableOp_1:value:00lstm/lstm_cell_46/strided_slice_1/stack:output:02lstm/lstm_cell_46/strided_slice_1/stack_1:output:02lstm/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!lstm/lstm_cell_46/strided_slice_1?
lstm/lstm_cell_46/MatMul_5MatMullstm/lstm_cell_46/mul_5:z:0*lstm/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_5?
lstm/lstm_cell_46/add_1AddV2$lstm/lstm_cell_46/BiasAdd_1:output:0$lstm/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_1?
lstm/lstm_cell_46/Sigmoid_1Sigmoidlstm/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Sigmoid_1?
lstm/lstm_cell_46/mul_8Mullstm/lstm_cell_46/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_8?
"lstm/lstm_cell_46/ReadVariableOp_2ReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm/lstm_cell_46/ReadVariableOp_2?
'lstm/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'lstm/lstm_cell_46/strided_slice_2/stack?
)lstm/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)lstm/lstm_cell_46/strided_slice_2/stack_1?
)lstm/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm/lstm_cell_46/strided_slice_2/stack_2?
!lstm/lstm_cell_46/strided_slice_2StridedSlice*lstm/lstm_cell_46/ReadVariableOp_2:value:00lstm/lstm_cell_46/strided_slice_2/stack:output:02lstm/lstm_cell_46/strided_slice_2/stack_1:output:02lstm/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!lstm/lstm_cell_46/strided_slice_2?
lstm/lstm_cell_46/MatMul_6MatMullstm/lstm_cell_46/mul_6:z:0*lstm/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_6?
lstm/lstm_cell_46/add_2AddV2$lstm/lstm_cell_46/BiasAdd_2:output:0$lstm/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_2?
lstm/lstm_cell_46/TanhTanhlstm/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Tanh?
lstm/lstm_cell_46/mul_9Mullstm/lstm_cell_46/Sigmoid:y:0lstm/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_9?
lstm/lstm_cell_46/add_3AddV2lstm/lstm_cell_46/mul_8:z:0lstm/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_3?
"lstm/lstm_cell_46/ReadVariableOp_3ReadVariableOp)lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm/lstm_cell_46/ReadVariableOp_3?
'lstm/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'lstm/lstm_cell_46/strided_slice_3/stack?
)lstm/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)lstm/lstm_cell_46/strided_slice_3/stack_1?
)lstm/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)lstm/lstm_cell_46/strided_slice_3/stack_2?
!lstm/lstm_cell_46/strided_slice_3StridedSlice*lstm/lstm_cell_46/ReadVariableOp_3:value:00lstm/lstm_cell_46/strided_slice_3/stack:output:02lstm/lstm_cell_46/strided_slice_3/stack_1:output:02lstm/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!lstm/lstm_cell_46/strided_slice_3?
lstm/lstm_cell_46/MatMul_7MatMullstm/lstm_cell_46/mul_7:z:0*lstm/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/MatMul_7?
lstm/lstm_cell_46/add_4AddV2$lstm/lstm_cell_46/BiasAdd_3:output:0$lstm/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/add_4?
lstm/lstm_cell_46/Sigmoid_2Sigmoidlstm/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Sigmoid_2?
lstm/lstm_cell_46/Tanh_1Tanhlstm/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/Tanh_1?
lstm/lstm_cell_46/mul_10Mullstm/lstm_cell_46/Sigmoid_2:y:0lstm/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell_46/mul_10?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0/lstm_lstm_cell_46_split_readvariableop_resource1lstm_lstm_cell_46_split_1_readvariableop_resource)lstm_lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*"
bodyR
lstm_while_body_238055*"
condR
lstm_while_cond_238054*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
/module_wrapper_9/dense_10/MatMul/ReadVariableOpReadVariableOp8module_wrapper_9_dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype021
/module_wrapper_9/dense_10/MatMul/ReadVariableOp?
 module_wrapper_9/dense_10/MatMulMatMullstm/strided_slice_3:output:07module_wrapper_9/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 module_wrapper_9/dense_10/MatMul?
0module_wrapper_9/dense_10/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_9_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp?
!module_wrapper_9/dense_10/BiasAddBiasAdd*module_wrapper_9/dense_10/MatMul:product:08module_wrapper_9/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_9/dense_10/BiasAdd?
!module_wrapper_9/dense_10/SoftmaxSoftmax*module_wrapper_9/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!module_wrapper_9/dense_10/Softmax?
IdentityIdentity+module_wrapper_9/dense_10/Softmax:softmax:0^embedding/embedding_lookup!^lstm/lstm_cell_46/ReadVariableOp#^lstm/lstm_cell_46/ReadVariableOp_1#^lstm/lstm_cell_46/ReadVariableOp_2#^lstm/lstm_cell_46/ReadVariableOp_3'^lstm/lstm_cell_46/split/ReadVariableOp)^lstm/lstm_cell_46/split_1/ReadVariableOp^lstm/while1^module_wrapper_9/dense_10/BiasAdd/ReadVariableOp0^module_wrapper_9/dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 28
embedding/embedding_lookupembedding/embedding_lookup2D
 lstm/lstm_cell_46/ReadVariableOp lstm/lstm_cell_46/ReadVariableOp2H
"lstm/lstm_cell_46/ReadVariableOp_1"lstm/lstm_cell_46/ReadVariableOp_12H
"lstm/lstm_cell_46/ReadVariableOp_2"lstm/lstm_cell_46/ReadVariableOp_22H
"lstm/lstm_cell_46/ReadVariableOp_3"lstm/lstm_cell_46/ReadVariableOp_32P
&lstm/lstm_cell_46/split/ReadVariableOp&lstm/lstm_cell_46/split/ReadVariableOp2T
(lstm/lstm_cell_46/split_1/ReadVariableOp(lstm/lstm_cell_46/split_1/ReadVariableOp2

lstm/while
lstm/while2d
0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp0module_wrapper_9/dense_10/BiasAdd/ReadVariableOp2b
/module_wrapper_9/dense_10/MatMul/ReadVariableOp/module_wrapper_9/dense_10/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_embedding_layer_call_fn_238311

inputs
unknown:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2366772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_237520
embedding_input
unknown:
??
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2374882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_nameembedding_input
?
l
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238365

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
!sequential_lstm_while_cond_235648<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1T
Psequential_lstm_while_sequential_lstm_while_cond_235648___redundant_placeholder0T
Psequential_lstm_while_sequential_lstm_while_cond_235648___redundant_placeholder1T
Psequential_lstm_while_sequential_lstm_while_cond_235648___redundant_placeholder2T
Psequential_lstm_while_sequential_lstm_while_cond_235648___redundant_placeholder3"
sequential_lstm_while_identity
?
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: 2
sequential/lstm/while/Less?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: 2 
sequential/lstm/while/Identity"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?	
while_body_239447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_46_split_readvariableop_resource_0:
??C
4while_lstm_cell_46_split_1_readvariableop_resource_0:	?@
,while_lstm_cell_46_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_46_split_readvariableop_resource:
??A
2while_lstm_cell_46_split_1_readvariableop_resource:	?>
*while_lstm_cell_46_readvariableop_resource:
????!while/lstm_cell_46/ReadVariableOp?#while/lstm_cell_46/ReadVariableOp_1?#while/lstm_cell_46/ReadVariableOp_2?#while/lstm_cell_46/ReadVariableOp_3?'while/lstm_cell_46/split/ReadVariableOp?)while/lstm_cell_46/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_46/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/ones_like/Shape?
"while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/ones_like/Const?
while/lstm_cell_46/ones_likeFill+while/lstm_cell_46/ones_like/Shape:output:0+while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/ones_like?
 while/lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/lstm_cell_46/dropout/Const?
while/lstm_cell_46/dropout/MulMul%while/lstm_cell_46/ones_like:output:0)while/lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/dropout/Mul?
 while/lstm_cell_46/dropout/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_46/dropout/Shape?
7while/lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???29
7while/lstm_cell_46/dropout/random_uniform/RandomUniform?
)while/lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)while/lstm_cell_46/dropout/GreaterEqual/y?
'while/lstm_cell_46/dropout/GreaterEqualGreaterEqual@while/lstm_cell_46/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2)
'while/lstm_cell_46/dropout/GreaterEqual?
while/lstm_cell_46/dropout/CastCast+while/lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2!
while/lstm_cell_46/dropout/Cast?
 while/lstm_cell_46/dropout/Mul_1Mul"while/lstm_cell_46/dropout/Mul:z:0#while/lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout/Mul_1?
"while/lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_1/Const?
 while/lstm_cell_46/dropout_1/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_1/Mul?
"while/lstm_cell_46/dropout_1/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_1/Shape?
9while/lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_1/GreaterEqual/y?
)while/lstm_cell_46/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_1/GreaterEqual?
!while/lstm_cell_46/dropout_1/CastCast-while/lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_1/Cast?
"while/lstm_cell_46/dropout_1/Mul_1Mul$while/lstm_cell_46/dropout_1/Mul:z:0%while/lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_1/Mul_1?
"while/lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_2/Const?
 while/lstm_cell_46/dropout_2/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_2/Mul?
"while/lstm_cell_46/dropout_2/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_2/Shape?
9while/lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??O2;
9while/lstm_cell_46/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_2/GreaterEqual/y?
)while/lstm_cell_46/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_2/GreaterEqual?
!while/lstm_cell_46/dropout_2/CastCast-while/lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_2/Cast?
"while/lstm_cell_46/dropout_2/Mul_1Mul$while/lstm_cell_46/dropout_2/Mul:z:0%while/lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_2/Mul_1?
"while/lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_3/Const?
 while/lstm_cell_46/dropout_3/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_3/Mul?
"while/lstm_cell_46/dropout_3/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_3/Shape?
9while/lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_3/GreaterEqual/y?
)while/lstm_cell_46/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_3/GreaterEqual?
!while/lstm_cell_46/dropout_3/CastCast-while/lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_3/Cast?
"while/lstm_cell_46/dropout_3/Mul_1Mul$while/lstm_cell_46/dropout_3/Mul:z:0%while/lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_3/Mul_1?
$while/lstm_cell_46/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_46/ones_like_1/Shape?
$while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$while/lstm_cell_46/ones_like_1/Const?
while/lstm_cell_46/ones_like_1Fill-while/lstm_cell_46/ones_like_1/Shape:output:0-while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/ones_like_1?
"while/lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_4/Const?
 while/lstm_cell_46/dropout_4/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_4/Mul?
"while/lstm_cell_46/dropout_4/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_4/Shape?
9while/lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_4/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_4/GreaterEqual/y?
)while/lstm_cell_46/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_4/GreaterEqual?
!while/lstm_cell_46/dropout_4/CastCast-while/lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_4/Cast?
"while/lstm_cell_46/dropout_4/Mul_1Mul$while/lstm_cell_46/dropout_4/Mul:z:0%while/lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_4/Mul_1?
"while/lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_5/Const?
 while/lstm_cell_46/dropout_5/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_5/Mul?
"while/lstm_cell_46/dropout_5/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_5/Shape?
9while/lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2΁2;
9while/lstm_cell_46/dropout_5/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_5/GreaterEqual/y?
)while/lstm_cell_46/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_5/GreaterEqual?
!while/lstm_cell_46/dropout_5/CastCast-while/lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_5/Cast?
"while/lstm_cell_46/dropout_5/Mul_1Mul$while/lstm_cell_46/dropout_5/Mul:z:0%while/lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_5/Mul_1?
"while/lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_6/Const?
 while/lstm_cell_46/dropout_6/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_6/Mul?
"while/lstm_cell_46/dropout_6/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_6/Shape?
9while/lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_6/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_6/GreaterEqual/y?
)while/lstm_cell_46/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_6/GreaterEqual?
!while/lstm_cell_46/dropout_6/CastCast-while/lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_6/Cast?
"while/lstm_cell_46/dropout_6/Mul_1Mul$while/lstm_cell_46/dropout_6/Mul:z:0%while/lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_6/Mul_1?
"while/lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_7/Const?
 while/lstm_cell_46/dropout_7/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_7/Mul?
"while/lstm_cell_46/dropout_7/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_7/Shape?
9while/lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_7/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_7/GreaterEqual/y?
)while/lstm_cell_46/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_7/GreaterEqual?
!while/lstm_cell_46/dropout_7/CastCast-while/lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_7/Cast?
"while/lstm_cell_46/dropout_7/Mul_1Mul$while/lstm_cell_46/dropout_7/Mul:z:0%while/lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_7/Mul_1?
while/lstm_cell_46/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul?
while/lstm_cell_46/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_1?
while/lstm_cell_46/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_2?
while/lstm_cell_46/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_3?
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim?
'while/lstm_cell_46/split/ReadVariableOpReadVariableOp2while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_46/split/ReadVariableOp?
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
while/lstm_cell_46/split?
while/lstm_cell_46/MatMulMatMulwhile/lstm_cell_46/mul:z:0!while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul?
while/lstm_cell_46/MatMul_1MatMulwhile/lstm_cell_46/mul_1:z:0!while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_1?
while/lstm_cell_46/MatMul_2MatMulwhile/lstm_cell_46/mul_2:z:0!while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_2?
while/lstm_cell_46/MatMul_3MatMulwhile/lstm_cell_46/mul_3:z:0!while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_3?
$while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_46/split_1/split_dim?
)while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_46/split_1/ReadVariableOp?
while/lstm_cell_46/split_1Split-while/lstm_cell_46/split_1/split_dim:output:01while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell_46/split_1?
while/lstm_cell_46/BiasAddBiasAdd#while/lstm_cell_46/MatMul:product:0#while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd?
while/lstm_cell_46/BiasAdd_1BiasAdd%while/lstm_cell_46/MatMul_1:product:0#while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_1?
while/lstm_cell_46/BiasAdd_2BiasAdd%while/lstm_cell_46/MatMul_2:product:0#while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_2?
while/lstm_cell_46/BiasAdd_3BiasAdd%while/lstm_cell_46/MatMul_3:product:0#while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_3?
while/lstm_cell_46/mul_4Mulwhile_placeholder_2&while/lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_4?
while/lstm_cell_46/mul_5Mulwhile_placeholder_2&while/lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_5?
while/lstm_cell_46/mul_6Mulwhile_placeholder_2&while/lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_6?
while/lstm_cell_46/mul_7Mulwhile_placeholder_2&while/lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_7?
!while/lstm_cell_46/ReadVariableOpReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/lstm_cell_46/ReadVariableOp?
&while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_46/strided_slice/stack?
(while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice/stack_1?
(while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_46/strided_slice/stack_2?
 while/lstm_cell_46/strided_sliceStridedSlice)while/lstm_cell_46/ReadVariableOp:value:0/while/lstm_cell_46/strided_slice/stack:output:01while/lstm_cell_46/strided_slice/stack_1:output:01while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/lstm_cell_46/strided_slice?
while/lstm_cell_46/MatMul_4MatMulwhile/lstm_cell_46/mul_4:z:0)while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_4?
while/lstm_cell_46/addAddV2#while/lstm_cell_46/BiasAdd:output:0%while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add?
while/lstm_cell_46/SigmoidSigmoidwhile/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid?
#while/lstm_cell_46/ReadVariableOp_1ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_1?
(while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice_1/stack?
*while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*while/lstm_cell_46/strided_slice_1/stack_1?
*while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_1/stack_2?
"while/lstm_cell_46/strided_slice_1StridedSlice+while/lstm_cell_46/ReadVariableOp_1:value:01while/lstm_cell_46/strided_slice_1/stack:output:03while/lstm_cell_46/strided_slice_1/stack_1:output:03while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_1?
while/lstm_cell_46/MatMul_5MatMulwhile/lstm_cell_46/mul_5:z:0+while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_5?
while/lstm_cell_46/add_1AddV2%while/lstm_cell_46/BiasAdd_1:output:0%while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_1?
while/lstm_cell_46/Sigmoid_1Sigmoidwhile/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_1?
while/lstm_cell_46/mul_8Mul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_8?
#while/lstm_cell_46/ReadVariableOp_2ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_2?
(while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/lstm_cell_46/strided_slice_2/stack?
*while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*while/lstm_cell_46/strided_slice_2/stack_1?
*while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_2/stack_2?
"while/lstm_cell_46/strided_slice_2StridedSlice+while/lstm_cell_46/ReadVariableOp_2:value:01while/lstm_cell_46/strided_slice_2/stack:output:03while/lstm_cell_46/strided_slice_2/stack_1:output:03while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_2?
while/lstm_cell_46/MatMul_6MatMulwhile/lstm_cell_46/mul_6:z:0+while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_6?
while/lstm_cell_46/add_2AddV2%while/lstm_cell_46/BiasAdd_2:output:0%while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_2?
while/lstm_cell_46/TanhTanhwhile/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh?
while/lstm_cell_46/mul_9Mulwhile/lstm_cell_46/Sigmoid:y:0while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_9?
while/lstm_cell_46/add_3AddV2while/lstm_cell_46/mul_8:z:0while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_3?
#while/lstm_cell_46/ReadVariableOp_3ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_3?
(while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(while/lstm_cell_46/strided_slice_3/stack?
*while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_46/strided_slice_3/stack_1?
*while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_3/stack_2?
"while/lstm_cell_46/strided_slice_3StridedSlice+while/lstm_cell_46/ReadVariableOp_3:value:01while/lstm_cell_46/strided_slice_3/stack:output:03while/lstm_cell_46/strided_slice_3/stack_1:output:03while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_3?
while/lstm_cell_46/MatMul_7MatMulwhile/lstm_cell_46/mul_7:z:0+while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_7?
while/lstm_cell_46/add_4AddV2%while/lstm_cell_46/BiasAdd_3:output:0%while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_4?
while/lstm_cell_46/Sigmoid_2Sigmoidwhile/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_2?
while/lstm_cell_46/Tanh_1Tanhwhile/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh_1?
while/lstm_cell_46/mul_10Mul while/lstm_cell_46/Sigmoid_2:y:0while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_46/mul_10:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_46/add_3:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_46_readvariableop_resource,while_lstm_cell_46_readvariableop_resource_0"j
2while_lstm_cell_46_split_1_readvariableop_resource4while_lstm_cell_46_split_1_readvariableop_resource_0"f
0while_lstm_cell_46_split_readvariableop_resource2while_lstm_cell_46_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2F
!while/lstm_cell_46/ReadVariableOp!while/lstm_cell_46/ReadVariableOp2J
#while/lstm_cell_46/ReadVariableOp_1#while/lstm_cell_46/ReadVariableOp_12J
#while/lstm_cell_46/ReadVariableOp_2#while/lstm_cell_46/ReadVariableOp_22J
#while/lstm_cell_46/ReadVariableOp_3#while/lstm_cell_46/ReadVariableOp_32R
'while/lstm_cell_46/split/ReadVariableOp'while/lstm_cell_46/split/ReadVariableOp2V
)while/lstm_cell_46/split_1/ReadVariableOp)while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_239700

args_0:
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMulargs_0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdd|
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Softmax?
IdentityIdentitydense_10/Softmax:softmax:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
??
?
!__inference__wrapped_model_235790
embedding_input@
,sequential_embedding_embedding_lookup_235529:
??N
:sequential_lstm_lstm_cell_46_split_readvariableop_resource:
??K
<sequential_lstm_lstm_cell_46_split_1_readvariableop_resource:	?H
4sequential_lstm_lstm_cell_46_readvariableop_resource:
??V
Csequential_module_wrapper_9_dense_10_matmul_readvariableop_resource:	?R
Dsequential_module_wrapper_9_dense_10_biasadd_readvariableop_resource:
identity??%sequential/embedding/embedding_lookup?+sequential/lstm/lstm_cell_46/ReadVariableOp?-sequential/lstm/lstm_cell_46/ReadVariableOp_1?-sequential/lstm/lstm_cell_46/ReadVariableOp_2?-sequential/lstm/lstm_cell_46/ReadVariableOp_3?1sequential/lstm/lstm_cell_46/split/ReadVariableOp?3sequential/lstm/lstm_cell_46/split_1/ReadVariableOp?sequential/lstm/while?;sequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOp?:sequential/module_wrapper_9/dense_10/MatMul/ReadVariableOp?
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:?????????2
sequential/embedding/Cast?
%sequential/embedding/embedding_lookupResourceGather,sequential_embedding_embedding_lookup_235529sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@sequential/embedding/embedding_lookup/235529*,
_output_shapes
:??????????*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@sequential/embedding/embedding_lookup/235529*,
_output_shapes
:??????????20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????22
0sequential/embedding/embedding_lookup/Identity_1?
%sequential/spatial_dropout1d/IdentityIdentity9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????2'
%sequential/spatial_dropout1d/Identity?
sequential/lstm/ShapeShape.sequential/spatial_dropout1d/Identity:output:0*
T0*
_output_shapes
:2
sequential/lstm/Shape?
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stack?
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1?
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2?
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice}
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
sequential/lstm/zeros/mul/y?
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
sequential/lstm/zeros/Less/y?
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/Less?
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2 
sequential/lstm/zeros/packed/1?
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/Const?
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/lstm/zeros?
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
sequential/lstm/zeros_1/mul/y?
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mul?
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
sequential/lstm/zeros_1/Less/y?
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/Less?
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential/lstm/zeros_1/packed/1?
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packed?
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Const?
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/lstm/zeros_1?
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
sequential/lstm/transpose/perm?
sequential/lstm/transpose	Transpose.sequential/spatial_dropout1d/Identity:output:0'sequential/lstm/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential/lstm/transpose
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:2
sequential/lstm/Shape_1?
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_1/stack?
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_1?
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_2?
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
sequential/lstm/strided_slice_1?
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential/lstm/TensorArrayV2/element_shape?
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
sequential/lstm/TensorArrayV2?
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2G
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7sequential/lstm/TensorArrayUnstack/TensorListFromTensor?
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_2/stack?
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_1?
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_2?
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2!
sequential/lstm/strided_slice_2?
,sequential/lstm/lstm_cell_46/ones_like/ShapeShape(sequential/lstm/strided_slice_2:output:0*
T0*
_output_shapes
:2.
,sequential/lstm/lstm_cell_46/ones_like/Shape?
,sequential/lstm/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential/lstm/lstm_cell_46/ones_like/Const?
&sequential/lstm/lstm_cell_46/ones_likeFill5sequential/lstm/lstm_cell_46/ones_like/Shape:output:05sequential/lstm/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/lstm_cell_46/ones_like?
.sequential/lstm/lstm_cell_46/ones_like_1/ShapeShapesequential/lstm/zeros:output:0*
T0*
_output_shapes
:20
.sequential/lstm/lstm_cell_46/ones_like_1/Shape?
.sequential/lstm/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential/lstm/lstm_cell_46/ones_like_1/Const?
(sequential/lstm/lstm_cell_46/ones_like_1Fill7sequential/lstm/lstm_cell_46/ones_like_1/Shape:output:07sequential/lstm/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/lstm_cell_46/ones_like_1?
 sequential/lstm/lstm_cell_46/mulMul(sequential/lstm/strided_slice_2:output:0/sequential/lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2"
 sequential/lstm/lstm_cell_46/mul?
"sequential/lstm/lstm_cell_46/mul_1Mul(sequential/lstm/strided_slice_2:output:0/sequential/lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_1?
"sequential/lstm/lstm_cell_46/mul_2Mul(sequential/lstm/strided_slice_2:output:0/sequential/lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_2?
"sequential/lstm/lstm_cell_46/mul_3Mul(sequential/lstm/strided_slice_2:output:0/sequential/lstm/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_3?
,sequential/lstm/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential/lstm/lstm_cell_46/split/split_dim?
1sequential/lstm/lstm_cell_46/split/ReadVariableOpReadVariableOp:sequential_lstm_lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1sequential/lstm/lstm_cell_46/split/ReadVariableOp?
"sequential/lstm/lstm_cell_46/splitSplit5sequential/lstm/lstm_cell_46/split/split_dim:output:09sequential/lstm/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2$
"sequential/lstm/lstm_cell_46/split?
#sequential/lstm/lstm_cell_46/MatMulMatMul$sequential/lstm/lstm_cell_46/mul:z:0+sequential/lstm/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/lstm_cell_46/MatMul?
%sequential/lstm/lstm_cell_46/MatMul_1MatMul&sequential/lstm/lstm_cell_46/mul_1:z:0+sequential/lstm/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_1?
%sequential/lstm/lstm_cell_46/MatMul_2MatMul&sequential/lstm/lstm_cell_46/mul_2:z:0+sequential/lstm/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_2?
%sequential/lstm/lstm_cell_46/MatMul_3MatMul&sequential/lstm/lstm_cell_46/mul_3:z:0+sequential/lstm/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_3?
.sequential/lstm/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential/lstm/lstm_cell_46/split_1/split_dim?
3sequential/lstm/lstm_cell_46/split_1/ReadVariableOpReadVariableOp<sequential_lstm_lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype025
3sequential/lstm/lstm_cell_46/split_1/ReadVariableOp?
$sequential/lstm/lstm_cell_46/split_1Split7sequential/lstm/lstm_cell_46/split_1/split_dim:output:0;sequential/lstm/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2&
$sequential/lstm/lstm_cell_46/split_1?
$sequential/lstm/lstm_cell_46/BiasAddBiasAdd-sequential/lstm/lstm_cell_46/MatMul:product:0-sequential/lstm/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2&
$sequential/lstm/lstm_cell_46/BiasAdd?
&sequential/lstm/lstm_cell_46/BiasAdd_1BiasAdd/sequential/lstm/lstm_cell_46/MatMul_1:product:0-sequential/lstm/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/lstm_cell_46/BiasAdd_1?
&sequential/lstm/lstm_cell_46/BiasAdd_2BiasAdd/sequential/lstm/lstm_cell_46/MatMul_2:product:0-sequential/lstm/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/lstm_cell_46/BiasAdd_2?
&sequential/lstm/lstm_cell_46/BiasAdd_3BiasAdd/sequential/lstm/lstm_cell_46/MatMul_3:product:0-sequential/lstm/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/lstm_cell_46/BiasAdd_3?
"sequential/lstm/lstm_cell_46/mul_4Mulsequential/lstm/zeros:output:01sequential/lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_4?
"sequential/lstm/lstm_cell_46/mul_5Mulsequential/lstm/zeros:output:01sequential/lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_5?
"sequential/lstm/lstm_cell_46/mul_6Mulsequential/lstm/zeros:output:01sequential/lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_6?
"sequential/lstm/lstm_cell_46/mul_7Mulsequential/lstm/zeros:output:01sequential/lstm/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_7?
+sequential/lstm/lstm_cell_46/ReadVariableOpReadVariableOp4sequential_lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential/lstm/lstm_cell_46/ReadVariableOp?
0sequential/lstm/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        22
0sequential/lstm/lstm_cell_46/strided_slice/stack?
2sequential/lstm/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   24
2sequential/lstm/lstm_cell_46/strided_slice/stack_1?
2sequential/lstm/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2sequential/lstm/lstm_cell_46/strided_slice/stack_2?
*sequential/lstm/lstm_cell_46/strided_sliceStridedSlice3sequential/lstm/lstm_cell_46/ReadVariableOp:value:09sequential/lstm/lstm_cell_46/strided_slice/stack:output:0;sequential/lstm/lstm_cell_46/strided_slice/stack_1:output:0;sequential/lstm/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2,
*sequential/lstm/lstm_cell_46/strided_slice?
%sequential/lstm/lstm_cell_46/MatMul_4MatMul&sequential/lstm/lstm_cell_46/mul_4:z:03sequential/lstm/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_4?
 sequential/lstm/lstm_cell_46/addAddV2-sequential/lstm/lstm_cell_46/BiasAdd:output:0/sequential/lstm/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2"
 sequential/lstm/lstm_cell_46/add?
$sequential/lstm/lstm_cell_46/SigmoidSigmoid$sequential/lstm/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2&
$sequential/lstm/lstm_cell_46/Sigmoid?
-sequential/lstm/lstm_cell_46/ReadVariableOp_1ReadVariableOp4sequential_lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential/lstm/lstm_cell_46/ReadVariableOp_1?
2sequential/lstm/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   24
2sequential/lstm/lstm_cell_46/strided_slice_1/stack?
4sequential/lstm/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  26
4sequential/lstm/lstm_cell_46/strided_slice_1/stack_1?
4sequential/lstm/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4sequential/lstm/lstm_cell_46/strided_slice_1/stack_2?
,sequential/lstm/lstm_cell_46/strided_slice_1StridedSlice5sequential/lstm/lstm_cell_46/ReadVariableOp_1:value:0;sequential/lstm/lstm_cell_46/strided_slice_1/stack:output:0=sequential/lstm/lstm_cell_46/strided_slice_1/stack_1:output:0=sequential/lstm/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2.
,sequential/lstm/lstm_cell_46/strided_slice_1?
%sequential/lstm/lstm_cell_46/MatMul_5MatMul&sequential/lstm/lstm_cell_46/mul_5:z:05sequential/lstm/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_5?
"sequential/lstm/lstm_cell_46/add_1AddV2/sequential/lstm/lstm_cell_46/BiasAdd_1:output:0/sequential/lstm/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/add_1?
&sequential/lstm/lstm_cell_46/Sigmoid_1Sigmoid&sequential/lstm/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/lstm_cell_46/Sigmoid_1?
"sequential/lstm/lstm_cell_46/mul_8Mul*sequential/lstm/lstm_cell_46/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_8?
-sequential/lstm/lstm_cell_46/ReadVariableOp_2ReadVariableOp4sequential_lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential/lstm/lstm_cell_46/ReadVariableOp_2?
2sequential/lstm/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  24
2sequential/lstm/lstm_cell_46/strided_slice_2/stack?
4sequential/lstm/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  26
4sequential/lstm/lstm_cell_46/strided_slice_2/stack_1?
4sequential/lstm/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4sequential/lstm/lstm_cell_46/strided_slice_2/stack_2?
,sequential/lstm/lstm_cell_46/strided_slice_2StridedSlice5sequential/lstm/lstm_cell_46/ReadVariableOp_2:value:0;sequential/lstm/lstm_cell_46/strided_slice_2/stack:output:0=sequential/lstm/lstm_cell_46/strided_slice_2/stack_1:output:0=sequential/lstm/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2.
,sequential/lstm/lstm_cell_46/strided_slice_2?
%sequential/lstm/lstm_cell_46/MatMul_6MatMul&sequential/lstm/lstm_cell_46/mul_6:z:05sequential/lstm/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_6?
"sequential/lstm/lstm_cell_46/add_2AddV2/sequential/lstm/lstm_cell_46/BiasAdd_2:output:0/sequential/lstm/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/add_2?
!sequential/lstm/lstm_cell_46/TanhTanh&sequential/lstm/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2#
!sequential/lstm/lstm_cell_46/Tanh?
"sequential/lstm/lstm_cell_46/mul_9Mul(sequential/lstm/lstm_cell_46/Sigmoid:y:0%sequential/lstm/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/mul_9?
"sequential/lstm/lstm_cell_46/add_3AddV2&sequential/lstm/lstm_cell_46/mul_8:z:0&sequential/lstm/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/add_3?
-sequential/lstm/lstm_cell_46/ReadVariableOp_3ReadVariableOp4sequential_lstm_lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential/lstm/lstm_cell_46/ReadVariableOp_3?
2sequential/lstm/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  24
2sequential/lstm/lstm_cell_46/strided_slice_3/stack?
4sequential/lstm/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        26
4sequential/lstm/lstm_cell_46/strided_slice_3/stack_1?
4sequential/lstm/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4sequential/lstm/lstm_cell_46/strided_slice_3/stack_2?
,sequential/lstm/lstm_cell_46/strided_slice_3StridedSlice5sequential/lstm/lstm_cell_46/ReadVariableOp_3:value:0;sequential/lstm/lstm_cell_46/strided_slice_3/stack:output:0=sequential/lstm/lstm_cell_46/strided_slice_3/stack_1:output:0=sequential/lstm/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2.
,sequential/lstm/lstm_cell_46/strided_slice_3?
%sequential/lstm/lstm_cell_46/MatMul_7MatMul&sequential/lstm/lstm_cell_46/mul_7:z:05sequential/lstm/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/lstm_cell_46/MatMul_7?
"sequential/lstm/lstm_cell_46/add_4AddV2/sequential/lstm/lstm_cell_46/BiasAdd_3:output:0/sequential/lstm/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2$
"sequential/lstm/lstm_cell_46/add_4?
&sequential/lstm/lstm_cell_46/Sigmoid_2Sigmoid&sequential/lstm/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/lstm_cell_46/Sigmoid_2?
#sequential/lstm/lstm_cell_46/Tanh_1Tanh&sequential/lstm/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/lstm_cell_46/Tanh_1?
#sequential/lstm/lstm_cell_46/mul_10Mul*sequential/lstm/lstm_cell_46/Sigmoid_2:y:0'sequential/lstm/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/lstm_cell_46/mul_10?
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2/
-sequential/lstm/TensorArrayV2_1/element_shape?
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
sequential/lstm/TensorArrayV2_1n
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/time?
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(sequential/lstm/while/maximum_iterations?
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential/lstm/while/loop_counter?
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0:sequential_lstm_lstm_cell_46_split_readvariableop_resource<sequential_lstm_lstm_cell_46_split_1_readvariableop_resource4sequential_lstm_lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!sequential_lstm_while_body_235649*-
cond%R#
!sequential_lstm_while_cond_235648*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential/lstm/while?
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2B
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape?
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype024
2sequential/lstm/TensorArrayV2Stack/TensorListStack?
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%sequential/lstm/strided_slice_3/stack?
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential/lstm/strided_slice_3/stack_1?
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_3/stack_2?
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2!
sequential/lstm/strided_slice_3?
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 sequential/lstm/transpose_1/perm?
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
sequential/lstm/transpose_1?
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/runtime?
:sequential/module_wrapper_9/dense_10/MatMul/ReadVariableOpReadVariableOpCsequential_module_wrapper_9_dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02<
:sequential/module_wrapper_9/dense_10/MatMul/ReadVariableOp?
+sequential/module_wrapper_9/dense_10/MatMulMatMul(sequential/lstm/strided_slice_3:output:0Bsequential/module_wrapper_9/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+sequential/module_wrapper_9/dense_10/MatMul?
;sequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_9_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;sequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_9/dense_10/BiasAddBiasAdd5sequential/module_wrapper_9/dense_10/MatMul:product:0Csequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,sequential/module_wrapper_9/dense_10/BiasAdd?
,sequential/module_wrapper_9/dense_10/SoftmaxSoftmax5sequential/module_wrapper_9/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2.
,sequential/module_wrapper_9/dense_10/Softmax?
IdentityIdentity6sequential/module_wrapper_9/dense_10/Softmax:softmax:0&^sequential/embedding/embedding_lookup,^sequential/lstm/lstm_cell_46/ReadVariableOp.^sequential/lstm/lstm_cell_46/ReadVariableOp_1.^sequential/lstm/lstm_cell_46/ReadVariableOp_2.^sequential/lstm/lstm_cell_46/ReadVariableOp_32^sequential/lstm/lstm_cell_46/split/ReadVariableOp4^sequential/lstm/lstm_cell_46/split_1/ReadVariableOp^sequential/lstm/while<^sequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOp;^sequential/module_wrapper_9/dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2Z
+sequential/lstm/lstm_cell_46/ReadVariableOp+sequential/lstm/lstm_cell_46/ReadVariableOp2^
-sequential/lstm/lstm_cell_46/ReadVariableOp_1-sequential/lstm/lstm_cell_46/ReadVariableOp_12^
-sequential/lstm/lstm_cell_46/ReadVariableOp_2-sequential/lstm/lstm_cell_46/ReadVariableOp_22^
-sequential/lstm/lstm_cell_46/ReadVariableOp_3-sequential/lstm/lstm_cell_46/ReadVariableOp_32f
1sequential/lstm/lstm_cell_46/split/ReadVariableOp1sequential/lstm/lstm_cell_46/split/ReadVariableOp2j
3sequential/lstm/lstm_cell_46/split_1/ReadVariableOp3sequential/lstm/lstm_cell_46/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while2z
;sequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOp;sequential/module_wrapper_9/dense_10/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_9/dense_10/MatMul/ReadVariableOp:sequential/module_wrapper_9/dense_10/MatMul/ReadVariableOp:X T
'
_output_shapes
:?????????
)
_user_specified_nameembedding_input
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_236937

inputs>
*lstm_cell_46_split_readvariableop_resource:
??;
,lstm_cell_46_split_1_readvariableop_resource:	?8
$lstm_cell_46_readvariableop_resource:
??
identity??lstm_cell_46/ReadVariableOp?lstm_cell_46/ReadVariableOp_1?lstm_cell_46/ReadVariableOp_2?lstm_cell_46/ReadVariableOp_3?!lstm_cell_46/split/ReadVariableOp?#lstm_cell_46/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_46/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_46/ones_like/Shape?
lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/ones_like/Const?
lstm_cell_46/ones_likeFill%lstm_cell_46/ones_like/Shape:output:0%lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like~
lstm_cell_46/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_46/ones_like_1/Shape?
lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm_cell_46/ones_like_1/Const?
lstm_cell_46/ones_like_1Fill'lstm_cell_46/ones_like_1/Shape:output:0'lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like_1?
lstm_cell_46/mulMulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul?
lstm_cell_46/mul_1Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_1?
lstm_cell_46/mul_2Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_2?
lstm_cell_46/mul_3Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_3~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dim?
!lstm_cell_46/split/ReadVariableOpReadVariableOp*lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_46/split/ReadVariableOp?
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0)lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm_cell_46/split?
lstm_cell_46/MatMulMatMullstm_cell_46/mul:z:0lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul?
lstm_cell_46/MatMul_1MatMullstm_cell_46/mul_1:z:0lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_1?
lstm_cell_46/MatMul_2MatMullstm_cell_46/mul_2:z:0lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_2?
lstm_cell_46/MatMul_3MatMullstm_cell_46/mul_3:z:0lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_3?
lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_46/split_1/split_dim?
#lstm_cell_46/split_1/ReadVariableOpReadVariableOp,lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_46/split_1/ReadVariableOp?
lstm_cell_46/split_1Split'lstm_cell_46/split_1/split_dim:output:0+lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell_46/split_1?
lstm_cell_46/BiasAddBiasAddlstm_cell_46/MatMul:product:0lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd?
lstm_cell_46/BiasAdd_1BiasAddlstm_cell_46/MatMul_1:product:0lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_1?
lstm_cell_46/BiasAdd_2BiasAddlstm_cell_46/MatMul_2:product:0lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_2?
lstm_cell_46/BiasAdd_3BiasAddlstm_cell_46/MatMul_3:product:0lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_3?
lstm_cell_46/mul_4Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_4?
lstm_cell_46/mul_5Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_5?
lstm_cell_46/mul_6Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_6?
lstm_cell_46/mul_7Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_7?
lstm_cell_46/ReadVariableOpReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp?
 lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_46/strided_slice/stack?
"lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice/stack_1?
"lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_46/strided_slice/stack_2?
lstm_cell_46/strided_sliceStridedSlice#lstm_cell_46/ReadVariableOp:value:0)lstm_cell_46/strided_slice/stack:output:0+lstm_cell_46/strided_slice/stack_1:output:0+lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice?
lstm_cell_46/MatMul_4MatMullstm_cell_46/mul_4:z:0#lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_4?
lstm_cell_46/addAddV2lstm_cell_46/BiasAdd:output:0lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add?
lstm_cell_46/SigmoidSigmoidlstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid?
lstm_cell_46/ReadVariableOp_1ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_1?
"lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice_1/stack?
$lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm_cell_46/strided_slice_1/stack_1?
$lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_1/stack_2?
lstm_cell_46/strided_slice_1StridedSlice%lstm_cell_46/ReadVariableOp_1:value:0+lstm_cell_46/strided_slice_1/stack:output:0-lstm_cell_46/strided_slice_1/stack_1:output:0-lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_1?
lstm_cell_46/MatMul_5MatMullstm_cell_46/mul_5:z:0%lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_5?
lstm_cell_46/add_1AddV2lstm_cell_46/BiasAdd_1:output:0lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_1?
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_1?
lstm_cell_46/mul_8Mullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_8?
lstm_cell_46/ReadVariableOp_2ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_2?
"lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"lstm_cell_46/strided_slice_2/stack?
$lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2&
$lstm_cell_46/strided_slice_2/stack_1?
$lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_2/stack_2?
lstm_cell_46/strided_slice_2StridedSlice%lstm_cell_46/ReadVariableOp_2:value:0+lstm_cell_46/strided_slice_2/stack:output:0-lstm_cell_46/strided_slice_2/stack_1:output:0-lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_2?
lstm_cell_46/MatMul_6MatMullstm_cell_46/mul_6:z:0%lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_6?
lstm_cell_46/add_2AddV2lstm_cell_46/BiasAdd_2:output:0lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_2y
lstm_cell_46/TanhTanhlstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh?
lstm_cell_46/mul_9Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_9?
lstm_cell_46/add_3AddV2lstm_cell_46/mul_8:z:0lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_3?
lstm_cell_46/ReadVariableOp_3ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_3?
"lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2$
"lstm_cell_46/strided_slice_3/stack?
$lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_46/strided_slice_3/stack_1?
$lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_3/stack_2?
lstm_cell_46/strided_slice_3StridedSlice%lstm_cell_46/ReadVariableOp_3:value:0+lstm_cell_46/strided_slice_3/stack:output:0-lstm_cell_46/strided_slice_3/stack_1:output:0-lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_3?
lstm_cell_46/MatMul_7MatMullstm_cell_46/mul_7:z:0%lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_7?
lstm_cell_46/add_4AddV2lstm_cell_46/BiasAdd_3:output:0lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_4?
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_2}
lstm_cell_46/Tanh_1Tanhlstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh_1?
lstm_cell_46/mul_10Mullstm_cell_46/Sigmoid_2:y:0lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_46_split_readvariableop_resource,lstm_cell_46_split_1_readvariableop_resource$lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_236803*
condR
while_cond_236802*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_46/ReadVariableOp^lstm_cell_46/ReadVariableOp_1^lstm_cell_46/ReadVariableOp_2^lstm_cell_46/ReadVariableOp_3"^lstm_cell_46/split/ReadVariableOp$^lstm_cell_46/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2:
lstm_cell_46/ReadVariableOplstm_cell_46/ReadVariableOp2>
lstm_cell_46/ReadVariableOp_1lstm_cell_46/ReadVariableOp_12>
lstm_cell_46/ReadVariableOp_2lstm_cell_46/ReadVariableOp_22>
lstm_cell_46/ReadVariableOp_3lstm_cell_46/ReadVariableOp_32F
!lstm_cell_46/split/ReadVariableOp!lstm_cell_46/split/ReadVariableOp2J
#lstm_cell_46/split_1/ReadVariableOp#lstm_cell_46/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?w
?
"__inference__traced_restore_240186
file_prefix9
%assignvariableop_embedding_embeddings:
??&
assignvariableop_1_adam_iter:	 (
assignvariableop_2_adam_beta_1: (
assignvariableop_3_adam_beta_2: '
assignvariableop_4_adam_decay: /
%assignvariableop_5_adam_learning_rate: <
(assignvariableop_6_lstm_lstm_cell_kernel:
??F
2assignvariableop_7_lstm_lstm_cell_recurrent_kernel:
??5
&assignvariableop_8_lstm_lstm_cell_bias:	?F
3assignvariableop_9_module_wrapper_9_dense_10_kernel:	?@
2assignvariableop_10_module_wrapper_9_dense_10_bias:#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: C
/assignvariableop_15_adam_embedding_embeddings_m:
??D
0assignvariableop_16_adam_lstm_lstm_cell_kernel_m:
??N
:assignvariableop_17_adam_lstm_lstm_cell_recurrent_kernel_m:
??=
.assignvariableop_18_adam_lstm_lstm_cell_bias_m:	?N
;assignvariableop_19_adam_module_wrapper_9_dense_10_kernel_m:	?G
9assignvariableop_20_adam_module_wrapper_9_dense_10_bias_m:C
/assignvariableop_21_adam_embedding_embeddings_v:
??D
0assignvariableop_22_adam_lstm_lstm_cell_kernel_v:
??N
:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_v:
??=
.assignvariableop_24_adam_lstm_lstm_cell_bias_v:	?N
;assignvariableop_25_adam_module_wrapper_9_dense_10_kernel_v:	?G
9assignvariableop_26_adam_module_wrapper_9_dense_10_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_iterIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp(assignvariableop_6_lstm_lstm_cell_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_lstm_lstm_cell_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp&assignvariableop_8_lstm_lstm_cell_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp3assignvariableop_9_module_wrapper_9_dense_10_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp2assignvariableop_10_module_wrapper_9_dense_10_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_lstm_lstm_cell_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_lstm_lstm_cell_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp;assignvariableop_19_adam_module_wrapper_9_dense_10_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_adam_module_wrapper_9_dense_10_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_lstm_lstm_cell_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_lstm_lstm_cell_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp;assignvariableop_25_adam_module_wrapper_9_dense_10_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp9assignvariableop_26_adam_module_wrapper_9_dense_10_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
?
?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_237001

args_0:
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMulargs_0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdd|
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Softmax?
IdentityIdentitydense_10/Softmax:softmax:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_237488

inputs$
embedding_237471:
??
lstm_237475:
??
lstm_237477:	?
lstm_237479:
??*
module_wrapper_9_237482:	?%
module_wrapper_9_237484:
identity??!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?)spatial_dropout1d/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_237471*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2366772#
!embedding/StatefulPartitionedCall?
)spatial_dropout1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2374382+
)spatial_dropout1d/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout1d/StatefulPartitionedCall:output:0lstm_237475lstm_237477lstm_237479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2374002
lstm/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0module_wrapper_9_237482module_wrapper_9_237484*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_2370012*
(module_wrapper_9/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_9/StatefulPartitionedCall:output:0"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*^spatial_dropout1d/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall2V
)spatial_dropout1d/StatefulPartitionedCall)spatial_dropout1d/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_236802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_236802___redundant_placeholder04
0while_while_cond_236802___redundant_placeholder14
0while_while_cond_236802___redundant_placeholder24
0while_while_cond_236802___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
k
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238343

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_embedding_layer_call_and_return_conditional_losses_238304

inputs+
embedding_lookup_238298:
??
identity??embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_238298Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/238298*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/238298*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
k
2__inference_spatial_dropout1d_layer_call_fn_238385

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2374382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_237438

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?N
?
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_239811

inputs
states_0
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_5h
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_6h
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_239266

inputs>
*lstm_cell_46_split_readvariableop_resource:
??;
,lstm_cell_46_split_1_readvariableop_resource:	?8
$lstm_cell_46_readvariableop_resource:
??
identity??lstm_cell_46/ReadVariableOp?lstm_cell_46/ReadVariableOp_1?lstm_cell_46/ReadVariableOp_2?lstm_cell_46/ReadVariableOp_3?!lstm_cell_46/split/ReadVariableOp?#lstm_cell_46/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_46/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_46/ones_like/Shape?
lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/ones_like/Const?
lstm_cell_46/ones_likeFill%lstm_cell_46/ones_like/Shape:output:0%lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like~
lstm_cell_46/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_46/ones_like_1/Shape?
lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm_cell_46/ones_like_1/Const?
lstm_cell_46/ones_like_1Fill'lstm_cell_46/ones_like_1/Shape:output:0'lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like_1?
lstm_cell_46/mulMulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul?
lstm_cell_46/mul_1Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_1?
lstm_cell_46/mul_2Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_2?
lstm_cell_46/mul_3Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_3~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dim?
!lstm_cell_46/split/ReadVariableOpReadVariableOp*lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_46/split/ReadVariableOp?
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0)lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm_cell_46/split?
lstm_cell_46/MatMulMatMullstm_cell_46/mul:z:0lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul?
lstm_cell_46/MatMul_1MatMullstm_cell_46/mul_1:z:0lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_1?
lstm_cell_46/MatMul_2MatMullstm_cell_46/mul_2:z:0lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_2?
lstm_cell_46/MatMul_3MatMullstm_cell_46/mul_3:z:0lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_3?
lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_46/split_1/split_dim?
#lstm_cell_46/split_1/ReadVariableOpReadVariableOp,lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_46/split_1/ReadVariableOp?
lstm_cell_46/split_1Split'lstm_cell_46/split_1/split_dim:output:0+lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell_46/split_1?
lstm_cell_46/BiasAddBiasAddlstm_cell_46/MatMul:product:0lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd?
lstm_cell_46/BiasAdd_1BiasAddlstm_cell_46/MatMul_1:product:0lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_1?
lstm_cell_46/BiasAdd_2BiasAddlstm_cell_46/MatMul_2:product:0lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_2?
lstm_cell_46/BiasAdd_3BiasAddlstm_cell_46/MatMul_3:product:0lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_3?
lstm_cell_46/mul_4Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_4?
lstm_cell_46/mul_5Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_5?
lstm_cell_46/mul_6Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_6?
lstm_cell_46/mul_7Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_7?
lstm_cell_46/ReadVariableOpReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp?
 lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_46/strided_slice/stack?
"lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice/stack_1?
"lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_46/strided_slice/stack_2?
lstm_cell_46/strided_sliceStridedSlice#lstm_cell_46/ReadVariableOp:value:0)lstm_cell_46/strided_slice/stack:output:0+lstm_cell_46/strided_slice/stack_1:output:0+lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice?
lstm_cell_46/MatMul_4MatMullstm_cell_46/mul_4:z:0#lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_4?
lstm_cell_46/addAddV2lstm_cell_46/BiasAdd:output:0lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add?
lstm_cell_46/SigmoidSigmoidlstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid?
lstm_cell_46/ReadVariableOp_1ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_1?
"lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice_1/stack?
$lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm_cell_46/strided_slice_1/stack_1?
$lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_1/stack_2?
lstm_cell_46/strided_slice_1StridedSlice%lstm_cell_46/ReadVariableOp_1:value:0+lstm_cell_46/strided_slice_1/stack:output:0-lstm_cell_46/strided_slice_1/stack_1:output:0-lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_1?
lstm_cell_46/MatMul_5MatMullstm_cell_46/mul_5:z:0%lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_5?
lstm_cell_46/add_1AddV2lstm_cell_46/BiasAdd_1:output:0lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_1?
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_1?
lstm_cell_46/mul_8Mullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_8?
lstm_cell_46/ReadVariableOp_2ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_2?
"lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"lstm_cell_46/strided_slice_2/stack?
$lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2&
$lstm_cell_46/strided_slice_2/stack_1?
$lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_2/stack_2?
lstm_cell_46/strided_slice_2StridedSlice%lstm_cell_46/ReadVariableOp_2:value:0+lstm_cell_46/strided_slice_2/stack:output:0-lstm_cell_46/strided_slice_2/stack_1:output:0-lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_2?
lstm_cell_46/MatMul_6MatMullstm_cell_46/mul_6:z:0%lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_6?
lstm_cell_46/add_2AddV2lstm_cell_46/BiasAdd_2:output:0lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_2y
lstm_cell_46/TanhTanhlstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh?
lstm_cell_46/mul_9Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_9?
lstm_cell_46/add_3AddV2lstm_cell_46/mul_8:z:0lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_3?
lstm_cell_46/ReadVariableOp_3ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_3?
"lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2$
"lstm_cell_46/strided_slice_3/stack?
$lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_46/strided_slice_3/stack_1?
$lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_3/stack_2?
lstm_cell_46/strided_slice_3StridedSlice%lstm_cell_46/ReadVariableOp_3:value:0+lstm_cell_46/strided_slice_3/stack:output:0-lstm_cell_46/strided_slice_3/stack_1:output:0-lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_3?
lstm_cell_46/MatMul_7MatMullstm_cell_46/mul_7:z:0%lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_7?
lstm_cell_46/add_4AddV2lstm_cell_46/BiasAdd_3:output:0lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_4?
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_2}
lstm_cell_46/Tanh_1Tanhlstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh_1?
lstm_cell_46/mul_10Mullstm_cell_46/Sigmoid_2:y:0lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_46_split_readvariableop_resource,lstm_cell_46_split_1_readvariableop_resource$lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_239132*
condR
while_cond_239131*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_46/ReadVariableOp^lstm_cell_46/ReadVariableOp_1^lstm_cell_46/ReadVariableOp_2^lstm_cell_46/ReadVariableOp_3"^lstm_cell_46/split/ReadVariableOp$^lstm_cell_46/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2:
lstm_cell_46/ReadVariableOplstm_cell_46/ReadVariableOp2>
lstm_cell_46/ReadVariableOp_1lstm_cell_46/ReadVariableOp_12>
lstm_cell_46/ReadVariableOp_2lstm_cell_46/ReadVariableOp_22>
lstm_cell_46/ReadVariableOp_3lstm_cell_46/ReadVariableOp_32F
!lstm_cell_46/split/ReadVariableOp!lstm_cell_46/split/ReadVariableOp2J
#lstm_cell_46/split_1/ReadVariableOp#lstm_cell_46/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_239446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_239446___redundant_placeholder04
0while_while_cond_239446___redundant_placeholder14
0while_while_cond_239446___redundant_placeholder24
0while_while_cond_239446___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?E
?
@__inference_lstm_layer_call_and_return_conditional_losses_236074

inputs'
lstm_cell_46_235992:
??"
lstm_cell_46_235994:	?'
lstm_cell_46_235996:
??
identity??$lstm_cell_46/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_235992lstm_cell_46_235994lstm_cell_46_235996*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_2359912&
$lstm_cell_46/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_235992lstm_cell_46_235994lstm_cell_46_235996*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_236005*
condR
while_cond_236004*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_46/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
̒
?	
while_body_238502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_46_split_readvariableop_resource_0:
??C
4while_lstm_cell_46_split_1_readvariableop_resource_0:	?@
,while_lstm_cell_46_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_46_split_readvariableop_resource:
??A
2while_lstm_cell_46_split_1_readvariableop_resource:	?>
*while_lstm_cell_46_readvariableop_resource:
????!while/lstm_cell_46/ReadVariableOp?#while/lstm_cell_46/ReadVariableOp_1?#while/lstm_cell_46/ReadVariableOp_2?#while/lstm_cell_46/ReadVariableOp_3?'while/lstm_cell_46/split/ReadVariableOp?)while/lstm_cell_46/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_46/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/ones_like/Shape?
"while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/ones_like/Const?
while/lstm_cell_46/ones_likeFill+while/lstm_cell_46/ones_like/Shape:output:0+while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/ones_like?
$while/lstm_cell_46/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_46/ones_like_1/Shape?
$while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$while/lstm_cell_46/ones_like_1/Const?
while/lstm_cell_46/ones_like_1Fill-while/lstm_cell_46/ones_like_1/Shape:output:0-while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/ones_like_1?
while/lstm_cell_46/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul?
while/lstm_cell_46/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_1?
while/lstm_cell_46/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_2?
while/lstm_cell_46/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_3?
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim?
'while/lstm_cell_46/split/ReadVariableOpReadVariableOp2while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_46/split/ReadVariableOp?
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
while/lstm_cell_46/split?
while/lstm_cell_46/MatMulMatMulwhile/lstm_cell_46/mul:z:0!while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul?
while/lstm_cell_46/MatMul_1MatMulwhile/lstm_cell_46/mul_1:z:0!while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_1?
while/lstm_cell_46/MatMul_2MatMulwhile/lstm_cell_46/mul_2:z:0!while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_2?
while/lstm_cell_46/MatMul_3MatMulwhile/lstm_cell_46/mul_3:z:0!while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_3?
$while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_46/split_1/split_dim?
)while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_46/split_1/ReadVariableOp?
while/lstm_cell_46/split_1Split-while/lstm_cell_46/split_1/split_dim:output:01while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell_46/split_1?
while/lstm_cell_46/BiasAddBiasAdd#while/lstm_cell_46/MatMul:product:0#while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd?
while/lstm_cell_46/BiasAdd_1BiasAdd%while/lstm_cell_46/MatMul_1:product:0#while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_1?
while/lstm_cell_46/BiasAdd_2BiasAdd%while/lstm_cell_46/MatMul_2:product:0#while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_2?
while/lstm_cell_46/BiasAdd_3BiasAdd%while/lstm_cell_46/MatMul_3:product:0#while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_3?
while/lstm_cell_46/mul_4Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_4?
while/lstm_cell_46/mul_5Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_5?
while/lstm_cell_46/mul_6Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_6?
while/lstm_cell_46/mul_7Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_7?
!while/lstm_cell_46/ReadVariableOpReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/lstm_cell_46/ReadVariableOp?
&while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_46/strided_slice/stack?
(while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice/stack_1?
(while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_46/strided_slice/stack_2?
 while/lstm_cell_46/strided_sliceStridedSlice)while/lstm_cell_46/ReadVariableOp:value:0/while/lstm_cell_46/strided_slice/stack:output:01while/lstm_cell_46/strided_slice/stack_1:output:01while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/lstm_cell_46/strided_slice?
while/lstm_cell_46/MatMul_4MatMulwhile/lstm_cell_46/mul_4:z:0)while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_4?
while/lstm_cell_46/addAddV2#while/lstm_cell_46/BiasAdd:output:0%while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add?
while/lstm_cell_46/SigmoidSigmoidwhile/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid?
#while/lstm_cell_46/ReadVariableOp_1ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_1?
(while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice_1/stack?
*while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*while/lstm_cell_46/strided_slice_1/stack_1?
*while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_1/stack_2?
"while/lstm_cell_46/strided_slice_1StridedSlice+while/lstm_cell_46/ReadVariableOp_1:value:01while/lstm_cell_46/strided_slice_1/stack:output:03while/lstm_cell_46/strided_slice_1/stack_1:output:03while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_1?
while/lstm_cell_46/MatMul_5MatMulwhile/lstm_cell_46/mul_5:z:0+while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_5?
while/lstm_cell_46/add_1AddV2%while/lstm_cell_46/BiasAdd_1:output:0%while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_1?
while/lstm_cell_46/Sigmoid_1Sigmoidwhile/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_1?
while/lstm_cell_46/mul_8Mul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_8?
#while/lstm_cell_46/ReadVariableOp_2ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_2?
(while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/lstm_cell_46/strided_slice_2/stack?
*while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*while/lstm_cell_46/strided_slice_2/stack_1?
*while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_2/stack_2?
"while/lstm_cell_46/strided_slice_2StridedSlice+while/lstm_cell_46/ReadVariableOp_2:value:01while/lstm_cell_46/strided_slice_2/stack:output:03while/lstm_cell_46/strided_slice_2/stack_1:output:03while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_2?
while/lstm_cell_46/MatMul_6MatMulwhile/lstm_cell_46/mul_6:z:0+while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_6?
while/lstm_cell_46/add_2AddV2%while/lstm_cell_46/BiasAdd_2:output:0%while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_2?
while/lstm_cell_46/TanhTanhwhile/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh?
while/lstm_cell_46/mul_9Mulwhile/lstm_cell_46/Sigmoid:y:0while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_9?
while/lstm_cell_46/add_3AddV2while/lstm_cell_46/mul_8:z:0while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_3?
#while/lstm_cell_46/ReadVariableOp_3ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_3?
(while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(while/lstm_cell_46/strided_slice_3/stack?
*while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_46/strided_slice_3/stack_1?
*while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_3/stack_2?
"while/lstm_cell_46/strided_slice_3StridedSlice+while/lstm_cell_46/ReadVariableOp_3:value:01while/lstm_cell_46/strided_slice_3/stack:output:03while/lstm_cell_46/strided_slice_3/stack_1:output:03while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_3?
while/lstm_cell_46/MatMul_7MatMulwhile/lstm_cell_46/mul_7:z:0+while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_7?
while/lstm_cell_46/add_4AddV2%while/lstm_cell_46/BiasAdd_3:output:0%while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_4?
while/lstm_cell_46/Sigmoid_2Sigmoidwhile/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_2?
while/lstm_cell_46/Tanh_1Tanhwhile/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh_1?
while/lstm_cell_46/mul_10Mul while/lstm_cell_46/Sigmoid_2:y:0while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_46/mul_10:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_46/add_3:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_46_readvariableop_resource,while_lstm_cell_46_readvariableop_resource_0"j
2while_lstm_cell_46_split_1_readvariableop_resource4while_lstm_cell_46_split_1_readvariableop_resource_0"f
0while_lstm_cell_46_split_readvariableop_resource2while_lstm_cell_46_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2F
!while/lstm_cell_46/ReadVariableOp!while/lstm_cell_46/ReadVariableOp2J
#while/lstm_cell_46/ReadVariableOp_1#while/lstm_cell_46/ReadVariableOp_12J
#while/lstm_cell_46/ReadVariableOp_2#while/lstm_cell_46/ReadVariableOp_22J
#while/lstm_cell_46/ReadVariableOp_3#while/lstm_cell_46/ReadVariableOp_32R
'while/lstm_cell_46/split/ReadVariableOp'while/lstm_cell_46/split/ReadVariableOp2V
)while/lstm_cell_46/split_1/ReadVariableOp)while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_lstm_layer_call_fn_239656
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2360742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_238816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_238816___redundant_placeholder04
0while_while_cond_238816___redundant_placeholder14
0while_while_cond_238816___redundant_placeholder24
0while_while_cond_238816___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?

lstm_while_body_238055&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0K
7lstm_while_lstm_cell_46_split_readvariableop_resource_0:
??H
9lstm_while_lstm_cell_46_split_1_readvariableop_resource_0:	?E
1lstm_while_lstm_cell_46_readvariableop_resource_0:
??
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorI
5lstm_while_lstm_cell_46_split_readvariableop_resource:
??F
7lstm_while_lstm_cell_46_split_1_readvariableop_resource:	?C
/lstm_while_lstm_cell_46_readvariableop_resource:
????&lstm/while/lstm_cell_46/ReadVariableOp?(lstm/while/lstm_cell_46/ReadVariableOp_1?(lstm/while/lstm_cell_46/ReadVariableOp_2?(lstm/while/lstm_cell_46/ReadVariableOp_3?,lstm/while/lstm_cell_46/split/ReadVariableOp?.lstm/while/lstm_cell_46/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
'lstm/while/lstm_cell_46/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/ones_like/Shape?
'lstm/while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/ones_like/Const?
!lstm/while/lstm_cell_46/ones_likeFill0lstm/while/lstm_cell_46/ones_like/Shape:output:00lstm/while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/ones_like?
%lstm/while/lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%lstm/while/lstm_cell_46/dropout/Const?
#lstm/while/lstm_cell_46/dropout/MulMul*lstm/while/lstm_cell_46/ones_like:output:0.lstm/while/lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell_46/dropout/Mul?
%lstm/while/lstm_cell_46/dropout/ShapeShape*lstm/while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2'
%lstm/while/lstm_cell_46/dropout/Shape?
<lstm/while/lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform.lstm/while/lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2>
<lstm/while/lstm_cell_46/dropout/random_uniform/RandomUniform?
.lstm/while/lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.lstm/while/lstm_cell_46/dropout/GreaterEqual/y?
,lstm/while/lstm_cell_46/dropout/GreaterEqualGreaterEqualElstm/while/lstm_cell_46/dropout/random_uniform/RandomUniform:output:07lstm/while/lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2.
,lstm/while/lstm_cell_46/dropout/GreaterEqual?
$lstm/while/lstm_cell_46/dropout/CastCast0lstm/while/lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell_46/dropout/Cast?
%lstm/while/lstm_cell_46/dropout/Mul_1Mul'lstm/while/lstm_cell_46/dropout/Mul:z:0(lstm/while/lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout/Mul_1?
'lstm/while/lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_1/Const?
%lstm/while/lstm_cell_46/dropout_1/MulMul*lstm/while/lstm_cell_46/ones_like:output:00lstm/while/lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_1/Mul?
'lstm/while/lstm_cell_46/dropout_1/ShapeShape*lstm/while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_1/Shape?
>lstm/while/lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2О?2@
>lstm/while/lstm_cell_46/dropout_1/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_1/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_1/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_1/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_1/CastCast2lstm/while/lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_1/Cast?
'lstm/while/lstm_cell_46/dropout_1/Mul_1Mul)lstm/while/lstm_cell_46/dropout_1/Mul:z:0*lstm/while/lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_1/Mul_1?
'lstm/while/lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_2/Const?
%lstm/while/lstm_cell_46/dropout_2/MulMul*lstm/while/lstm_cell_46/ones_like:output:00lstm/while/lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_2/Mul?
'lstm/while/lstm_cell_46/dropout_2/ShapeShape*lstm/while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_2/Shape?
>lstm/while/lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Ɩ2@
>lstm/while/lstm_cell_46/dropout_2/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_2/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_2/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_2/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_2/CastCast2lstm/while/lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_2/Cast?
'lstm/while/lstm_cell_46/dropout_2/Mul_1Mul)lstm/while/lstm_cell_46/dropout_2/Mul:z:0*lstm/while/lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_2/Mul_1?
'lstm/while/lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_3/Const?
%lstm/while/lstm_cell_46/dropout_3/MulMul*lstm/while/lstm_cell_46/ones_like:output:00lstm/while/lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_3/Mul?
'lstm/while/lstm_cell_46/dropout_3/ShapeShape*lstm/while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_3/Shape?
>lstm/while/lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??:2@
>lstm/while/lstm_cell_46/dropout_3/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_3/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_3/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_3/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_3/CastCast2lstm/while/lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_3/Cast?
'lstm/while/lstm_cell_46/dropout_3/Mul_1Mul)lstm/while/lstm_cell_46/dropout_3/Mul:z:0*lstm/while/lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_3/Mul_1?
)lstm/while/lstm_cell_46/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2+
)lstm/while/lstm_cell_46/ones_like_1/Shape?
)lstm/while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)lstm/while/lstm_cell_46/ones_like_1/Const?
#lstm/while/lstm_cell_46/ones_like_1Fill2lstm/while/lstm_cell_46/ones_like_1/Shape:output:02lstm/while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell_46/ones_like_1?
'lstm/while/lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_4/Const?
%lstm/while/lstm_cell_46/dropout_4/MulMul,lstm/while/lstm_cell_46/ones_like_1:output:00lstm/while/lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_4/Mul?
'lstm/while/lstm_cell_46/dropout_4/ShapeShape,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_4/Shape?
>lstm/while/lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2@
>lstm/while/lstm_cell_46/dropout_4/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_4/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_4/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_4/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_4/CastCast2lstm/while/lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_4/Cast?
'lstm/while/lstm_cell_46/dropout_4/Mul_1Mul)lstm/while/lstm_cell_46/dropout_4/Mul:z:0*lstm/while/lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_4/Mul_1?
'lstm/while/lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_5/Const?
%lstm/while/lstm_cell_46/dropout_5/MulMul,lstm/while/lstm_cell_46/ones_like_1:output:00lstm/while/lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_5/Mul?
'lstm/while/lstm_cell_46/dropout_5/ShapeShape,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_5/Shape?
>lstm/while/lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ȷ?2@
>lstm/while/lstm_cell_46/dropout_5/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_5/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_5/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_5/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_5/CastCast2lstm/while/lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_5/Cast?
'lstm/while/lstm_cell_46/dropout_5/Mul_1Mul)lstm/while/lstm_cell_46/dropout_5/Mul:z:0*lstm/while/lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_5/Mul_1?
'lstm/while/lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_6/Const?
%lstm/while/lstm_cell_46/dropout_6/MulMul,lstm/while/lstm_cell_46/ones_like_1:output:00lstm/while/lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_6/Mul?
'lstm/while/lstm_cell_46/dropout_6/ShapeShape,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_6/Shape?
>lstm/while/lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??B2@
>lstm/while/lstm_cell_46/dropout_6/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_6/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_6/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_6/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_6/CastCast2lstm/while/lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_6/Cast?
'lstm/while/lstm_cell_46/dropout_6/Mul_1Mul)lstm/while/lstm_cell_46/dropout_6/Mul:z:0*lstm/while/lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_6/Mul_1?
'lstm/while/lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'lstm/while/lstm_cell_46/dropout_7/Const?
%lstm/while/lstm_cell_46/dropout_7/MulMul,lstm/while/lstm_cell_46/ones_like_1:output:00lstm/while/lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/while/lstm_cell_46/dropout_7/Mul?
'lstm/while/lstm_cell_46/dropout_7/ShapeShape,lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2)
'lstm/while/lstm_cell_46/dropout_7/Shape?
>lstm/while/lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform0lstm/while/lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??22@
>lstm/while/lstm_cell_46/dropout_7/random_uniform/RandomUniform?
0lstm/while/lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>22
0lstm/while/lstm_cell_46/dropout_7/GreaterEqual/y?
.lstm/while/lstm_cell_46/dropout_7/GreaterEqualGreaterEqualGlstm/while/lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:09lstm/while/lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????20
.lstm/while/lstm_cell_46/dropout_7/GreaterEqual?
&lstm/while/lstm_cell_46/dropout_7/CastCast2lstm/while/lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2(
&lstm/while/lstm_cell_46/dropout_7/Cast?
'lstm/while/lstm_cell_46/dropout_7/Mul_1Mul)lstm/while/lstm_cell_46/dropout_7/Mul:z:0*lstm/while/lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2)
'lstm/while/lstm_cell_46/dropout_7/Mul_1?
lstm/while/lstm_cell_46/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm/while/lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul?
lstm/while/lstm_cell_46/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm/while/lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_1?
lstm/while/lstm_cell_46/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm/while/lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_2?
lstm/while/lstm_cell_46/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm/while/lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_3?
'lstm/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'lstm/while/lstm_cell_46/split/split_dim?
,lstm/while/lstm_cell_46/split/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,lstm/while/lstm_cell_46/split/ReadVariableOp?
lstm/while/lstm_cell_46/splitSplit0lstm/while/lstm_cell_46/split/split_dim:output:04lstm/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm/while/lstm_cell_46/split?
lstm/while/lstm_cell_46/MatMulMatMullstm/while/lstm_cell_46/mul:z:0&lstm/while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell_46/MatMul?
 lstm/while/lstm_cell_46/MatMul_1MatMul!lstm/while/lstm_cell_46/mul_1:z:0&lstm/while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_1?
 lstm/while/lstm_cell_46/MatMul_2MatMul!lstm/while/lstm_cell_46/mul_2:z:0&lstm/while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_2?
 lstm/while/lstm_cell_46/MatMul_3MatMul!lstm/while/lstm_cell_46/mul_3:z:0&lstm/while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_3?
)lstm/while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2+
)lstm/while/lstm_cell_46/split_1/split_dim?
.lstm/while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp9lstm_while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype020
.lstm/while/lstm_cell_46/split_1/ReadVariableOp?
lstm/while/lstm_cell_46/split_1Split2lstm/while/lstm_cell_46/split_1/split_dim:output:06lstm/while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2!
lstm/while/lstm_cell_46/split_1?
lstm/while/lstm_cell_46/BiasAddBiasAdd(lstm/while/lstm_cell_46/MatMul:product:0(lstm/while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2!
lstm/while/lstm_cell_46/BiasAdd?
!lstm/while/lstm_cell_46/BiasAdd_1BiasAdd*lstm/while/lstm_cell_46/MatMul_1:product:0(lstm/while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/BiasAdd_1?
!lstm/while/lstm_cell_46/BiasAdd_2BiasAdd*lstm/while/lstm_cell_46/MatMul_2:product:0(lstm/while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/BiasAdd_2?
!lstm/while/lstm_cell_46/BiasAdd_3BiasAdd*lstm/while/lstm_cell_46/MatMul_3:product:0(lstm/while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/BiasAdd_3?
lstm/while/lstm_cell_46/mul_4Mullstm_while_placeholder_2+lstm/while/lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_4?
lstm/while/lstm_cell_46/mul_5Mullstm_while_placeholder_2+lstm/while/lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_5?
lstm/while/lstm_cell_46/mul_6Mullstm_while_placeholder_2+lstm/while/lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_6?
lstm/while/lstm_cell_46/mul_7Mullstm_while_placeholder_2+lstm/while/lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_7?
&lstm/while/lstm_cell_46/ReadVariableOpReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&lstm/while/lstm_cell_46/ReadVariableOp?
+lstm/while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+lstm/while/lstm_cell_46/strided_slice/stack?
-lstm/while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2/
-lstm/while/lstm_cell_46/strided_slice/stack_1?
-lstm/while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-lstm/while/lstm_cell_46/strided_slice/stack_2?
%lstm/while/lstm_cell_46/strided_sliceStridedSlice.lstm/while/lstm_cell_46/ReadVariableOp:value:04lstm/while/lstm_cell_46/strided_slice/stack:output:06lstm/while/lstm_cell_46/strided_slice/stack_1:output:06lstm/while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2'
%lstm/while/lstm_cell_46/strided_slice?
 lstm/while/lstm_cell_46/MatMul_4MatMul!lstm/while/lstm_cell_46/mul_4:z:0.lstm/while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_4?
lstm/while/lstm_cell_46/addAddV2(lstm/while/lstm_cell_46/BiasAdd:output:0*lstm/while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add?
lstm/while/lstm_cell_46/SigmoidSigmoidlstm/while/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2!
lstm/while/lstm_cell_46/Sigmoid?
(lstm/while/lstm_cell_46/ReadVariableOp_1ReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(lstm/while/lstm_cell_46/ReadVariableOp_1?
-lstm/while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2/
-lstm/while/lstm_cell_46/strided_slice_1/stack?
/lstm/while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  21
/lstm/while/lstm_cell_46/strided_slice_1/stack_1?
/lstm/while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm/while/lstm_cell_46/strided_slice_1/stack_2?
'lstm/while/lstm_cell_46/strided_slice_1StridedSlice0lstm/while/lstm_cell_46/ReadVariableOp_1:value:06lstm/while/lstm_cell_46/strided_slice_1/stack:output:08lstm/while/lstm_cell_46/strided_slice_1/stack_1:output:08lstm/while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'lstm/while/lstm_cell_46/strided_slice_1?
 lstm/while/lstm_cell_46/MatMul_5MatMul!lstm/while/lstm_cell_46/mul_5:z:00lstm/while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_5?
lstm/while/lstm_cell_46/add_1AddV2*lstm/while/lstm_cell_46/BiasAdd_1:output:0*lstm/while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_1?
!lstm/while/lstm_cell_46/Sigmoid_1Sigmoid!lstm/while/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/Sigmoid_1?
lstm/while/lstm_cell_46/mul_8Mul%lstm/while/lstm_cell_46/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_8?
(lstm/while/lstm_cell_46/ReadVariableOp_2ReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(lstm/while/lstm_cell_46/ReadVariableOp_2?
-lstm/while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2/
-lstm/while/lstm_cell_46/strided_slice_2/stack?
/lstm/while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  21
/lstm/while/lstm_cell_46/strided_slice_2/stack_1?
/lstm/while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm/while/lstm_cell_46/strided_slice_2/stack_2?
'lstm/while/lstm_cell_46/strided_slice_2StridedSlice0lstm/while/lstm_cell_46/ReadVariableOp_2:value:06lstm/while/lstm_cell_46/strided_slice_2/stack:output:08lstm/while/lstm_cell_46/strided_slice_2/stack_1:output:08lstm/while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'lstm/while/lstm_cell_46/strided_slice_2?
 lstm/while/lstm_cell_46/MatMul_6MatMul!lstm/while/lstm_cell_46/mul_6:z:00lstm/while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_6?
lstm/while/lstm_cell_46/add_2AddV2*lstm/while/lstm_cell_46/BiasAdd_2:output:0*lstm/while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_2?
lstm/while/lstm_cell_46/TanhTanh!lstm/while/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/Tanh?
lstm/while/lstm_cell_46/mul_9Mul#lstm/while/lstm_cell_46/Sigmoid:y:0 lstm/while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/mul_9?
lstm/while/lstm_cell_46/add_3AddV2!lstm/while/lstm_cell_46/mul_8:z:0!lstm/while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_3?
(lstm/while/lstm_cell_46/ReadVariableOp_3ReadVariableOp1lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(lstm/while/lstm_cell_46/ReadVariableOp_3?
-lstm/while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2/
-lstm/while/lstm_cell_46/strided_slice_3/stack?
/lstm/while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        21
/lstm/while/lstm_cell_46/strided_slice_3/stack_1?
/lstm/while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/lstm/while/lstm_cell_46/strided_slice_3/stack_2?
'lstm/while/lstm_cell_46/strided_slice_3StridedSlice0lstm/while/lstm_cell_46/ReadVariableOp_3:value:06lstm/while/lstm_cell_46/strided_slice_3/stack:output:08lstm/while/lstm_cell_46/strided_slice_3/stack_1:output:08lstm/while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2)
'lstm/while/lstm_cell_46/strided_slice_3?
 lstm/while/lstm_cell_46/MatMul_7MatMul!lstm/while/lstm_cell_46/mul_7:z:00lstm/while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell_46/MatMul_7?
lstm/while/lstm_cell_46/add_4AddV2*lstm/while/lstm_cell_46/BiasAdd_3:output:0*lstm/while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell_46/add_4?
!lstm/while/lstm_cell_46/Sigmoid_2Sigmoid!lstm/while/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell_46/Sigmoid_2?
lstm/while/lstm_cell_46/Tanh_1Tanh!lstm/while/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell_46/Tanh_1?
lstm/while/lstm_cell_46/mul_10Mul%lstm/while/lstm_cell_46/Sigmoid_2:y:0"lstm/while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell_46/mul_10?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder"lstm/while/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1?
lstm/while/IdentityIdentitylstm/while/add_1:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identity"lstm/while/lstm_cell_46/mul_10:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_4?
lstm/while/Identity_5Identity!lstm/while/lstm_cell_46/add_3:z:0'^lstm/while/lstm_cell_46/ReadVariableOp)^lstm/while/lstm_cell_46/ReadVariableOp_1)^lstm/while/lstm_cell_46/ReadVariableOp_2)^lstm/while/lstm_cell_46/ReadVariableOp_3-^lstm/while/lstm_cell_46/split/ReadVariableOp/^lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"d
/lstm_while_lstm_cell_46_readvariableop_resource1lstm_while_lstm_cell_46_readvariableop_resource_0"t
7lstm_while_lstm_cell_46_split_1_readvariableop_resource9lstm_while_lstm_cell_46_split_1_readvariableop_resource_0"p
5lstm_while_lstm_cell_46_split_readvariableop_resource7lstm_while_lstm_cell_46_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&lstm/while/lstm_cell_46/ReadVariableOp&lstm/while/lstm_cell_46/ReadVariableOp2T
(lstm/while/lstm_cell_46/ReadVariableOp_1(lstm/while/lstm_cell_46/ReadVariableOp_12T
(lstm/while/lstm_cell_46/ReadVariableOp_2(lstm/while/lstm_cell_46/ReadVariableOp_22T
(lstm/while/lstm_cell_46/ReadVariableOp_3(lstm/while/lstm_cell_46/ReadVariableOp_32\
,lstm/while/lstm_cell_46/split/ReadVariableOp,lstm/while/lstm_cell_46/split/ReadVariableOp2`
.lstm/while/lstm_cell_46/split_1/ReadVariableOp.lstm/while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
N
2__inference_spatial_dropout1d_layer_call_fn_238380

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2366852
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_235799

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_238294

inputs
unknown:
??
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2374882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_237540
embedding_input$
embedding_237523:
??
lstm_237527:
??
lstm_237529:	?
lstm_237531:
??*
module_wrapper_9_237534:	?%
module_wrapper_9_237536:
identity??!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_237523*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2366772#
!embedding/StatefulPartitionedCall?
!spatial_dropout1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2366852#
!spatial_dropout1d/PartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*spatial_dropout1d/PartitionedCall:output:0lstm_237527lstm_237529lstm_237531*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2369372
lstm/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0module_wrapper_9_237534module_wrapper_9_237536*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_2369562*
(module_wrapper_9/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_9/StatefulPartitionedCall:output:0"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_nameembedding_input
?
k
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_236685

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?	
while_body_238817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_46_split_readvariableop_resource_0:
??C
4while_lstm_cell_46_split_1_readvariableop_resource_0:	?@
,while_lstm_cell_46_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_46_split_readvariableop_resource:
??A
2while_lstm_cell_46_split_1_readvariableop_resource:	?>
*while_lstm_cell_46_readvariableop_resource:
????!while/lstm_cell_46/ReadVariableOp?#while/lstm_cell_46/ReadVariableOp_1?#while/lstm_cell_46/ReadVariableOp_2?#while/lstm_cell_46/ReadVariableOp_3?'while/lstm_cell_46/split/ReadVariableOp?)while/lstm_cell_46/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_46/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/ones_like/Shape?
"while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/ones_like/Const?
while/lstm_cell_46/ones_likeFill+while/lstm_cell_46/ones_like/Shape:output:0+while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/ones_like?
 while/lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/lstm_cell_46/dropout/Const?
while/lstm_cell_46/dropout/MulMul%while/lstm_cell_46/ones_like:output:0)while/lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/dropout/Mul?
 while/lstm_cell_46/dropout/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_46/dropout/Shape?
7while/lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???29
7while/lstm_cell_46/dropout/random_uniform/RandomUniform?
)while/lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)while/lstm_cell_46/dropout/GreaterEqual/y?
'while/lstm_cell_46/dropout/GreaterEqualGreaterEqual@while/lstm_cell_46/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2)
'while/lstm_cell_46/dropout/GreaterEqual?
while/lstm_cell_46/dropout/CastCast+while/lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2!
while/lstm_cell_46/dropout/Cast?
 while/lstm_cell_46/dropout/Mul_1Mul"while/lstm_cell_46/dropout/Mul:z:0#while/lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout/Mul_1?
"while/lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_1/Const?
 while/lstm_cell_46/dropout_1/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_1/Mul?
"while/lstm_cell_46/dropout_1/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_1/Shape?
9while/lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ߞm2;
9while/lstm_cell_46/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_1/GreaterEqual/y?
)while/lstm_cell_46/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_1/GreaterEqual?
!while/lstm_cell_46/dropout_1/CastCast-while/lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_1/Cast?
"while/lstm_cell_46/dropout_1/Mul_1Mul$while/lstm_cell_46/dropout_1/Mul:z:0%while/lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_1/Mul_1?
"while/lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_2/Const?
 while/lstm_cell_46/dropout_2/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_2/Mul?
"while/lstm_cell_46/dropout_2/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_2/Shape?
9while/lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_2/GreaterEqual/y?
)while/lstm_cell_46/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_2/GreaterEqual?
!while/lstm_cell_46/dropout_2/CastCast-while/lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_2/Cast?
"while/lstm_cell_46/dropout_2/Mul_1Mul$while/lstm_cell_46/dropout_2/Mul:z:0%while/lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_2/Mul_1?
"while/lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_3/Const?
 while/lstm_cell_46/dropout_3/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_3/Mul?
"while/lstm_cell_46/dropout_3/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_3/Shape?
9while/lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_3/GreaterEqual/y?
)while/lstm_cell_46/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_3/GreaterEqual?
!while/lstm_cell_46/dropout_3/CastCast-while/lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_3/Cast?
"while/lstm_cell_46/dropout_3/Mul_1Mul$while/lstm_cell_46/dropout_3/Mul:z:0%while/lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_3/Mul_1?
$while/lstm_cell_46/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_46/ones_like_1/Shape?
$while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$while/lstm_cell_46/ones_like_1/Const?
while/lstm_cell_46/ones_like_1Fill-while/lstm_cell_46/ones_like_1/Shape:output:0-while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/ones_like_1?
"while/lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_4/Const?
 while/lstm_cell_46/dropout_4/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_4/Mul?
"while/lstm_cell_46/dropout_4/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_4/Shape?
9while/lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2͚?2;
9while/lstm_cell_46/dropout_4/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_4/GreaterEqual/y?
)while/lstm_cell_46/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_4/GreaterEqual?
!while/lstm_cell_46/dropout_4/CastCast-while/lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_4/Cast?
"while/lstm_cell_46/dropout_4/Mul_1Mul$while/lstm_cell_46/dropout_4/Mul:z:0%while/lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_4/Mul_1?
"while/lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_5/Const?
 while/lstm_cell_46/dropout_5/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_5/Mul?
"while/lstm_cell_46/dropout_5/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_5/Shape?
9while/lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??2;
9while/lstm_cell_46/dropout_5/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_5/GreaterEqual/y?
)while/lstm_cell_46/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_5/GreaterEqual?
!while/lstm_cell_46/dropout_5/CastCast-while/lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_5/Cast?
"while/lstm_cell_46/dropout_5/Mul_1Mul$while/lstm_cell_46/dropout_5/Mul:z:0%while/lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_5/Mul_1?
"while/lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_6/Const?
 while/lstm_cell_46/dropout_6/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_6/Mul?
"while/lstm_cell_46/dropout_6/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_6/Shape?
9while/lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_6/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_6/GreaterEqual/y?
)while/lstm_cell_46/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_6/GreaterEqual?
!while/lstm_cell_46/dropout_6/CastCast-while/lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_6/Cast?
"while/lstm_cell_46/dropout_6/Mul_1Mul$while/lstm_cell_46/dropout_6/Mul:z:0%while/lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_6/Mul_1?
"while/lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_7/Const?
 while/lstm_cell_46/dropout_7/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_7/Mul?
"while/lstm_cell_46/dropout_7/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_7/Shape?
9while/lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_7/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_7/GreaterEqual/y?
)while/lstm_cell_46/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_7/GreaterEqual?
!while/lstm_cell_46/dropout_7/CastCast-while/lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_7/Cast?
"while/lstm_cell_46/dropout_7/Mul_1Mul$while/lstm_cell_46/dropout_7/Mul:z:0%while/lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_7/Mul_1?
while/lstm_cell_46/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul?
while/lstm_cell_46/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_1?
while/lstm_cell_46/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_2?
while/lstm_cell_46/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_3?
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim?
'while/lstm_cell_46/split/ReadVariableOpReadVariableOp2while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_46/split/ReadVariableOp?
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
while/lstm_cell_46/split?
while/lstm_cell_46/MatMulMatMulwhile/lstm_cell_46/mul:z:0!while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul?
while/lstm_cell_46/MatMul_1MatMulwhile/lstm_cell_46/mul_1:z:0!while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_1?
while/lstm_cell_46/MatMul_2MatMulwhile/lstm_cell_46/mul_2:z:0!while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_2?
while/lstm_cell_46/MatMul_3MatMulwhile/lstm_cell_46/mul_3:z:0!while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_3?
$while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_46/split_1/split_dim?
)while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_46/split_1/ReadVariableOp?
while/lstm_cell_46/split_1Split-while/lstm_cell_46/split_1/split_dim:output:01while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell_46/split_1?
while/lstm_cell_46/BiasAddBiasAdd#while/lstm_cell_46/MatMul:product:0#while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd?
while/lstm_cell_46/BiasAdd_1BiasAdd%while/lstm_cell_46/MatMul_1:product:0#while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_1?
while/lstm_cell_46/BiasAdd_2BiasAdd%while/lstm_cell_46/MatMul_2:product:0#while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_2?
while/lstm_cell_46/BiasAdd_3BiasAdd%while/lstm_cell_46/MatMul_3:product:0#while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_3?
while/lstm_cell_46/mul_4Mulwhile_placeholder_2&while/lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_4?
while/lstm_cell_46/mul_5Mulwhile_placeholder_2&while/lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_5?
while/lstm_cell_46/mul_6Mulwhile_placeholder_2&while/lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_6?
while/lstm_cell_46/mul_7Mulwhile_placeholder_2&while/lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_7?
!while/lstm_cell_46/ReadVariableOpReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/lstm_cell_46/ReadVariableOp?
&while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_46/strided_slice/stack?
(while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice/stack_1?
(while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_46/strided_slice/stack_2?
 while/lstm_cell_46/strided_sliceStridedSlice)while/lstm_cell_46/ReadVariableOp:value:0/while/lstm_cell_46/strided_slice/stack:output:01while/lstm_cell_46/strided_slice/stack_1:output:01while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/lstm_cell_46/strided_slice?
while/lstm_cell_46/MatMul_4MatMulwhile/lstm_cell_46/mul_4:z:0)while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_4?
while/lstm_cell_46/addAddV2#while/lstm_cell_46/BiasAdd:output:0%while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add?
while/lstm_cell_46/SigmoidSigmoidwhile/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid?
#while/lstm_cell_46/ReadVariableOp_1ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_1?
(while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice_1/stack?
*while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*while/lstm_cell_46/strided_slice_1/stack_1?
*while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_1/stack_2?
"while/lstm_cell_46/strided_slice_1StridedSlice+while/lstm_cell_46/ReadVariableOp_1:value:01while/lstm_cell_46/strided_slice_1/stack:output:03while/lstm_cell_46/strided_slice_1/stack_1:output:03while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_1?
while/lstm_cell_46/MatMul_5MatMulwhile/lstm_cell_46/mul_5:z:0+while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_5?
while/lstm_cell_46/add_1AddV2%while/lstm_cell_46/BiasAdd_1:output:0%while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_1?
while/lstm_cell_46/Sigmoid_1Sigmoidwhile/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_1?
while/lstm_cell_46/mul_8Mul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_8?
#while/lstm_cell_46/ReadVariableOp_2ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_2?
(while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/lstm_cell_46/strided_slice_2/stack?
*while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*while/lstm_cell_46/strided_slice_2/stack_1?
*while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_2/stack_2?
"while/lstm_cell_46/strided_slice_2StridedSlice+while/lstm_cell_46/ReadVariableOp_2:value:01while/lstm_cell_46/strided_slice_2/stack:output:03while/lstm_cell_46/strided_slice_2/stack_1:output:03while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_2?
while/lstm_cell_46/MatMul_6MatMulwhile/lstm_cell_46/mul_6:z:0+while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_6?
while/lstm_cell_46/add_2AddV2%while/lstm_cell_46/BiasAdd_2:output:0%while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_2?
while/lstm_cell_46/TanhTanhwhile/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh?
while/lstm_cell_46/mul_9Mulwhile/lstm_cell_46/Sigmoid:y:0while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_9?
while/lstm_cell_46/add_3AddV2while/lstm_cell_46/mul_8:z:0while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_3?
#while/lstm_cell_46/ReadVariableOp_3ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_3?
(while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(while/lstm_cell_46/strided_slice_3/stack?
*while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_46/strided_slice_3/stack_1?
*while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_3/stack_2?
"while/lstm_cell_46/strided_slice_3StridedSlice+while/lstm_cell_46/ReadVariableOp_3:value:01while/lstm_cell_46/strided_slice_3/stack:output:03while/lstm_cell_46/strided_slice_3/stack_1:output:03while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_3?
while/lstm_cell_46/MatMul_7MatMulwhile/lstm_cell_46/mul_7:z:0+while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_7?
while/lstm_cell_46/add_4AddV2%while/lstm_cell_46/BiasAdd_3:output:0%while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_4?
while/lstm_cell_46/Sigmoid_2Sigmoidwhile/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_2?
while/lstm_cell_46/Tanh_1Tanhwhile/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh_1?
while/lstm_cell_46/mul_10Mul while/lstm_cell_46/Sigmoid_2:y:0while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_46/mul_10:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_46/add_3:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_46_readvariableop_resource,while_lstm_cell_46_readvariableop_resource_0"j
2while_lstm_cell_46_split_1_readvariableop_resource4while_lstm_cell_46_split_1_readvariableop_resource_0"f
0while_lstm_cell_46_split_readvariableop_resource2while_lstm_cell_46_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2F
!while/lstm_cell_46/ReadVariableOp!while/lstm_cell_46/ReadVariableOp2J
#while/lstm_cell_46/ReadVariableOp_1#while/lstm_cell_46/ReadVariableOp_12J
#while/lstm_cell_46/ReadVariableOp_2#while/lstm_cell_46/ReadVariableOp_22J
#while/lstm_cell_46/ReadVariableOp_3#while/lstm_cell_46/ReadVariableOp_32R
'while/lstm_cell_46/split/ReadVariableOp'while/lstm_cell_46/split/ReadVariableOp2V
)while/lstm_cell_46/split_1/ReadVariableOp)while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
$__inference_signature_wrapper_237585
embedding_input
unknown:
??
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2357902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_nameembedding_input
?N
?
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_235991

inputs

states
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_5f
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_6f
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?E
?
@__inference_lstm_layer_call_and_return_conditional_losses_236398

inputs'
lstm_cell_46_236316:
??"
lstm_cell_46_236318:	?'
lstm_cell_46_236320:
??
identity??$lstm_cell_46/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_46_236316lstm_cell_46_236318lstm_cell_46_236320*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_2362512&
$lstm_cell_46/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_46_236316lstm_cell_46_236318lstm_cell_46_236320*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_236329*
condR
while_cond_236328*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_46/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2L
$lstm_cell_46/StatefulPartitionedCall$lstm_cell_46/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_237560
embedding_input$
embedding_237543:
??
lstm_237547:
??
lstm_237549:	?
lstm_237551:
??*
module_wrapper_9_237554:	?%
module_wrapper_9_237556:
identity??!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?)spatial_dropout1d/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_237543*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2366772#
!embedding/StatefulPartitionedCall?
)spatial_dropout1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2374382+
)spatial_dropout1d/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall2spatial_dropout1d/StatefulPartitionedCall:output:0lstm_237547lstm_237549lstm_237551*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2374002
lstm/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0module_wrapper_9_237554module_wrapper_9_237556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_2370012*
(module_wrapper_9/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_9/StatefulPartitionedCall:output:0"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*^spatial_dropout1d/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall2V
)spatial_dropout1d/StatefulPartitionedCall)spatial_dropout1d/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_nameembedding_input
??
?	
while_body_237202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_46_split_readvariableop_resource_0:
??C
4while_lstm_cell_46_split_1_readvariableop_resource_0:	?@
,while_lstm_cell_46_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_46_split_readvariableop_resource:
??A
2while_lstm_cell_46_split_1_readvariableop_resource:	?>
*while_lstm_cell_46_readvariableop_resource:
????!while/lstm_cell_46/ReadVariableOp?#while/lstm_cell_46/ReadVariableOp_1?#while/lstm_cell_46/ReadVariableOp_2?#while/lstm_cell_46/ReadVariableOp_3?'while/lstm_cell_46/split/ReadVariableOp?)while/lstm_cell_46/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_46/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/ones_like/Shape?
"while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/ones_like/Const?
while/lstm_cell_46/ones_likeFill+while/lstm_cell_46/ones_like/Shape:output:0+while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/ones_like?
 while/lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/lstm_cell_46/dropout/Const?
while/lstm_cell_46/dropout/MulMul%while/lstm_cell_46/ones_like:output:0)while/lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/dropout/Mul?
 while/lstm_cell_46/dropout/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2"
 while/lstm_cell_46/dropout/Shape?
7while/lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??&29
7while/lstm_cell_46/dropout/random_uniform/RandomUniform?
)while/lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)while/lstm_cell_46/dropout/GreaterEqual/y?
'while/lstm_cell_46/dropout/GreaterEqualGreaterEqual@while/lstm_cell_46/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2)
'while/lstm_cell_46/dropout/GreaterEqual?
while/lstm_cell_46/dropout/CastCast+while/lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2!
while/lstm_cell_46/dropout/Cast?
 while/lstm_cell_46/dropout/Mul_1Mul"while/lstm_cell_46/dropout/Mul:z:0#while/lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout/Mul_1?
"while/lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_1/Const?
 while/lstm_cell_46/dropout_1/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_1/Mul?
"while/lstm_cell_46/dropout_1/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_1/Shape?
9while/lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_1/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_1/GreaterEqual/y?
)while/lstm_cell_46/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_1/GreaterEqual?
!while/lstm_cell_46/dropout_1/CastCast-while/lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_1/Cast?
"while/lstm_cell_46/dropout_1/Mul_1Mul$while/lstm_cell_46/dropout_1/Mul:z:0%while/lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_1/Mul_1?
"while/lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_2/Const?
 while/lstm_cell_46/dropout_2/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_2/Mul?
"while/lstm_cell_46/dropout_2/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_2/Shape?
9while/lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_2/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_2/GreaterEqual/y?
)while/lstm_cell_46/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_2/GreaterEqual?
!while/lstm_cell_46/dropout_2/CastCast-while/lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_2/Cast?
"while/lstm_cell_46/dropout_2/Mul_1Mul$while/lstm_cell_46/dropout_2/Mul:z:0%while/lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_2/Mul_1?
"while/lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_3/Const?
 while/lstm_cell_46/dropout_3/MulMul%while/lstm_cell_46/ones_like:output:0+while/lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_3/Mul?
"while/lstm_cell_46/dropout_3/ShapeShape%while/lstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_3/Shape?
9while/lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_3/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_3/GreaterEqual/y?
)while/lstm_cell_46/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_3/GreaterEqual?
!while/lstm_cell_46/dropout_3/CastCast-while/lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_3/Cast?
"while/lstm_cell_46/dropout_3/Mul_1Mul$while/lstm_cell_46/dropout_3/Mul:z:0%while/lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_3/Mul_1?
$while/lstm_cell_46/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_46/ones_like_1/Shape?
$while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$while/lstm_cell_46/ones_like_1/Const?
while/lstm_cell_46/ones_like_1Fill-while/lstm_cell_46/ones_like_1/Shape:output:0-while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/ones_like_1?
"while/lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_4/Const?
 while/lstm_cell_46/dropout_4/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_4/Mul?
"while/lstm_cell_46/dropout_4/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_4/Shape?
9while/lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_4/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_4/GreaterEqual/y?
)while/lstm_cell_46/dropout_4/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_4/GreaterEqual?
!while/lstm_cell_46/dropout_4/CastCast-while/lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_4/Cast?
"while/lstm_cell_46/dropout_4/Mul_1Mul$while/lstm_cell_46/dropout_4/Mul:z:0%while/lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_4/Mul_1?
"while/lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_5/Const?
 while/lstm_cell_46/dropout_5/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_5/Mul?
"while/lstm_cell_46/dropout_5/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_5/Shape?
9while/lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??r2;
9while/lstm_cell_46/dropout_5/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_5/GreaterEqual/y?
)while/lstm_cell_46/dropout_5/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_5/GreaterEqual?
!while/lstm_cell_46/dropout_5/CastCast-while/lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_5/Cast?
"while/lstm_cell_46/dropout_5/Mul_1Mul$while/lstm_cell_46/dropout_5/Mul:z:0%while/lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_5/Mul_1?
"while/lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_6/Const?
 while/lstm_cell_46/dropout_6/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_6/Mul?
"while/lstm_cell_46/dropout_6/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_6/Shape?
9while/lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_6/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_6/GreaterEqual/y?
)while/lstm_cell_46/dropout_6/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_6/GreaterEqual?
!while/lstm_cell_46/dropout_6/CastCast-while/lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_6/Cast?
"while/lstm_cell_46/dropout_6/Mul_1Mul$while/lstm_cell_46/dropout_6/Mul:z:0%while/lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_6/Mul_1?
"while/lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/dropout_7/Const?
 while/lstm_cell_46/dropout_7/MulMul'while/lstm_cell_46/ones_like_1:output:0+while/lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2"
 while/lstm_cell_46/dropout_7/Mul?
"while/lstm_cell_46/dropout_7/ShapeShape'while/lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/dropout_7/Shape?
9while/lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform+while/lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2;
9while/lstm_cell_46/dropout_7/random_uniform/RandomUniform?
+while/lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+while/lstm_cell_46/dropout_7/GreaterEqual/y?
)while/lstm_cell_46/dropout_7/GreaterEqualGreaterEqualBwhile/lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:04while/lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)while/lstm_cell_46/dropout_7/GreaterEqual?
!while/lstm_cell_46/dropout_7/CastCast-while/lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!while/lstm_cell_46/dropout_7/Cast?
"while/lstm_cell_46/dropout_7/Mul_1Mul$while/lstm_cell_46/dropout_7/Mul:z:0%while/lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"while/lstm_cell_46/dropout_7/Mul_1?
while/lstm_cell_46/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul?
while/lstm_cell_46/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_1?
while/lstm_cell_46/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_2?
while/lstm_cell_46/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0&while/lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_3?
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim?
'while/lstm_cell_46/split/ReadVariableOpReadVariableOp2while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_46/split/ReadVariableOp?
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
while/lstm_cell_46/split?
while/lstm_cell_46/MatMulMatMulwhile/lstm_cell_46/mul:z:0!while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul?
while/lstm_cell_46/MatMul_1MatMulwhile/lstm_cell_46/mul_1:z:0!while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_1?
while/lstm_cell_46/MatMul_2MatMulwhile/lstm_cell_46/mul_2:z:0!while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_2?
while/lstm_cell_46/MatMul_3MatMulwhile/lstm_cell_46/mul_3:z:0!while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_3?
$while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_46/split_1/split_dim?
)while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_46/split_1/ReadVariableOp?
while/lstm_cell_46/split_1Split-while/lstm_cell_46/split_1/split_dim:output:01while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell_46/split_1?
while/lstm_cell_46/BiasAddBiasAdd#while/lstm_cell_46/MatMul:product:0#while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd?
while/lstm_cell_46/BiasAdd_1BiasAdd%while/lstm_cell_46/MatMul_1:product:0#while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_1?
while/lstm_cell_46/BiasAdd_2BiasAdd%while/lstm_cell_46/MatMul_2:product:0#while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_2?
while/lstm_cell_46/BiasAdd_3BiasAdd%while/lstm_cell_46/MatMul_3:product:0#while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_3?
while/lstm_cell_46/mul_4Mulwhile_placeholder_2&while/lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_4?
while/lstm_cell_46/mul_5Mulwhile_placeholder_2&while/lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_5?
while/lstm_cell_46/mul_6Mulwhile_placeholder_2&while/lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_6?
while/lstm_cell_46/mul_7Mulwhile_placeholder_2&while/lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_7?
!while/lstm_cell_46/ReadVariableOpReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/lstm_cell_46/ReadVariableOp?
&while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_46/strided_slice/stack?
(while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice/stack_1?
(while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_46/strided_slice/stack_2?
 while/lstm_cell_46/strided_sliceStridedSlice)while/lstm_cell_46/ReadVariableOp:value:0/while/lstm_cell_46/strided_slice/stack:output:01while/lstm_cell_46/strided_slice/stack_1:output:01while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/lstm_cell_46/strided_slice?
while/lstm_cell_46/MatMul_4MatMulwhile/lstm_cell_46/mul_4:z:0)while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_4?
while/lstm_cell_46/addAddV2#while/lstm_cell_46/BiasAdd:output:0%while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add?
while/lstm_cell_46/SigmoidSigmoidwhile/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid?
#while/lstm_cell_46/ReadVariableOp_1ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_1?
(while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice_1/stack?
*while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*while/lstm_cell_46/strided_slice_1/stack_1?
*while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_1/stack_2?
"while/lstm_cell_46/strided_slice_1StridedSlice+while/lstm_cell_46/ReadVariableOp_1:value:01while/lstm_cell_46/strided_slice_1/stack:output:03while/lstm_cell_46/strided_slice_1/stack_1:output:03while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_1?
while/lstm_cell_46/MatMul_5MatMulwhile/lstm_cell_46/mul_5:z:0+while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_5?
while/lstm_cell_46/add_1AddV2%while/lstm_cell_46/BiasAdd_1:output:0%while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_1?
while/lstm_cell_46/Sigmoid_1Sigmoidwhile/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_1?
while/lstm_cell_46/mul_8Mul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_8?
#while/lstm_cell_46/ReadVariableOp_2ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_2?
(while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/lstm_cell_46/strided_slice_2/stack?
*while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*while/lstm_cell_46/strided_slice_2/stack_1?
*while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_2/stack_2?
"while/lstm_cell_46/strided_slice_2StridedSlice+while/lstm_cell_46/ReadVariableOp_2:value:01while/lstm_cell_46/strided_slice_2/stack:output:03while/lstm_cell_46/strided_slice_2/stack_1:output:03while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_2?
while/lstm_cell_46/MatMul_6MatMulwhile/lstm_cell_46/mul_6:z:0+while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_6?
while/lstm_cell_46/add_2AddV2%while/lstm_cell_46/BiasAdd_2:output:0%while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_2?
while/lstm_cell_46/TanhTanhwhile/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh?
while/lstm_cell_46/mul_9Mulwhile/lstm_cell_46/Sigmoid:y:0while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_9?
while/lstm_cell_46/add_3AddV2while/lstm_cell_46/mul_8:z:0while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_3?
#while/lstm_cell_46/ReadVariableOp_3ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_3?
(while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(while/lstm_cell_46/strided_slice_3/stack?
*while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_46/strided_slice_3/stack_1?
*while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_3/stack_2?
"while/lstm_cell_46/strided_slice_3StridedSlice+while/lstm_cell_46/ReadVariableOp_3:value:01while/lstm_cell_46/strided_slice_3/stack:output:03while/lstm_cell_46/strided_slice_3/stack_1:output:03while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_3?
while/lstm_cell_46/MatMul_7MatMulwhile/lstm_cell_46/mul_7:z:0+while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_7?
while/lstm_cell_46/add_4AddV2%while/lstm_cell_46/BiasAdd_3:output:0%while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_4?
while/lstm_cell_46/Sigmoid_2Sigmoidwhile/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_2?
while/lstm_cell_46/Tanh_1Tanhwhile/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh_1?
while/lstm_cell_46/mul_10Mul while/lstm_cell_46/Sigmoid_2:y:0while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_46/mul_10:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_46/add_3:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_46_readvariableop_resource,while_lstm_cell_46_readvariableop_resource_0"j
2while_lstm_cell_46_split_1_readvariableop_resource4while_lstm_cell_46_split_1_readvariableop_resource_0"f
0while_lstm_cell_46_split_readvariableop_resource2while_lstm_cell_46_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2F
!while/lstm_cell_46/ReadVariableOp!while/lstm_cell_46/ReadVariableOp2J
#while/lstm_cell_46/ReadVariableOp_1#while/lstm_cell_46/ReadVariableOp_12J
#while/lstm_cell_46/ReadVariableOp_2#while/lstm_cell_46/ReadVariableOp_22J
#while/lstm_cell_46/ReadVariableOp_3#while/lstm_cell_46/ReadVariableOp_32R
'while/lstm_cell_46/split/ReadVariableOp'while/lstm_cell_46/split/ReadVariableOp2V
)while/lstm_cell_46/split_1/ReadVariableOp)while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_238277

inputs
unknown:
??
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2369632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!sequential_lstm_while_body_235649<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0V
Bsequential_lstm_while_lstm_cell_46_split_readvariableop_resource_0:
??S
Dsequential_lstm_while_lstm_cell_46_split_1_readvariableop_resource_0:	?P
<sequential_lstm_while_lstm_cell_46_readvariableop_resource_0:
??"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorT
@sequential_lstm_while_lstm_cell_46_split_readvariableop_resource:
??Q
Bsequential_lstm_while_lstm_cell_46_split_1_readvariableop_resource:	?N
:sequential_lstm_while_lstm_cell_46_readvariableop_resource:
????1sequential/lstm/while/lstm_cell_46/ReadVariableOp?3sequential/lstm/while/lstm_cell_46/ReadVariableOp_1?3sequential/lstm/while/lstm_cell_46/ReadVariableOp_2?3sequential/lstm/while/lstm_cell_46/ReadVariableOp_3?7sequential/lstm/while/lstm_cell_46/split/ReadVariableOp?9sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp?
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2I
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02;
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItem?
2sequential/lstm/while/lstm_cell_46/ones_like/ShapeShape@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:24
2sequential/lstm/while/lstm_cell_46/ones_like/Shape?
2sequential/lstm/while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential/lstm/while/lstm_cell_46/ones_like/Const?
,sequential/lstm/while/lstm_cell_46/ones_likeFill;sequential/lstm/while/lstm_cell_46/ones_like/Shape:output:0;sequential/lstm/while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2.
,sequential/lstm/while/lstm_cell_46/ones_like?
4sequential/lstm/while/lstm_cell_46/ones_like_1/ShapeShape#sequential_lstm_while_placeholder_2*
T0*
_output_shapes
:26
4sequential/lstm/while/lstm_cell_46/ones_like_1/Shape?
4sequential/lstm/while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential/lstm/while/lstm_cell_46/ones_like_1/Const?
.sequential/lstm/while/lstm_cell_46/ones_like_1Fill=sequential/lstm/while/lstm_cell_46/ones_like_1/Shape:output:0=sequential/lstm/while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????20
.sequential/lstm/while/lstm_cell_46/ones_like_1?
&sequential/lstm/while/lstm_cell_46/mulMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:05sequential/lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/while/lstm_cell_46/mul?
(sequential/lstm/while/lstm_cell_46/mul_1Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:05sequential/lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_1?
(sequential/lstm/while/lstm_cell_46/mul_2Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:05sequential/lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_2?
(sequential/lstm/while/lstm_cell_46/mul_3Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:05sequential/lstm/while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_3?
2sequential/lstm/while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential/lstm/while/lstm_cell_46/split/split_dim?
7sequential/lstm/while/lstm_cell_46/split/ReadVariableOpReadVariableOpBsequential_lstm_while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype029
7sequential/lstm/while/lstm_cell_46/split/ReadVariableOp?
(sequential/lstm/while/lstm_cell_46/splitSplit;sequential/lstm/while/lstm_cell_46/split/split_dim:output:0?sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2*
(sequential/lstm/while/lstm_cell_46/split?
)sequential/lstm/while/lstm_cell_46/MatMulMatMul*sequential/lstm/while/lstm_cell_46/mul:z:01sequential/lstm/while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2+
)sequential/lstm/while/lstm_cell_46/MatMul?
+sequential/lstm/while/lstm_cell_46/MatMul_1MatMul,sequential/lstm/while/lstm_cell_46/mul_1:z:01sequential/lstm/while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_1?
+sequential/lstm/while/lstm_cell_46/MatMul_2MatMul,sequential/lstm/while/lstm_cell_46/mul_2:z:01sequential/lstm/while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_2?
+sequential/lstm/while/lstm_cell_46/MatMul_3MatMul,sequential/lstm/while/lstm_cell_46/mul_3:z:01sequential/lstm/while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_3?
4sequential/lstm/while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 26
4sequential/lstm/while/lstm_cell_46/split_1/split_dim?
9sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOpReadVariableOpDsequential_lstm_while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02;
9sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp?
*sequential/lstm/while/lstm_cell_46/split_1Split=sequential/lstm/while/lstm_cell_46/split_1/split_dim:output:0Asequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2,
*sequential/lstm/while/lstm_cell_46/split_1?
*sequential/lstm/while/lstm_cell_46/BiasAddBiasAdd3sequential/lstm/while/lstm_cell_46/MatMul:product:03sequential/lstm/while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2,
*sequential/lstm/while/lstm_cell_46/BiasAdd?
,sequential/lstm/while/lstm_cell_46/BiasAdd_1BiasAdd5sequential/lstm/while/lstm_cell_46/MatMul_1:product:03sequential/lstm/while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2.
,sequential/lstm/while/lstm_cell_46/BiasAdd_1?
,sequential/lstm/while/lstm_cell_46/BiasAdd_2BiasAdd5sequential/lstm/while/lstm_cell_46/MatMul_2:product:03sequential/lstm/while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2.
,sequential/lstm/while/lstm_cell_46/BiasAdd_2?
,sequential/lstm/while/lstm_cell_46/BiasAdd_3BiasAdd5sequential/lstm/while/lstm_cell_46/MatMul_3:product:03sequential/lstm/while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2.
,sequential/lstm/while/lstm_cell_46/BiasAdd_3?
(sequential/lstm/while/lstm_cell_46/mul_4Mul#sequential_lstm_while_placeholder_27sequential/lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_4?
(sequential/lstm/while/lstm_cell_46/mul_5Mul#sequential_lstm_while_placeholder_27sequential/lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_5?
(sequential/lstm/while/lstm_cell_46/mul_6Mul#sequential_lstm_while_placeholder_27sequential/lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_6?
(sequential/lstm/while/lstm_cell_46/mul_7Mul#sequential_lstm_while_placeholder_27sequential/lstm/while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_7?
1sequential/lstm/while/lstm_cell_46/ReadVariableOpReadVariableOp<sequential_lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype023
1sequential/lstm/while/lstm_cell_46/ReadVariableOp?
6sequential/lstm/while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        28
6sequential/lstm/while/lstm_cell_46/strided_slice/stack?
8sequential/lstm/while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2:
8sequential/lstm/while/lstm_cell_46/strided_slice/stack_1?
8sequential/lstm/while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/lstm/while/lstm_cell_46/strided_slice/stack_2?
0sequential/lstm/while/lstm_cell_46/strided_sliceStridedSlice9sequential/lstm/while/lstm_cell_46/ReadVariableOp:value:0?sequential/lstm/while/lstm_cell_46/strided_slice/stack:output:0Asequential/lstm/while/lstm_cell_46/strided_slice/stack_1:output:0Asequential/lstm/while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask22
0sequential/lstm/while/lstm_cell_46/strided_slice?
+sequential/lstm/while/lstm_cell_46/MatMul_4MatMul,sequential/lstm/while/lstm_cell_46/mul_4:z:09sequential/lstm/while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_4?
&sequential/lstm/while/lstm_cell_46/addAddV23sequential/lstm/while/lstm_cell_46/BiasAdd:output:05sequential/lstm/while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2(
&sequential/lstm/while/lstm_cell_46/add?
*sequential/lstm/while/lstm_cell_46/SigmoidSigmoid*sequential/lstm/while/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2,
*sequential/lstm/while/lstm_cell_46/Sigmoid?
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_1ReadVariableOp<sequential_lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype025
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_1?
8sequential/lstm/while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2:
8sequential/lstm/while/lstm_cell_46/strided_slice_1/stack?
:sequential/lstm/while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2<
:sequential/lstm/while/lstm_cell_46/strided_slice_1/stack_1?
:sequential/lstm/while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential/lstm/while/lstm_cell_46/strided_slice_1/stack_2?
2sequential/lstm/while/lstm_cell_46/strided_slice_1StridedSlice;sequential/lstm/while/lstm_cell_46/ReadVariableOp_1:value:0Asequential/lstm/while/lstm_cell_46/strided_slice_1/stack:output:0Csequential/lstm/while/lstm_cell_46/strided_slice_1/stack_1:output:0Csequential/lstm/while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask24
2sequential/lstm/while/lstm_cell_46/strided_slice_1?
+sequential/lstm/while/lstm_cell_46/MatMul_5MatMul,sequential/lstm/while/lstm_cell_46/mul_5:z:0;sequential/lstm/while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_5?
(sequential/lstm/while/lstm_cell_46/add_1AddV25sequential/lstm/while/lstm_cell_46/BiasAdd_1:output:05sequential/lstm/while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/add_1?
,sequential/lstm/while/lstm_cell_46/Sigmoid_1Sigmoid,sequential/lstm/while/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2.
,sequential/lstm/while/lstm_cell_46/Sigmoid_1?
(sequential/lstm/while/lstm_cell_46/mul_8Mul0sequential/lstm/while/lstm_cell_46/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_8?
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_2ReadVariableOp<sequential_lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype025
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_2?
8sequential/lstm/while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2:
8sequential/lstm/while/lstm_cell_46/strided_slice_2/stack?
:sequential/lstm/while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2<
:sequential/lstm/while/lstm_cell_46/strided_slice_2/stack_1?
:sequential/lstm/while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential/lstm/while/lstm_cell_46/strided_slice_2/stack_2?
2sequential/lstm/while/lstm_cell_46/strided_slice_2StridedSlice;sequential/lstm/while/lstm_cell_46/ReadVariableOp_2:value:0Asequential/lstm/while/lstm_cell_46/strided_slice_2/stack:output:0Csequential/lstm/while/lstm_cell_46/strided_slice_2/stack_1:output:0Csequential/lstm/while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask24
2sequential/lstm/while/lstm_cell_46/strided_slice_2?
+sequential/lstm/while/lstm_cell_46/MatMul_6MatMul,sequential/lstm/while/lstm_cell_46/mul_6:z:0;sequential/lstm/while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_6?
(sequential/lstm/while/lstm_cell_46/add_2AddV25sequential/lstm/while/lstm_cell_46/BiasAdd_2:output:05sequential/lstm/while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/add_2?
'sequential/lstm/while/lstm_cell_46/TanhTanh,sequential/lstm/while/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2)
'sequential/lstm/while/lstm_cell_46/Tanh?
(sequential/lstm/while/lstm_cell_46/mul_9Mul.sequential/lstm/while/lstm_cell_46/Sigmoid:y:0+sequential/lstm/while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/mul_9?
(sequential/lstm/while/lstm_cell_46/add_3AddV2,sequential/lstm/while/lstm_cell_46/mul_8:z:0,sequential/lstm/while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/add_3?
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_3ReadVariableOp<sequential_lstm_while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype025
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_3?
8sequential/lstm/while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2:
8sequential/lstm/while/lstm_cell_46/strided_slice_3/stack?
:sequential/lstm/while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential/lstm/while/lstm_cell_46/strided_slice_3/stack_1?
:sequential/lstm/while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential/lstm/while/lstm_cell_46/strided_slice_3/stack_2?
2sequential/lstm/while/lstm_cell_46/strided_slice_3StridedSlice;sequential/lstm/while/lstm_cell_46/ReadVariableOp_3:value:0Asequential/lstm/while/lstm_cell_46/strided_slice_3/stack:output:0Csequential/lstm/while/lstm_cell_46/strided_slice_3/stack_1:output:0Csequential/lstm/while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask24
2sequential/lstm/while/lstm_cell_46/strided_slice_3?
+sequential/lstm/while/lstm_cell_46/MatMul_7MatMul,sequential/lstm/while/lstm_cell_46/mul_7:z:0;sequential/lstm/while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/lstm/while/lstm_cell_46/MatMul_7?
(sequential/lstm/while/lstm_cell_46/add_4AddV25sequential/lstm/while/lstm_cell_46/BiasAdd_3:output:05sequential/lstm/while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2*
(sequential/lstm/while/lstm_cell_46/add_4?
,sequential/lstm/while/lstm_cell_46/Sigmoid_2Sigmoid,sequential/lstm/while/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2.
,sequential/lstm/while/lstm_cell_46/Sigmoid_2?
)sequential/lstm/while/lstm_cell_46/Tanh_1Tanh,sequential/lstm/while/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2+
)sequential/lstm/while/lstm_cell_46/Tanh_1?
)sequential/lstm/while/lstm_cell_46/mul_10Mul0sequential/lstm/while/lstm_cell_46/Sigmoid_2:y:0-sequential/lstm/while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2+
)sequential/lstm/while/lstm_cell_46/mul_10?
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder-sequential/lstm/while/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02<
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItem|
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add/y?
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add?
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add_1/y?
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add_1?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:02^sequential/lstm/while/lstm_cell_46/ReadVariableOp4^sequential/lstm/while/lstm_cell_46/ReadVariableOp_14^sequential/lstm/while/lstm_cell_46/ReadVariableOp_24^sequential/lstm/while/lstm_cell_46/ReadVariableOp_38^sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:^sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2 
sequential/lstm/while/Identity?
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations2^sequential/lstm/while/lstm_cell_46/ReadVariableOp4^sequential/lstm/while/lstm_cell_46/ReadVariableOp_14^sequential/lstm/while/lstm_cell_46/ReadVariableOp_24^sequential/lstm/while/lstm_cell_46/ReadVariableOp_38^sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:^sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_1?
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:02^sequential/lstm/while/lstm_cell_46/ReadVariableOp4^sequential/lstm/while/lstm_cell_46/ReadVariableOp_14^sequential/lstm/while/lstm_cell_46/ReadVariableOp_24^sequential/lstm/while/lstm_cell_46/ReadVariableOp_38^sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:^sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_2?
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^sequential/lstm/while/lstm_cell_46/ReadVariableOp4^sequential/lstm/while/lstm_cell_46/ReadVariableOp_14^sequential/lstm/while/lstm_cell_46/ReadVariableOp_24^sequential/lstm/while/lstm_cell_46/ReadVariableOp_38^sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:^sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_3?
 sequential/lstm/while/Identity_4Identity-sequential/lstm/while/lstm_cell_46/mul_10:z:02^sequential/lstm/while/lstm_cell_46/ReadVariableOp4^sequential/lstm/while/lstm_cell_46/ReadVariableOp_14^sequential/lstm/while/lstm_cell_46/ReadVariableOp_24^sequential/lstm/while/lstm_cell_46/ReadVariableOp_38^sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:^sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2"
 sequential/lstm/while/Identity_4?
 sequential/lstm/while/Identity_5Identity,sequential/lstm/while/lstm_cell_46/add_3:z:02^sequential/lstm/while/lstm_cell_46/ReadVariableOp4^sequential/lstm/while/lstm_cell_46/ReadVariableOp_14^sequential/lstm/while/lstm_cell_46/ReadVariableOp_24^sequential/lstm/while/lstm_cell_46/ReadVariableOp_38^sequential/lstm/while/lstm_cell_46/split/ReadVariableOp:^sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2"
 sequential/lstm/while/Identity_5"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"z
:sequential_lstm_while_lstm_cell_46_readvariableop_resource<sequential_lstm_while_lstm_cell_46_readvariableop_resource_0"?
Bsequential_lstm_while_lstm_cell_46_split_1_readvariableop_resourceDsequential_lstm_while_lstm_cell_46_split_1_readvariableop_resource_0"?
@sequential_lstm_while_lstm_cell_46_split_readvariableop_resourceBsequential_lstm_while_lstm_cell_46_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"?
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2f
1sequential/lstm/while/lstm_cell_46/ReadVariableOp1sequential/lstm/while/lstm_cell_46/ReadVariableOp2j
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_13sequential/lstm/while/lstm_cell_46/ReadVariableOp_12j
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_23sequential/lstm/while/lstm_cell_46/ReadVariableOp_22j
3sequential/lstm/while/lstm_cell_46/ReadVariableOp_33sequential/lstm/while/lstm_cell_46/ReadVariableOp_32r
7sequential/lstm/while/lstm_cell_46/split/ReadVariableOp7sequential/lstm/while/lstm_cell_46/split/ReadVariableOp2v
9sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp9sequential/lstm/while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
N
2__inference_spatial_dropout1d_layer_call_fn_238370

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2357992
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_embedding_layer_call_and_return_conditional_losses_236677

inputs+
embedding_lookup_236671:
??
identity??embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_236671Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/236671*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/236671*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_236004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_236004___redundant_placeholder04
0while_while_cond_236004___redundant_placeholder14
0while_while_cond_236004___redundant_placeholder24
0while_while_cond_236004___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?&
?
while_body_236329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_46_236353_0:
??*
while_lstm_cell_46_236355_0:	?/
while_lstm_cell_46_236357_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_46_236353:
??(
while_lstm_cell_46_236355:	?-
while_lstm_cell_46_236357:
????*while/lstm_cell_46/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_236353_0while_lstm_cell_46_236355_0while_lstm_cell_46_236357_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_2362512,
*while/lstm_cell_46/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1+^while/lstm_cell_46/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2+^while/lstm_cell_46/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_46_236353while_lstm_cell_46_236353_0"8
while_lstm_cell_46_236355while_lstm_cell_46_236355_0"8
while_lstm_cell_46_236357while_lstm_cell_46_236357_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
l
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_235831

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
while_cond_236328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_236328___redundant_placeholder04
0while_while_cond_236328___redundant_placeholder14
0while_while_cond_236328___redundant_placeholder24
0while_while_cond_236328___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
Ė
?
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_236251

inputs

states
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ț2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ؖ?2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?Ǥ2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2铎2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??%2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_5e
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_6e
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
%__inference_lstm_layer_call_fn_239678

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2369372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_46_layer_call_fn_239974

inputs
states_0
states_1
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_2359912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
̒
?	
while_body_236803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_46_split_readvariableop_resource_0:
??C
4while_lstm_cell_46_split_1_readvariableop_resource_0:	?@
,while_lstm_cell_46_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_46_split_readvariableop_resource:
??A
2while_lstm_cell_46_split_1_readvariableop_resource:	?>
*while_lstm_cell_46_readvariableop_resource:
????!while/lstm_cell_46/ReadVariableOp?#while/lstm_cell_46/ReadVariableOp_1?#while/lstm_cell_46/ReadVariableOp_2?#while/lstm_cell_46/ReadVariableOp_3?'while/lstm_cell_46/split/ReadVariableOp?)while/lstm_cell_46/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_46/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/ones_like/Shape?
"while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/ones_like/Const?
while/lstm_cell_46/ones_likeFill+while/lstm_cell_46/ones_like/Shape:output:0+while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/ones_like?
$while/lstm_cell_46/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_46/ones_like_1/Shape?
$while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$while/lstm_cell_46/ones_like_1/Const?
while/lstm_cell_46/ones_like_1Fill-while/lstm_cell_46/ones_like_1/Shape:output:0-while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/ones_like_1?
while/lstm_cell_46/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul?
while/lstm_cell_46/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_1?
while/lstm_cell_46/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_2?
while/lstm_cell_46/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_3?
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim?
'while/lstm_cell_46/split/ReadVariableOpReadVariableOp2while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_46/split/ReadVariableOp?
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
while/lstm_cell_46/split?
while/lstm_cell_46/MatMulMatMulwhile/lstm_cell_46/mul:z:0!while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul?
while/lstm_cell_46/MatMul_1MatMulwhile/lstm_cell_46/mul_1:z:0!while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_1?
while/lstm_cell_46/MatMul_2MatMulwhile/lstm_cell_46/mul_2:z:0!while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_2?
while/lstm_cell_46/MatMul_3MatMulwhile/lstm_cell_46/mul_3:z:0!while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_3?
$while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_46/split_1/split_dim?
)while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_46/split_1/ReadVariableOp?
while/lstm_cell_46/split_1Split-while/lstm_cell_46/split_1/split_dim:output:01while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell_46/split_1?
while/lstm_cell_46/BiasAddBiasAdd#while/lstm_cell_46/MatMul:product:0#while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd?
while/lstm_cell_46/BiasAdd_1BiasAdd%while/lstm_cell_46/MatMul_1:product:0#while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_1?
while/lstm_cell_46/BiasAdd_2BiasAdd%while/lstm_cell_46/MatMul_2:product:0#while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_2?
while/lstm_cell_46/BiasAdd_3BiasAdd%while/lstm_cell_46/MatMul_3:product:0#while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_3?
while/lstm_cell_46/mul_4Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_4?
while/lstm_cell_46/mul_5Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_5?
while/lstm_cell_46/mul_6Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_6?
while/lstm_cell_46/mul_7Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_7?
!while/lstm_cell_46/ReadVariableOpReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/lstm_cell_46/ReadVariableOp?
&while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_46/strided_slice/stack?
(while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice/stack_1?
(while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_46/strided_slice/stack_2?
 while/lstm_cell_46/strided_sliceStridedSlice)while/lstm_cell_46/ReadVariableOp:value:0/while/lstm_cell_46/strided_slice/stack:output:01while/lstm_cell_46/strided_slice/stack_1:output:01while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/lstm_cell_46/strided_slice?
while/lstm_cell_46/MatMul_4MatMulwhile/lstm_cell_46/mul_4:z:0)while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_4?
while/lstm_cell_46/addAddV2#while/lstm_cell_46/BiasAdd:output:0%while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add?
while/lstm_cell_46/SigmoidSigmoidwhile/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid?
#while/lstm_cell_46/ReadVariableOp_1ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_1?
(while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice_1/stack?
*while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*while/lstm_cell_46/strided_slice_1/stack_1?
*while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_1/stack_2?
"while/lstm_cell_46/strided_slice_1StridedSlice+while/lstm_cell_46/ReadVariableOp_1:value:01while/lstm_cell_46/strided_slice_1/stack:output:03while/lstm_cell_46/strided_slice_1/stack_1:output:03while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_1?
while/lstm_cell_46/MatMul_5MatMulwhile/lstm_cell_46/mul_5:z:0+while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_5?
while/lstm_cell_46/add_1AddV2%while/lstm_cell_46/BiasAdd_1:output:0%while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_1?
while/lstm_cell_46/Sigmoid_1Sigmoidwhile/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_1?
while/lstm_cell_46/mul_8Mul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_8?
#while/lstm_cell_46/ReadVariableOp_2ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_2?
(while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/lstm_cell_46/strided_slice_2/stack?
*while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*while/lstm_cell_46/strided_slice_2/stack_1?
*while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_2/stack_2?
"while/lstm_cell_46/strided_slice_2StridedSlice+while/lstm_cell_46/ReadVariableOp_2:value:01while/lstm_cell_46/strided_slice_2/stack:output:03while/lstm_cell_46/strided_slice_2/stack_1:output:03while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_2?
while/lstm_cell_46/MatMul_6MatMulwhile/lstm_cell_46/mul_6:z:0+while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_6?
while/lstm_cell_46/add_2AddV2%while/lstm_cell_46/BiasAdd_2:output:0%while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_2?
while/lstm_cell_46/TanhTanhwhile/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh?
while/lstm_cell_46/mul_9Mulwhile/lstm_cell_46/Sigmoid:y:0while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_9?
while/lstm_cell_46/add_3AddV2while/lstm_cell_46/mul_8:z:0while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_3?
#while/lstm_cell_46/ReadVariableOp_3ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_3?
(while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(while/lstm_cell_46/strided_slice_3/stack?
*while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_46/strided_slice_3/stack_1?
*while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_3/stack_2?
"while/lstm_cell_46/strided_slice_3StridedSlice+while/lstm_cell_46/ReadVariableOp_3:value:01while/lstm_cell_46/strided_slice_3/stack:output:03while/lstm_cell_46/strided_slice_3/stack_1:output:03while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_3?
while/lstm_cell_46/MatMul_7MatMulwhile/lstm_cell_46/mul_7:z:0+while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_7?
while/lstm_cell_46/add_4AddV2%while/lstm_cell_46/BiasAdd_3:output:0%while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_4?
while/lstm_cell_46/Sigmoid_2Sigmoidwhile/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_2?
while/lstm_cell_46/Tanh_1Tanhwhile/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh_1?
while/lstm_cell_46/mul_10Mul while/lstm_cell_46/Sigmoid_2:y:0while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_46/mul_10:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_46/add_3:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_46_readvariableop_resource,while_lstm_cell_46_readvariableop_resource_0"j
2while_lstm_cell_46_split_1_readvariableop_resource4while_lstm_cell_46_split_1_readvariableop_resource_0"f
0while_lstm_cell_46_split_readvariableop_resource2while_lstm_cell_46_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2F
!while/lstm_cell_46/ReadVariableOp!while/lstm_cell_46/ReadVariableOp2J
#while/lstm_cell_46/ReadVariableOp_1#while/lstm_cell_46/ReadVariableOp_12J
#while/lstm_cell_46/ReadVariableOp_2#while/lstm_cell_46/ReadVariableOp_22J
#while/lstm_cell_46/ReadVariableOp_3#while/lstm_cell_46/ReadVariableOp_32R
'while/lstm_cell_46/split/ReadVariableOp'while/lstm_cell_46/split/ReadVariableOp2V
)while/lstm_cell_46/split_1/ReadVariableOp)while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_239131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_239131___redundant_placeholder04
0while_while_cond_239131___redundant_placeholder14
0while_while_cond_239131___redundant_placeholder24
0while_while_cond_239131___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
1__inference_module_wrapper_9_layer_call_fn_239729

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_2370012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?@
?
__inference__traced_save_240095
file_prefix3
/savev2_embedding_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop?
;savev2_module_wrapper_9_dense_10_kernel_read_readvariableop=
9savev2_module_wrapper_9_dense_10_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_9_dense_10_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_9_dense_10_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_9_dense_10_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_9_dense_10_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop;savev2_module_wrapper_9_dense_10_kernel_read_readvariableop9savev2_module_wrapper_9_dense_10_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableopBsavev2_adam_module_wrapper_9_dense_10_kernel_m_read_readvariableop@savev2_adam_module_wrapper_9_dense_10_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopBsavev2_adam_module_wrapper_9_dense_10_kernel_v_read_readvariableop@savev2_adam_module_wrapper_9_dense_10_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??: : : : : :
??:
??:?:	?:: : : : :
??:
??:
??:?:	?::
??:
??:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:%
!

_output_shapes
:	?: 

_output_shapes
::
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
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_238636
inputs_0>
*lstm_cell_46_split_readvariableop_resource:
??;
,lstm_cell_46_split_1_readvariableop_resource:	?8
$lstm_cell_46_readvariableop_resource:
??
identity??lstm_cell_46/ReadVariableOp?lstm_cell_46/ReadVariableOp_1?lstm_cell_46/ReadVariableOp_2?lstm_cell_46/ReadVariableOp_3?!lstm_cell_46/split/ReadVariableOp?#lstm_cell_46/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_46/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_46/ones_like/Shape?
lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/ones_like/Const?
lstm_cell_46/ones_likeFill%lstm_cell_46/ones_like/Shape:output:0%lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like~
lstm_cell_46/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_46/ones_like_1/Shape?
lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm_cell_46/ones_like_1/Const?
lstm_cell_46/ones_like_1Fill'lstm_cell_46/ones_like_1/Shape:output:0'lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like_1?
lstm_cell_46/mulMulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul?
lstm_cell_46/mul_1Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_1?
lstm_cell_46/mul_2Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_2?
lstm_cell_46/mul_3Mulstrided_slice_2:output:0lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_3~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dim?
!lstm_cell_46/split/ReadVariableOpReadVariableOp*lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_46/split/ReadVariableOp?
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0)lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm_cell_46/split?
lstm_cell_46/MatMulMatMullstm_cell_46/mul:z:0lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul?
lstm_cell_46/MatMul_1MatMullstm_cell_46/mul_1:z:0lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_1?
lstm_cell_46/MatMul_2MatMullstm_cell_46/mul_2:z:0lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_2?
lstm_cell_46/MatMul_3MatMullstm_cell_46/mul_3:z:0lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_3?
lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_46/split_1/split_dim?
#lstm_cell_46/split_1/ReadVariableOpReadVariableOp,lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_46/split_1/ReadVariableOp?
lstm_cell_46/split_1Split'lstm_cell_46/split_1/split_dim:output:0+lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell_46/split_1?
lstm_cell_46/BiasAddBiasAddlstm_cell_46/MatMul:product:0lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd?
lstm_cell_46/BiasAdd_1BiasAddlstm_cell_46/MatMul_1:product:0lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_1?
lstm_cell_46/BiasAdd_2BiasAddlstm_cell_46/MatMul_2:product:0lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_2?
lstm_cell_46/BiasAdd_3BiasAddlstm_cell_46/MatMul_3:product:0lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_3?
lstm_cell_46/mul_4Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_4?
lstm_cell_46/mul_5Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_5?
lstm_cell_46/mul_6Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_6?
lstm_cell_46/mul_7Mulzeros:output:0!lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_7?
lstm_cell_46/ReadVariableOpReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp?
 lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_46/strided_slice/stack?
"lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice/stack_1?
"lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_46/strided_slice/stack_2?
lstm_cell_46/strided_sliceStridedSlice#lstm_cell_46/ReadVariableOp:value:0)lstm_cell_46/strided_slice/stack:output:0+lstm_cell_46/strided_slice/stack_1:output:0+lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice?
lstm_cell_46/MatMul_4MatMullstm_cell_46/mul_4:z:0#lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_4?
lstm_cell_46/addAddV2lstm_cell_46/BiasAdd:output:0lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add?
lstm_cell_46/SigmoidSigmoidlstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid?
lstm_cell_46/ReadVariableOp_1ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_1?
"lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice_1/stack?
$lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm_cell_46/strided_slice_1/stack_1?
$lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_1/stack_2?
lstm_cell_46/strided_slice_1StridedSlice%lstm_cell_46/ReadVariableOp_1:value:0+lstm_cell_46/strided_slice_1/stack:output:0-lstm_cell_46/strided_slice_1/stack_1:output:0-lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_1?
lstm_cell_46/MatMul_5MatMullstm_cell_46/mul_5:z:0%lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_5?
lstm_cell_46/add_1AddV2lstm_cell_46/BiasAdd_1:output:0lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_1?
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_1?
lstm_cell_46/mul_8Mullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_8?
lstm_cell_46/ReadVariableOp_2ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_2?
"lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"lstm_cell_46/strided_slice_2/stack?
$lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2&
$lstm_cell_46/strided_slice_2/stack_1?
$lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_2/stack_2?
lstm_cell_46/strided_slice_2StridedSlice%lstm_cell_46/ReadVariableOp_2:value:0+lstm_cell_46/strided_slice_2/stack:output:0-lstm_cell_46/strided_slice_2/stack_1:output:0-lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_2?
lstm_cell_46/MatMul_6MatMullstm_cell_46/mul_6:z:0%lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_6?
lstm_cell_46/add_2AddV2lstm_cell_46/BiasAdd_2:output:0lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_2y
lstm_cell_46/TanhTanhlstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh?
lstm_cell_46/mul_9Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_9?
lstm_cell_46/add_3AddV2lstm_cell_46/mul_8:z:0lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_3?
lstm_cell_46/ReadVariableOp_3ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_3?
"lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2$
"lstm_cell_46/strided_slice_3/stack?
$lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_46/strided_slice_3/stack_1?
$lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_3/stack_2?
lstm_cell_46/strided_slice_3StridedSlice%lstm_cell_46/ReadVariableOp_3:value:0+lstm_cell_46/strided_slice_3/stack:output:0-lstm_cell_46/strided_slice_3/stack_1:output:0-lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_3?
lstm_cell_46/MatMul_7MatMullstm_cell_46/mul_7:z:0%lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_7?
lstm_cell_46/add_4AddV2lstm_cell_46/BiasAdd_3:output:0lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_4?
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_2}
lstm_cell_46/Tanh_1Tanhlstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh_1?
lstm_cell_46/mul_10Mullstm_cell_46/Sigmoid_2:y:0lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_46_split_readvariableop_resource,lstm_cell_46_split_1_readvariableop_resource$lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_238502*
condR
while_cond_238501*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_46/ReadVariableOp^lstm_cell_46/ReadVariableOp_1^lstm_cell_46/ReadVariableOp_2^lstm_cell_46/ReadVariableOp_3"^lstm_cell_46/split/ReadVariableOp$^lstm_cell_46/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2:
lstm_cell_46/ReadVariableOplstm_cell_46/ReadVariableOp2>
lstm_cell_46/ReadVariableOp_1lstm_cell_46/ReadVariableOp_12>
lstm_cell_46/ReadVariableOp_2lstm_cell_46/ReadVariableOp_22>
lstm_cell_46/ReadVariableOp_3lstm_cell_46/ReadVariableOp_32F
!lstm_cell_46/split/ReadVariableOp!lstm_cell_46/split/ReadVariableOp2J
#lstm_cell_46/split_1/ReadVariableOp#lstm_cell_46/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?	
?
lstm_while_cond_237708&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_237708___redundant_placeholder0>
:lstm_while_lstm_while_cond_237708___redundant_placeholder1>
:lstm_while_lstm_while_cond_237708___redundant_placeholder2>
:lstm_while_lstm_while_cond_237708___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_236956

args_0:
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMulargs_0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdd|
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Softmax?
IdentityIdentitydense_10/Softmax:softmax:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?	
?
lstm_while_cond_238054&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_238054___redundant_placeholder0>
:lstm_while_lstm_while_cond_238054___redundant_placeholder1>
:lstm_while_lstm_while_cond_238054___redundant_placeholder2>
:lstm_while_lstm_while_cond_238054___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
k
2__inference_spatial_dropout1d_layer_call_fn_238375

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2358312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
1__inference_module_wrapper_9_layer_call_fn_239720

args_0
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_2369562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
-__inference_lstm_cell_46_layer_call_fn_239991

inputs
states_0
states_1
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_2362512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_237201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_237201___redundant_placeholder04
0while_while_cond_237201___redundant_placeholder14
0while_while_cond_237201___redundant_placeholder24
0while_while_cond_237201___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_239711

args_0:
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMulMatMulargs_0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_10/BiasAdd|
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_10/Softmax?
IdentityIdentitydense_10/Softmax:softmax:0 ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
k
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238316

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'???????????????????????????2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_239015
inputs_0>
*lstm_cell_46_split_readvariableop_resource:
??;
,lstm_cell_46_split_1_readvariableop_resource:	?8
$lstm_cell_46_readvariableop_resource:
??
identity??lstm_cell_46/ReadVariableOp?lstm_cell_46/ReadVariableOp_1?lstm_cell_46/ReadVariableOp_2?lstm_cell_46/ReadVariableOp_3?!lstm_cell_46/split/ReadVariableOp?#lstm_cell_46/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_46/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_46/ones_like/Shape?
lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/ones_like/Const?
lstm_cell_46/ones_likeFill%lstm_cell_46/ones_like/Shape:output:0%lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like}
lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout/Const?
lstm_cell_46/dropout/MulMullstm_cell_46/ones_like:output:0#lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Mul?
lstm_cell_46/dropout/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout/Shape?
1lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???23
1lstm_cell_46/dropout/random_uniform/RandomUniform?
#lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2%
#lstm_cell_46/dropout/GreaterEqual/y?
!lstm_cell_46/dropout/GreaterEqualGreaterEqual:lstm_cell_46/dropout/random_uniform/RandomUniform:output:0,lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2#
!lstm_cell_46/dropout/GreaterEqual?
lstm_cell_46/dropout/CastCast%lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Cast?
lstm_cell_46/dropout/Mul_1Mullstm_cell_46/dropout/Mul:z:0lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Mul_1?
lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_1/Const?
lstm_cell_46/dropout_1/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Mul?
lstm_cell_46/dropout_1/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_1/Shape?
3lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_1/random_uniform/RandomUniform?
%lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_1/GreaterEqual/y?
#lstm_cell_46/dropout_1/GreaterEqualGreaterEqual<lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_1/GreaterEqual?
lstm_cell_46/dropout_1/CastCast'lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Cast?
lstm_cell_46/dropout_1/Mul_1Mullstm_cell_46/dropout_1/Mul:z:0lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Mul_1?
lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_2/Const?
lstm_cell_46/dropout_2/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Mul?
lstm_cell_46/dropout_2/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_2/Shape?
3lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?25
3lstm_cell_46/dropout_2/random_uniform/RandomUniform?
%lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_2/GreaterEqual/y?
#lstm_cell_46/dropout_2/GreaterEqualGreaterEqual<lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_2/GreaterEqual?
lstm_cell_46/dropout_2/CastCast'lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Cast?
lstm_cell_46/dropout_2/Mul_1Mullstm_cell_46/dropout_2/Mul:z:0lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Mul_1?
lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_3/Const?
lstm_cell_46/dropout_3/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Mul?
lstm_cell_46/dropout_3/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_3/Shape?
3lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_3/random_uniform/RandomUniform?
%lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_3/GreaterEqual/y?
#lstm_cell_46/dropout_3/GreaterEqualGreaterEqual<lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_3/GreaterEqual?
lstm_cell_46/dropout_3/CastCast'lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Cast?
lstm_cell_46/dropout_3/Mul_1Mullstm_cell_46/dropout_3/Mul:z:0lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Mul_1~
lstm_cell_46/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_46/ones_like_1/Shape?
lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm_cell_46/ones_like_1/Const?
lstm_cell_46/ones_like_1Fill'lstm_cell_46/ones_like_1/Shape:output:0'lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like_1?
lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_4/Const?
lstm_cell_46/dropout_4/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Mul?
lstm_cell_46/dropout_4/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_4/Shape?
3lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ы25
3lstm_cell_46/dropout_4/random_uniform/RandomUniform?
%lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_4/GreaterEqual/y?
#lstm_cell_46/dropout_4/GreaterEqualGreaterEqual<lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_4/GreaterEqual?
lstm_cell_46/dropout_4/CastCast'lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Cast?
lstm_cell_46/dropout_4/Mul_1Mullstm_cell_46/dropout_4/Mul:z:0lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Mul_1?
lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_5/Const?
lstm_cell_46/dropout_5/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Mul?
lstm_cell_46/dropout_5/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_5/Shape?
3lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_5/random_uniform/RandomUniform?
%lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_5/GreaterEqual/y?
#lstm_cell_46/dropout_5/GreaterEqualGreaterEqual<lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_5/GreaterEqual?
lstm_cell_46/dropout_5/CastCast'lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Cast?
lstm_cell_46/dropout_5/Mul_1Mullstm_cell_46/dropout_5/Mul:z:0lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Mul_1?
lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_6/Const?
lstm_cell_46/dropout_6/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Mul?
lstm_cell_46/dropout_6/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_6/Shape?
3lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??'25
3lstm_cell_46/dropout_6/random_uniform/RandomUniform?
%lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_6/GreaterEqual/y?
#lstm_cell_46/dropout_6/GreaterEqualGreaterEqual<lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_6/GreaterEqual?
lstm_cell_46/dropout_6/CastCast'lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Cast?
lstm_cell_46/dropout_6/Mul_1Mullstm_cell_46/dropout_6/Mul:z:0lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Mul_1?
lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_7/Const?
lstm_cell_46/dropout_7/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Mul?
lstm_cell_46/dropout_7/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_7/Shape?
3lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_7/random_uniform/RandomUniform?
%lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_7/GreaterEqual/y?
#lstm_cell_46/dropout_7/GreaterEqualGreaterEqual<lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_7/GreaterEqual?
lstm_cell_46/dropout_7/CastCast'lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Cast?
lstm_cell_46/dropout_7/Mul_1Mullstm_cell_46/dropout_7/Mul:z:0lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Mul_1?
lstm_cell_46/mulMulstrided_slice_2:output:0lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul?
lstm_cell_46/mul_1Mulstrided_slice_2:output:0 lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_1?
lstm_cell_46/mul_2Mulstrided_slice_2:output:0 lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_2?
lstm_cell_46/mul_3Mulstrided_slice_2:output:0 lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_3~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dim?
!lstm_cell_46/split/ReadVariableOpReadVariableOp*lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_46/split/ReadVariableOp?
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0)lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm_cell_46/split?
lstm_cell_46/MatMulMatMullstm_cell_46/mul:z:0lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul?
lstm_cell_46/MatMul_1MatMullstm_cell_46/mul_1:z:0lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_1?
lstm_cell_46/MatMul_2MatMullstm_cell_46/mul_2:z:0lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_2?
lstm_cell_46/MatMul_3MatMullstm_cell_46/mul_3:z:0lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_3?
lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_46/split_1/split_dim?
#lstm_cell_46/split_1/ReadVariableOpReadVariableOp,lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_46/split_1/ReadVariableOp?
lstm_cell_46/split_1Split'lstm_cell_46/split_1/split_dim:output:0+lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell_46/split_1?
lstm_cell_46/BiasAddBiasAddlstm_cell_46/MatMul:product:0lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd?
lstm_cell_46/BiasAdd_1BiasAddlstm_cell_46/MatMul_1:product:0lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_1?
lstm_cell_46/BiasAdd_2BiasAddlstm_cell_46/MatMul_2:product:0lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_2?
lstm_cell_46/BiasAdd_3BiasAddlstm_cell_46/MatMul_3:product:0lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_3?
lstm_cell_46/mul_4Mulzeros:output:0 lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_4?
lstm_cell_46/mul_5Mulzeros:output:0 lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_5?
lstm_cell_46/mul_6Mulzeros:output:0 lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_6?
lstm_cell_46/mul_7Mulzeros:output:0 lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_7?
lstm_cell_46/ReadVariableOpReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp?
 lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_46/strided_slice/stack?
"lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice/stack_1?
"lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_46/strided_slice/stack_2?
lstm_cell_46/strided_sliceStridedSlice#lstm_cell_46/ReadVariableOp:value:0)lstm_cell_46/strided_slice/stack:output:0+lstm_cell_46/strided_slice/stack_1:output:0+lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice?
lstm_cell_46/MatMul_4MatMullstm_cell_46/mul_4:z:0#lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_4?
lstm_cell_46/addAddV2lstm_cell_46/BiasAdd:output:0lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add?
lstm_cell_46/SigmoidSigmoidlstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid?
lstm_cell_46/ReadVariableOp_1ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_1?
"lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice_1/stack?
$lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm_cell_46/strided_slice_1/stack_1?
$lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_1/stack_2?
lstm_cell_46/strided_slice_1StridedSlice%lstm_cell_46/ReadVariableOp_1:value:0+lstm_cell_46/strided_slice_1/stack:output:0-lstm_cell_46/strided_slice_1/stack_1:output:0-lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_1?
lstm_cell_46/MatMul_5MatMullstm_cell_46/mul_5:z:0%lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_5?
lstm_cell_46/add_1AddV2lstm_cell_46/BiasAdd_1:output:0lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_1?
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_1?
lstm_cell_46/mul_8Mullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_8?
lstm_cell_46/ReadVariableOp_2ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_2?
"lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"lstm_cell_46/strided_slice_2/stack?
$lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2&
$lstm_cell_46/strided_slice_2/stack_1?
$lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_2/stack_2?
lstm_cell_46/strided_slice_2StridedSlice%lstm_cell_46/ReadVariableOp_2:value:0+lstm_cell_46/strided_slice_2/stack:output:0-lstm_cell_46/strided_slice_2/stack_1:output:0-lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_2?
lstm_cell_46/MatMul_6MatMullstm_cell_46/mul_6:z:0%lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_6?
lstm_cell_46/add_2AddV2lstm_cell_46/BiasAdd_2:output:0lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_2y
lstm_cell_46/TanhTanhlstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh?
lstm_cell_46/mul_9Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_9?
lstm_cell_46/add_3AddV2lstm_cell_46/mul_8:z:0lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_3?
lstm_cell_46/ReadVariableOp_3ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_3?
"lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2$
"lstm_cell_46/strided_slice_3/stack?
$lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_46/strided_slice_3/stack_1?
$lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_3/stack_2?
lstm_cell_46/strided_slice_3StridedSlice%lstm_cell_46/ReadVariableOp_3:value:0+lstm_cell_46/strided_slice_3/stack:output:0-lstm_cell_46/strided_slice_3/stack_1:output:0-lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_3?
lstm_cell_46/MatMul_7MatMullstm_cell_46/mul_7:z:0%lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_7?
lstm_cell_46/add_4AddV2lstm_cell_46/BiasAdd_3:output:0lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_4?
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_2}
lstm_cell_46/Tanh_1Tanhlstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh_1?
lstm_cell_46/mul_10Mullstm_cell_46/Sigmoid_2:y:0lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_46_split_readvariableop_resource,lstm_cell_46_split_1_readvariableop_resource$lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_238817*
condR
while_cond_238816*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_46/ReadVariableOp^lstm_cell_46/ReadVariableOp_1^lstm_cell_46/ReadVariableOp_2^lstm_cell_46/ReadVariableOp_3"^lstm_cell_46/split/ReadVariableOp$^lstm_cell_46/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2:
lstm_cell_46/ReadVariableOplstm_cell_46/ReadVariableOp2>
lstm_cell_46/ReadVariableOp_1lstm_cell_46/ReadVariableOp_12>
lstm_cell_46/ReadVariableOp_2lstm_cell_46/ReadVariableOp_22>
lstm_cell_46/ReadVariableOp_3lstm_cell_46/ReadVariableOp_32F
!lstm_cell_46/split/ReadVariableOp!lstm_cell_46/split/ReadVariableOp2J
#lstm_cell_46/split_1/ReadVariableOp#lstm_cell_46/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
̒
?	
while_body_239132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_46_split_readvariableop_resource_0:
??C
4while_lstm_cell_46_split_1_readvariableop_resource_0:	?@
,while_lstm_cell_46_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_46_split_readvariableop_resource:
??A
2while_lstm_cell_46_split_1_readvariableop_resource:	?>
*while_lstm_cell_46_readvariableop_resource:
????!while/lstm_cell_46/ReadVariableOp?#while/lstm_cell_46/ReadVariableOp_1?#while/lstm_cell_46/ReadVariableOp_2?#while/lstm_cell_46/ReadVariableOp_3?'while/lstm_cell_46/split/ReadVariableOp?)while/lstm_cell_46/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
"while/lstm_cell_46/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2$
"while/lstm_cell_46/ones_like/Shape?
"while/lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"while/lstm_cell_46/ones_like/Const?
while/lstm_cell_46/ones_likeFill+while/lstm_cell_46/ones_like/Shape:output:0+while/lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/ones_like?
$while/lstm_cell_46/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2&
$while/lstm_cell_46/ones_like_1/Shape?
$while/lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$while/lstm_cell_46/ones_like_1/Const?
while/lstm_cell_46/ones_like_1Fill-while/lstm_cell_46/ones_like_1/Shape:output:0-while/lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2 
while/lstm_cell_46/ones_like_1?
while/lstm_cell_46/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul?
while/lstm_cell_46/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_1?
while/lstm_cell_46/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_2?
while/lstm_cell_46/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_46/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_3?
"while/lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_46/split/split_dim?
'while/lstm_cell_46/split/ReadVariableOpReadVariableOp2while_lstm_cell_46_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_46/split/ReadVariableOp?
while/lstm_cell_46/splitSplit+while/lstm_cell_46/split/split_dim:output:0/while/lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
while/lstm_cell_46/split?
while/lstm_cell_46/MatMulMatMulwhile/lstm_cell_46/mul:z:0!while/lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul?
while/lstm_cell_46/MatMul_1MatMulwhile/lstm_cell_46/mul_1:z:0!while/lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_1?
while/lstm_cell_46/MatMul_2MatMulwhile/lstm_cell_46/mul_2:z:0!while/lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_2?
while/lstm_cell_46/MatMul_3MatMulwhile/lstm_cell_46/mul_3:z:0!while/lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_3?
$while/lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$while/lstm_cell_46/split_1/split_dim?
)while/lstm_cell_46/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_46_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_46/split_1/ReadVariableOp?
while/lstm_cell_46/split_1Split-while/lstm_cell_46/split_1/split_dim:output:01while/lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
while/lstm_cell_46/split_1?
while/lstm_cell_46/BiasAddBiasAdd#while/lstm_cell_46/MatMul:product:0#while/lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd?
while/lstm_cell_46/BiasAdd_1BiasAdd%while/lstm_cell_46/MatMul_1:product:0#while/lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_1?
while/lstm_cell_46/BiasAdd_2BiasAdd%while/lstm_cell_46/MatMul_2:product:0#while/lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_2?
while/lstm_cell_46/BiasAdd_3BiasAdd%while/lstm_cell_46/MatMul_3:product:0#while/lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/BiasAdd_3?
while/lstm_cell_46/mul_4Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_4?
while/lstm_cell_46/mul_5Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_5?
while/lstm_cell_46/mul_6Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_6?
while/lstm_cell_46/mul_7Mulwhile_placeholder_2'while/lstm_cell_46/ones_like_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_7?
!while/lstm_cell_46/ReadVariableOpReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/lstm_cell_46/ReadVariableOp?
&while/lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/lstm_cell_46/strided_slice/stack?
(while/lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice/stack_1?
(while/lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/lstm_cell_46/strided_slice/stack_2?
 while/lstm_cell_46/strided_sliceStridedSlice)while/lstm_cell_46/ReadVariableOp:value:0/while/lstm_cell_46/strided_slice/stack:output:01while/lstm_cell_46/strided_slice/stack_1:output:01while/lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/lstm_cell_46/strided_slice?
while/lstm_cell_46/MatMul_4MatMulwhile/lstm_cell_46/mul_4:z:0)while/lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_4?
while/lstm_cell_46/addAddV2#while/lstm_cell_46/BiasAdd:output:0%while/lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add?
while/lstm_cell_46/SigmoidSigmoidwhile/lstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid?
#while/lstm_cell_46/ReadVariableOp_1ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_1?
(while/lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2*
(while/lstm_cell_46/strided_slice_1/stack?
*while/lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*while/lstm_cell_46/strided_slice_1/stack_1?
*while/lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_1/stack_2?
"while/lstm_cell_46/strided_slice_1StridedSlice+while/lstm_cell_46/ReadVariableOp_1:value:01while/lstm_cell_46/strided_slice_1/stack:output:03while/lstm_cell_46/strided_slice_1/stack_1:output:03while/lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_1?
while/lstm_cell_46/MatMul_5MatMulwhile/lstm_cell_46/mul_5:z:0+while/lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_5?
while/lstm_cell_46/add_1AddV2%while/lstm_cell_46/BiasAdd_1:output:0%while/lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_1?
while/lstm_cell_46/Sigmoid_1Sigmoidwhile/lstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_1?
while/lstm_cell_46/mul_8Mul while/lstm_cell_46/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_8?
#while/lstm_cell_46/ReadVariableOp_2ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_2?
(while/lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/lstm_cell_46/strided_slice_2/stack?
*while/lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*while/lstm_cell_46/strided_slice_2/stack_1?
*while/lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_2/stack_2?
"while/lstm_cell_46/strided_slice_2StridedSlice+while/lstm_cell_46/ReadVariableOp_2:value:01while/lstm_cell_46/strided_slice_2/stack:output:03while/lstm_cell_46/strided_slice_2/stack_1:output:03while/lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_2?
while/lstm_cell_46/MatMul_6MatMulwhile/lstm_cell_46/mul_6:z:0+while/lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_6?
while/lstm_cell_46/add_2AddV2%while/lstm_cell_46/BiasAdd_2:output:0%while/lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_2?
while/lstm_cell_46/TanhTanhwhile/lstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh?
while/lstm_cell_46/mul_9Mulwhile/lstm_cell_46/Sigmoid:y:0while/lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_9?
while/lstm_cell_46/add_3AddV2while/lstm_cell_46/mul_8:z:0while/lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_3?
#while/lstm_cell_46/ReadVariableOp_3ReadVariableOp,while_lstm_cell_46_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/lstm_cell_46/ReadVariableOp_3?
(while/lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(while/lstm_cell_46/strided_slice_3/stack?
*while/lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/lstm_cell_46/strided_slice_3/stack_1?
*while/lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/lstm_cell_46/strided_slice_3/stack_2?
"while/lstm_cell_46/strided_slice_3StridedSlice+while/lstm_cell_46/ReadVariableOp_3:value:01while/lstm_cell_46/strided_slice_3/stack:output:03while/lstm_cell_46/strided_slice_3/stack_1:output:03while/lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/lstm_cell_46/strided_slice_3?
while/lstm_cell_46/MatMul_7MatMulwhile/lstm_cell_46/mul_7:z:0+while/lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/MatMul_7?
while/lstm_cell_46/add_4AddV2%while/lstm_cell_46/BiasAdd_3:output:0%while/lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/add_4?
while/lstm_cell_46/Sigmoid_2Sigmoidwhile/lstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Sigmoid_2?
while/lstm_cell_46/Tanh_1Tanhwhile/lstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/Tanh_1?
while/lstm_cell_46/mul_10Mul while/lstm_cell_46/Sigmoid_2:y:0while/lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_46/mul_10?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_46/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_46/mul_10:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_46/add_3:z:0"^while/lstm_cell_46/ReadVariableOp$^while/lstm_cell_46/ReadVariableOp_1$^while/lstm_cell_46/ReadVariableOp_2$^while/lstm_cell_46/ReadVariableOp_3(^while/lstm_cell_46/split/ReadVariableOp*^while/lstm_cell_46/split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_46_readvariableop_resource,while_lstm_cell_46_readvariableop_resource_0"j
2while_lstm_cell_46_split_1_readvariableop_resource4while_lstm_cell_46_split_1_readvariableop_resource_0"f
0while_lstm_cell_46_split_readvariableop_resource2while_lstm_cell_46_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2F
!while/lstm_cell_46/ReadVariableOp!while/lstm_cell_46/ReadVariableOp2J
#while/lstm_cell_46/ReadVariableOp_1#while/lstm_cell_46/ReadVariableOp_12J
#while/lstm_cell_46/ReadVariableOp_2#while/lstm_cell_46/ReadVariableOp_22J
#while/lstm_cell_46/ReadVariableOp_3#while/lstm_cell_46/ReadVariableOp_32R
'while/lstm_cell_46/split/ReadVariableOp'while/lstm_cell_46/split/ReadVariableOp2V
)while/lstm_cell_46/split_1/ReadVariableOp)while/lstm_cell_46/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
l
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238338

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_239645

inputs>
*lstm_cell_46_split_readvariableop_resource:
??;
,lstm_cell_46_split_1_readvariableop_resource:	?8
$lstm_cell_46_readvariableop_resource:
??
identity??lstm_cell_46/ReadVariableOp?lstm_cell_46/ReadVariableOp_1?lstm_cell_46/ReadVariableOp_2?lstm_cell_46/ReadVariableOp_3?!lstm_cell_46/split/ReadVariableOp?#lstm_cell_46/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_46/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_46/ones_like/Shape?
lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/ones_like/Const?
lstm_cell_46/ones_likeFill%lstm_cell_46/ones_like/Shape:output:0%lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like}
lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout/Const?
lstm_cell_46/dropout/MulMullstm_cell_46/ones_like:output:0#lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Mul?
lstm_cell_46/dropout/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout/Shape?
1lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?ʫ23
1lstm_cell_46/dropout/random_uniform/RandomUniform?
#lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2%
#lstm_cell_46/dropout/GreaterEqual/y?
!lstm_cell_46/dropout/GreaterEqualGreaterEqual:lstm_cell_46/dropout/random_uniform/RandomUniform:output:0,lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2#
!lstm_cell_46/dropout/GreaterEqual?
lstm_cell_46/dropout/CastCast%lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Cast?
lstm_cell_46/dropout/Mul_1Mullstm_cell_46/dropout/Mul:z:0lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Mul_1?
lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_1/Const?
lstm_cell_46/dropout_1/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Mul?
lstm_cell_46/dropout_1/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_1/Shape?
3lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_1/random_uniform/RandomUniform?
%lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_1/GreaterEqual/y?
#lstm_cell_46/dropout_1/GreaterEqualGreaterEqual<lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_1/GreaterEqual?
lstm_cell_46/dropout_1/CastCast'lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Cast?
lstm_cell_46/dropout_1/Mul_1Mullstm_cell_46/dropout_1/Mul:z:0lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Mul_1?
lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_2/Const?
lstm_cell_46/dropout_2/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Mul?
lstm_cell_46/dropout_2/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_2/Shape?
3lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_2/random_uniform/RandomUniform?
%lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_2/GreaterEqual/y?
#lstm_cell_46/dropout_2/GreaterEqualGreaterEqual<lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_2/GreaterEqual?
lstm_cell_46/dropout_2/CastCast'lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Cast?
lstm_cell_46/dropout_2/Mul_1Mullstm_cell_46/dropout_2/Mul:z:0lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Mul_1?
lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_3/Const?
lstm_cell_46/dropout_3/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Mul?
lstm_cell_46/dropout_3/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_3/Shape?
3lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2٦?25
3lstm_cell_46/dropout_3/random_uniform/RandomUniform?
%lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_3/GreaterEqual/y?
#lstm_cell_46/dropout_3/GreaterEqualGreaterEqual<lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_3/GreaterEqual?
lstm_cell_46/dropout_3/CastCast'lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Cast?
lstm_cell_46/dropout_3/Mul_1Mullstm_cell_46/dropout_3/Mul:z:0lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Mul_1~
lstm_cell_46/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_46/ones_like_1/Shape?
lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm_cell_46/ones_like_1/Const?
lstm_cell_46/ones_like_1Fill'lstm_cell_46/ones_like_1/Shape:output:0'lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like_1?
lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_4/Const?
lstm_cell_46/dropout_4/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Mul?
lstm_cell_46/dropout_4/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_4/Shape?
3lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_4/random_uniform/RandomUniform?
%lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_4/GreaterEqual/y?
#lstm_cell_46/dropout_4/GreaterEqualGreaterEqual<lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_4/GreaterEqual?
lstm_cell_46/dropout_4/CastCast'lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Cast?
lstm_cell_46/dropout_4/Mul_1Mullstm_cell_46/dropout_4/Mul:z:0lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Mul_1?
lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_5/Const?
lstm_cell_46/dropout_5/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Mul?
lstm_cell_46/dropout_5/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_5/Shape?
3lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_5/random_uniform/RandomUniform?
%lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_5/GreaterEqual/y?
#lstm_cell_46/dropout_5/GreaterEqualGreaterEqual<lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_5/GreaterEqual?
lstm_cell_46/dropout_5/CastCast'lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Cast?
lstm_cell_46/dropout_5/Mul_1Mullstm_cell_46/dropout_5/Mul:z:0lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Mul_1?
lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_6/Const?
lstm_cell_46/dropout_6/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Mul?
lstm_cell_46/dropout_6/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_6/Shape?
3lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??U25
3lstm_cell_46/dropout_6/random_uniform/RandomUniform?
%lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_6/GreaterEqual/y?
#lstm_cell_46/dropout_6/GreaterEqualGreaterEqual<lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_6/GreaterEqual?
lstm_cell_46/dropout_6/CastCast'lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Cast?
lstm_cell_46/dropout_6/Mul_1Mullstm_cell_46/dropout_6/Mul:z:0lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Mul_1?
lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_7/Const?
lstm_cell_46/dropout_7/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Mul?
lstm_cell_46/dropout_7/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_7/Shape?
3lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_7/random_uniform/RandomUniform?
%lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_7/GreaterEqual/y?
#lstm_cell_46/dropout_7/GreaterEqualGreaterEqual<lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_7/GreaterEqual?
lstm_cell_46/dropout_7/CastCast'lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Cast?
lstm_cell_46/dropout_7/Mul_1Mullstm_cell_46/dropout_7/Mul:z:0lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Mul_1?
lstm_cell_46/mulMulstrided_slice_2:output:0lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul?
lstm_cell_46/mul_1Mulstrided_slice_2:output:0 lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_1?
lstm_cell_46/mul_2Mulstrided_slice_2:output:0 lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_2?
lstm_cell_46/mul_3Mulstrided_slice_2:output:0 lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_3~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dim?
!lstm_cell_46/split/ReadVariableOpReadVariableOp*lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_46/split/ReadVariableOp?
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0)lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm_cell_46/split?
lstm_cell_46/MatMulMatMullstm_cell_46/mul:z:0lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul?
lstm_cell_46/MatMul_1MatMullstm_cell_46/mul_1:z:0lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_1?
lstm_cell_46/MatMul_2MatMullstm_cell_46/mul_2:z:0lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_2?
lstm_cell_46/MatMul_3MatMullstm_cell_46/mul_3:z:0lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_3?
lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_46/split_1/split_dim?
#lstm_cell_46/split_1/ReadVariableOpReadVariableOp,lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_46/split_1/ReadVariableOp?
lstm_cell_46/split_1Split'lstm_cell_46/split_1/split_dim:output:0+lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell_46/split_1?
lstm_cell_46/BiasAddBiasAddlstm_cell_46/MatMul:product:0lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd?
lstm_cell_46/BiasAdd_1BiasAddlstm_cell_46/MatMul_1:product:0lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_1?
lstm_cell_46/BiasAdd_2BiasAddlstm_cell_46/MatMul_2:product:0lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_2?
lstm_cell_46/BiasAdd_3BiasAddlstm_cell_46/MatMul_3:product:0lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_3?
lstm_cell_46/mul_4Mulzeros:output:0 lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_4?
lstm_cell_46/mul_5Mulzeros:output:0 lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_5?
lstm_cell_46/mul_6Mulzeros:output:0 lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_6?
lstm_cell_46/mul_7Mulzeros:output:0 lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_7?
lstm_cell_46/ReadVariableOpReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp?
 lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_46/strided_slice/stack?
"lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice/stack_1?
"lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_46/strided_slice/stack_2?
lstm_cell_46/strided_sliceStridedSlice#lstm_cell_46/ReadVariableOp:value:0)lstm_cell_46/strided_slice/stack:output:0+lstm_cell_46/strided_slice/stack_1:output:0+lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice?
lstm_cell_46/MatMul_4MatMullstm_cell_46/mul_4:z:0#lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_4?
lstm_cell_46/addAddV2lstm_cell_46/BiasAdd:output:0lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add?
lstm_cell_46/SigmoidSigmoidlstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid?
lstm_cell_46/ReadVariableOp_1ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_1?
"lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice_1/stack?
$lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm_cell_46/strided_slice_1/stack_1?
$lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_1/stack_2?
lstm_cell_46/strided_slice_1StridedSlice%lstm_cell_46/ReadVariableOp_1:value:0+lstm_cell_46/strided_slice_1/stack:output:0-lstm_cell_46/strided_slice_1/stack_1:output:0-lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_1?
lstm_cell_46/MatMul_5MatMullstm_cell_46/mul_5:z:0%lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_5?
lstm_cell_46/add_1AddV2lstm_cell_46/BiasAdd_1:output:0lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_1?
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_1?
lstm_cell_46/mul_8Mullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_8?
lstm_cell_46/ReadVariableOp_2ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_2?
"lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"lstm_cell_46/strided_slice_2/stack?
$lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2&
$lstm_cell_46/strided_slice_2/stack_1?
$lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_2/stack_2?
lstm_cell_46/strided_slice_2StridedSlice%lstm_cell_46/ReadVariableOp_2:value:0+lstm_cell_46/strided_slice_2/stack:output:0-lstm_cell_46/strided_slice_2/stack_1:output:0-lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_2?
lstm_cell_46/MatMul_6MatMullstm_cell_46/mul_6:z:0%lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_6?
lstm_cell_46/add_2AddV2lstm_cell_46/BiasAdd_2:output:0lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_2y
lstm_cell_46/TanhTanhlstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh?
lstm_cell_46/mul_9Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_9?
lstm_cell_46/add_3AddV2lstm_cell_46/mul_8:z:0lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_3?
lstm_cell_46/ReadVariableOp_3ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_3?
"lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2$
"lstm_cell_46/strided_slice_3/stack?
$lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_46/strided_slice_3/stack_1?
$lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_3/stack_2?
lstm_cell_46/strided_slice_3StridedSlice%lstm_cell_46/ReadVariableOp_3:value:0+lstm_cell_46/strided_slice_3/stack:output:0-lstm_cell_46/strided_slice_3/stack_1:output:0-lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_3?
lstm_cell_46/MatMul_7MatMullstm_cell_46/mul_7:z:0%lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_7?
lstm_cell_46/add_4AddV2lstm_cell_46/BiasAdd_3:output:0lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_4?
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_2}
lstm_cell_46/Tanh_1Tanhlstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh_1?
lstm_cell_46/mul_10Mullstm_cell_46/Sigmoid_2:y:0lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_46_split_readvariableop_resource,lstm_cell_46_split_1_readvariableop_resource$lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_239447*
condR
while_cond_239446*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_46/ReadVariableOp^lstm_cell_46/ReadVariableOp_1^lstm_cell_46/ReadVariableOp_2^lstm_cell_46/ReadVariableOp_3"^lstm_cell_46/split/ReadVariableOp$^lstm_cell_46/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2:
lstm_cell_46/ReadVariableOplstm_cell_46/ReadVariableOp2>
lstm_cell_46/ReadVariableOp_1lstm_cell_46/ReadVariableOp_12>
lstm_cell_46/ReadVariableOp_2lstm_cell_46/ReadVariableOp_22>
lstm_cell_46/ReadVariableOp_3lstm_cell_46/ReadVariableOp_32F
!lstm_cell_46/split/ReadVariableOp!lstm_cell_46/split/ReadVariableOp2J
#lstm_cell_46/split_1/ReadVariableOp#lstm_cell_46/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
@__inference_lstm_layer_call_and_return_conditional_losses_237400

inputs>
*lstm_cell_46_split_readvariableop_resource:
??;
,lstm_cell_46_split_1_readvariableop_resource:	?8
$lstm_cell_46_readvariableop_resource:
??
identity??lstm_cell_46/ReadVariableOp?lstm_cell_46/ReadVariableOp_1?lstm_cell_46/ReadVariableOp_2?lstm_cell_46/ReadVariableOp_3?!lstm_cell_46/split/ReadVariableOp?#lstm_cell_46/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
lstm_cell_46/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_46/ones_like/Shape?
lstm_cell_46/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/ones_like/Const?
lstm_cell_46/ones_likeFill%lstm_cell_46/ones_like/Shape:output:0%lstm_cell_46/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like}
lstm_cell_46/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout/Const?
lstm_cell_46/dropout/MulMullstm_cell_46/ones_like:output:0#lstm_cell_46/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Mul?
lstm_cell_46/dropout/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout/Shape?
1lstm_cell_46/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_46/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???23
1lstm_cell_46/dropout/random_uniform/RandomUniform?
#lstm_cell_46/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2%
#lstm_cell_46/dropout/GreaterEqual/y?
!lstm_cell_46/dropout/GreaterEqualGreaterEqual:lstm_cell_46/dropout/random_uniform/RandomUniform:output:0,lstm_cell_46/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2#
!lstm_cell_46/dropout/GreaterEqual?
lstm_cell_46/dropout/CastCast%lstm_cell_46/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Cast?
lstm_cell_46/dropout/Mul_1Mullstm_cell_46/dropout/Mul:z:0lstm_cell_46/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout/Mul_1?
lstm_cell_46/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_1/Const?
lstm_cell_46/dropout_1/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Mul?
lstm_cell_46/dropout_1/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_1/Shape?
3lstm_cell_46/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??W25
3lstm_cell_46/dropout_1/random_uniform/RandomUniform?
%lstm_cell_46/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_1/GreaterEqual/y?
#lstm_cell_46/dropout_1/GreaterEqualGreaterEqual<lstm_cell_46/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_1/GreaterEqual?
lstm_cell_46/dropout_1/CastCast'lstm_cell_46/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Cast?
lstm_cell_46/dropout_1/Mul_1Mullstm_cell_46/dropout_1/Mul:z:0lstm_cell_46/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_1/Mul_1?
lstm_cell_46/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_2/Const?
lstm_cell_46/dropout_2/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Mul?
lstm_cell_46/dropout_2/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_2/Shape?
3lstm_cell_46/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_2/random_uniform/RandomUniform?
%lstm_cell_46/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_2/GreaterEqual/y?
#lstm_cell_46/dropout_2/GreaterEqualGreaterEqual<lstm_cell_46/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_2/GreaterEqual?
lstm_cell_46/dropout_2/CastCast'lstm_cell_46/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Cast?
lstm_cell_46/dropout_2/Mul_1Mullstm_cell_46/dropout_2/Mul:z:0lstm_cell_46/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_2/Mul_1?
lstm_cell_46/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_3/Const?
lstm_cell_46/dropout_3/MulMullstm_cell_46/ones_like:output:0%lstm_cell_46/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Mul?
lstm_cell_46/dropout_3/ShapeShapelstm_cell_46/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_3/Shape?
3lstm_cell_46/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_3/random_uniform/RandomUniform?
%lstm_cell_46/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_3/GreaterEqual/y?
#lstm_cell_46/dropout_3/GreaterEqualGreaterEqual<lstm_cell_46/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_3/GreaterEqual?
lstm_cell_46/dropout_3/CastCast'lstm_cell_46/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Cast?
lstm_cell_46/dropout_3/Mul_1Mullstm_cell_46/dropout_3/Mul:z:0lstm_cell_46/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_3/Mul_1~
lstm_cell_46/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2 
lstm_cell_46/ones_like_1/Shape?
lstm_cell_46/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm_cell_46/ones_like_1/Const?
lstm_cell_46/ones_like_1Fill'lstm_cell_46/ones_like_1/Shape:output:0'lstm_cell_46/ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/ones_like_1?
lstm_cell_46/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_4/Const?
lstm_cell_46/dropout_4/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Mul?
lstm_cell_46/dropout_4/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_4/Shape?
3lstm_cell_46/dropout_4/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ӵ?25
3lstm_cell_46/dropout_4/random_uniform/RandomUniform?
%lstm_cell_46/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_4/GreaterEqual/y?
#lstm_cell_46/dropout_4/GreaterEqualGreaterEqual<lstm_cell_46/dropout_4/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_4/GreaterEqual?
lstm_cell_46/dropout_4/CastCast'lstm_cell_46/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Cast?
lstm_cell_46/dropout_4/Mul_1Mullstm_cell_46/dropout_4/Mul:z:0lstm_cell_46/dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_4/Mul_1?
lstm_cell_46/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_5/Const?
lstm_cell_46/dropout_5/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Mul?
lstm_cell_46/dropout_5/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_5/Shape?
3lstm_cell_46/dropout_5/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??25
3lstm_cell_46/dropout_5/random_uniform/RandomUniform?
%lstm_cell_46/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_5/GreaterEqual/y?
#lstm_cell_46/dropout_5/GreaterEqualGreaterEqual<lstm_cell_46/dropout_5/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_5/GreaterEqual?
lstm_cell_46/dropout_5/CastCast'lstm_cell_46/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Cast?
lstm_cell_46/dropout_5/Mul_1Mullstm_cell_46/dropout_5/Mul:z:0lstm_cell_46/dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_5/Mul_1?
lstm_cell_46/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_6/Const?
lstm_cell_46/dropout_6/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Mul?
lstm_cell_46/dropout_6/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_6/Shape?
3lstm_cell_46/dropout_6/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_6/random_uniform/RandomUniform?
%lstm_cell_46/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_6/GreaterEqual/y?
#lstm_cell_46/dropout_6/GreaterEqualGreaterEqual<lstm_cell_46/dropout_6/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_6/GreaterEqual?
lstm_cell_46/dropout_6/CastCast'lstm_cell_46/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Cast?
lstm_cell_46/dropout_6/Mul_1Mullstm_cell_46/dropout_6/Mul:z:0lstm_cell_46/dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_6/Mul_1?
lstm_cell_46/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell_46/dropout_7/Const?
lstm_cell_46/dropout_7/MulMul!lstm_cell_46/ones_like_1:output:0%lstm_cell_46/dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Mul?
lstm_cell_46/dropout_7/ShapeShape!lstm_cell_46/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_46/dropout_7/Shape?
3lstm_cell_46/dropout_7/random_uniform/RandomUniformRandomUniform%lstm_cell_46/dropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???25
3lstm_cell_46/dropout_7/random_uniform/RandomUniform?
%lstm_cell_46/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm_cell_46/dropout_7/GreaterEqual/y?
#lstm_cell_46/dropout_7/GreaterEqualGreaterEqual<lstm_cell_46/dropout_7/random_uniform/RandomUniform:output:0.lstm_cell_46/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm_cell_46/dropout_7/GreaterEqual?
lstm_cell_46/dropout_7/CastCast'lstm_cell_46/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Cast?
lstm_cell_46/dropout_7/Mul_1Mullstm_cell_46/dropout_7/Mul:z:0lstm_cell_46/dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/dropout_7/Mul_1?
lstm_cell_46/mulMulstrided_slice_2:output:0lstm_cell_46/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul?
lstm_cell_46/mul_1Mulstrided_slice_2:output:0 lstm_cell_46/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_1?
lstm_cell_46/mul_2Mulstrided_slice_2:output:0 lstm_cell_46/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_2?
lstm_cell_46/mul_3Mulstrided_slice_2:output:0 lstm_cell_46/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_3~
lstm_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_46/split/split_dim?
!lstm_cell_46/split/ReadVariableOpReadVariableOp*lstm_cell_46_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_46/split/ReadVariableOp?
lstm_cell_46/splitSplit%lstm_cell_46/split/split_dim:output:0)lstm_cell_46/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
lstm_cell_46/split?
lstm_cell_46/MatMulMatMullstm_cell_46/mul:z:0lstm_cell_46/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul?
lstm_cell_46/MatMul_1MatMullstm_cell_46/mul_1:z:0lstm_cell_46/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_1?
lstm_cell_46/MatMul_2MatMullstm_cell_46/mul_2:z:0lstm_cell_46/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_2?
lstm_cell_46/MatMul_3MatMullstm_cell_46/mul_3:z:0lstm_cell_46/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_3?
lstm_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
lstm_cell_46/split_1/split_dim?
#lstm_cell_46/split_1/ReadVariableOpReadVariableOp,lstm_cell_46_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_46/split_1/ReadVariableOp?
lstm_cell_46/split_1Split'lstm_cell_46/split_1/split_dim:output:0+lstm_cell_46/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2
lstm_cell_46/split_1?
lstm_cell_46/BiasAddBiasAddlstm_cell_46/MatMul:product:0lstm_cell_46/split_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd?
lstm_cell_46/BiasAdd_1BiasAddlstm_cell_46/MatMul_1:product:0lstm_cell_46/split_1:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_1?
lstm_cell_46/BiasAdd_2BiasAddlstm_cell_46/MatMul_2:product:0lstm_cell_46/split_1:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_2?
lstm_cell_46/BiasAdd_3BiasAddlstm_cell_46/MatMul_3:product:0lstm_cell_46/split_1:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_46/BiasAdd_3?
lstm_cell_46/mul_4Mulzeros:output:0 lstm_cell_46/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_4?
lstm_cell_46/mul_5Mulzeros:output:0 lstm_cell_46/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_5?
lstm_cell_46/mul_6Mulzeros:output:0 lstm_cell_46/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_6?
lstm_cell_46/mul_7Mulzeros:output:0 lstm_cell_46/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_7?
lstm_cell_46/ReadVariableOpReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp?
 lstm_cell_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 lstm_cell_46/strided_slice/stack?
"lstm_cell_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice/stack_1?
"lstm_cell_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"lstm_cell_46/strided_slice/stack_2?
lstm_cell_46/strided_sliceStridedSlice#lstm_cell_46/ReadVariableOp:value:0)lstm_cell_46/strided_slice/stack:output:0+lstm_cell_46/strided_slice/stack_1:output:0+lstm_cell_46/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice?
lstm_cell_46/MatMul_4MatMullstm_cell_46/mul_4:z:0#lstm_cell_46/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_4?
lstm_cell_46/addAddV2lstm_cell_46/BiasAdd:output:0lstm_cell_46/MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add?
lstm_cell_46/SigmoidSigmoidlstm_cell_46/add:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid?
lstm_cell_46/ReadVariableOp_1ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_1?
"lstm_cell_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2$
"lstm_cell_46/strided_slice_1/stack?
$lstm_cell_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2&
$lstm_cell_46/strided_slice_1/stack_1?
$lstm_cell_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_1/stack_2?
lstm_cell_46/strided_slice_1StridedSlice%lstm_cell_46/ReadVariableOp_1:value:0+lstm_cell_46/strided_slice_1/stack:output:0-lstm_cell_46/strided_slice_1/stack_1:output:0-lstm_cell_46/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_1?
lstm_cell_46/MatMul_5MatMullstm_cell_46/mul_5:z:0%lstm_cell_46/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_5?
lstm_cell_46/add_1AddV2lstm_cell_46/BiasAdd_1:output:0lstm_cell_46/MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_1?
lstm_cell_46/Sigmoid_1Sigmoidlstm_cell_46/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_1?
lstm_cell_46/mul_8Mullstm_cell_46/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_8?
lstm_cell_46/ReadVariableOp_2ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_2?
"lstm_cell_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"lstm_cell_46/strided_slice_2/stack?
$lstm_cell_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2&
$lstm_cell_46/strided_slice_2/stack_1?
$lstm_cell_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_2/stack_2?
lstm_cell_46/strided_slice_2StridedSlice%lstm_cell_46/ReadVariableOp_2:value:0+lstm_cell_46/strided_slice_2/stack:output:0-lstm_cell_46/strided_slice_2/stack_1:output:0-lstm_cell_46/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_2?
lstm_cell_46/MatMul_6MatMullstm_cell_46/mul_6:z:0%lstm_cell_46/strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_6?
lstm_cell_46/add_2AddV2lstm_cell_46/BiasAdd_2:output:0lstm_cell_46/MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_2y
lstm_cell_46/TanhTanhlstm_cell_46/add_2:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh?
lstm_cell_46/mul_9Mullstm_cell_46/Sigmoid:y:0lstm_cell_46/Tanh:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_9?
lstm_cell_46/add_3AddV2lstm_cell_46/mul_8:z:0lstm_cell_46/mul_9:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_3?
lstm_cell_46/ReadVariableOp_3ReadVariableOp$lstm_cell_46_readvariableop_resource* 
_output_shapes
:
??*
dtype02
lstm_cell_46/ReadVariableOp_3?
"lstm_cell_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2$
"lstm_cell_46/strided_slice_3/stack?
$lstm_cell_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_cell_46/strided_slice_3/stack_1?
$lstm_cell_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm_cell_46/strided_slice_3/stack_2?
lstm_cell_46/strided_slice_3StridedSlice%lstm_cell_46/ReadVariableOp_3:value:0+lstm_cell_46/strided_slice_3/stack:output:0-lstm_cell_46/strided_slice_3/stack_1:output:0-lstm_cell_46/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
lstm_cell_46/strided_slice_3?
lstm_cell_46/MatMul_7MatMullstm_cell_46/mul_7:z:0%lstm_cell_46/strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/MatMul_7?
lstm_cell_46/add_4AddV2lstm_cell_46/BiasAdd_3:output:0lstm_cell_46/MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/add_4?
lstm_cell_46/Sigmoid_2Sigmoidlstm_cell_46/add_4:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Sigmoid_2}
lstm_cell_46/Tanh_1Tanhlstm_cell_46/add_3:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/Tanh_1?
lstm_cell_46/mul_10Mullstm_cell_46/Sigmoid_2:y:0lstm_cell_46/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell_46/mul_10?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_46_split_readvariableop_resource,lstm_cell_46_split_1_readvariableop_resource$lstm_cell_46_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_237202*
condR
while_cond_237201*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell_46/ReadVariableOp^lstm_cell_46/ReadVariableOp_1^lstm_cell_46/ReadVariableOp_2^lstm_cell_46/ReadVariableOp_3"^lstm_cell_46/split/ReadVariableOp$^lstm_cell_46/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2:
lstm_cell_46/ReadVariableOplstm_cell_46/ReadVariableOp2>
lstm_cell_46/ReadVariableOp_1lstm_cell_46/ReadVariableOp_12>
lstm_cell_46/ReadVariableOp_2lstm_cell_46/ReadVariableOp_22>
lstm_cell_46/ReadVariableOp_3lstm_cell_46/ReadVariableOp_32F
!lstm_cell_46/split/ReadVariableOp!lstm_cell_46/split/ReadVariableOp2J
#lstm_cell_46/split_1/ReadVariableOp#lstm_cell_46/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?&
?
while_body_236005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_46_236029_0:
??*
while_lstm_cell_46_236031_0:	?/
while_lstm_cell_46_236033_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_46_236029:
??(
while_lstm_cell_46_236031:	?-
while_lstm_cell_46_236033:
????*while/lstm_cell_46/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_46_236029_0while_lstm_cell_46_236031_0while_lstm_cell_46_236033_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_2359912,
*while/lstm_cell_46/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_46/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_46/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_46/StatefulPartitionedCall:output:1+^while/lstm_cell_46/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_46/StatefulPartitionedCall:output:2+^while/lstm_cell_46/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_46_236029while_lstm_cell_46_236029_0"8
while_lstm_cell_46_236031while_lstm_cell_46_236031_0"8
while_lstm_cell_46_236033while_lstm_cell_46_236033_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_46/StatefulPartitionedCall*while/lstm_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_238501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_238501___redundant_placeholder04
0while_while_cond_238501___redundant_placeholder14
0while_while_cond_238501___redundant_placeholder24
0while_while_cond_238501___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
%__inference_lstm_layer_call_fn_239689

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2374002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_236963

inputs$
embedding_236678:
??
lstm_236938:
??
lstm_236940:	?
lstm_236942:
??*
module_wrapper_9_236957:	?%
module_wrapper_9_236959:
identity??!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?(module_wrapper_9/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_236678*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2366772#
!embedding/StatefulPartitionedCall?
!spatial_dropout1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_2366852#
!spatial_dropout1d/PartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*spatial_dropout1d/PartitionedCall:output:0lstm_236938lstm_236940lstm_236942*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_2369372
lstm/StatefulPartitionedCall?
(module_wrapper_9/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0module_wrapper_9_236957module_wrapper_9_236959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_2369562*
(module_wrapper_9/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_9/StatefulPartitionedCall:output:0"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall)^module_wrapper_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2T
(module_wrapper_9/StatefulPartitionedCall(module_wrapper_9/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Ԗ
?
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_239957

inputs
states_0
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??g2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:??????????2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
??:
??:
??:
??*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:??????????2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:??????????2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:??????????2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:??????????2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:?:?:?:?*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:??????????2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:??????????2
	BiasAdd_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_5g
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_6g
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:??????????2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:??????????2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:??????????2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:??????????2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????2
mul_10?
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
embedding_input8
!serving_default_embedding_input:0?????????D
module_wrapper_90
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer

signatures
#_self_saveable_object_factories
trainable_variables
		variables

regularization_losses
	keras_api
*r&call_and_return_all_conditional_losses
s_default_save_signature
t__call__"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 31]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 31]}, "dtype": "float32", "input_dim": 2000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 31}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 9, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 31]}, "float32", "embedding_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 10}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

embeddings
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
*u&call_and_return_all_conditional_losses
v__call__"?
_tf_keras_layer?{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 31]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 31]}, "dtype": "float32", "input_dim": 2000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 31}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31]}}
?
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
*w&call_and_return_all_conditional_losses
x__call__"?
_tf_keras_layer?{"name": "spatial_dropout1d", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 11}}
?
cell

state_spec
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
*y&call_and_return_all_conditional_losses
z__call__"?
_tf_keras_rnn_layer?
{"name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "shared_object_id": 8, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 12}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 128]}}
?
_module
trainable_variables
 	variables
!regularization_losses
"	keras_api
*{&call_and_return_all_conditional_losses
|__call__"?
_tf_keras_layer?{"name": "module_wrapper_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratemf(mg)mh*mi+mj,mkvl(vm)vn*vo+vp,vq"
	optimizer
,
}serving_default"
signature_map
 "
trackable_dict_wrapper
J
0
(1
)2
*3
+4
,5"
trackable_list_wrapper
J
0
(1
)2
*3
+4
,5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-metrics
.layer_metrics
trainable_variables
/layer_regularization_losses
0non_trainable_variables
		variables

regularization_losses

1layers
t__call__
s_default_save_signature
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
(:&
??2embedding/embeddings
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
2metrics
3layer_metrics
trainable_variables
4layer_regularization_losses
5non_trainable_variables
	variables
regularization_losses

6layers
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
7metrics
8layer_metrics
trainable_variables
9layer_regularization_losses
:non_trainable_variables
	variables
regularization_losses

;layers
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
?	
<
state_size

(kernel
)recurrent_kernel
*bias
#=_self_saveable_object_factories
>trainable_variables
?	variables
@regularization_losses
A	keras_api
*~&call_and_return_all_conditional_losses
__call__"?
_tf_keras_layer?{"name": "lstm_cell_46", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_46", "trainable": true, "dtype": "float32", "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "shared_object_id": 7}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bmetrics
Clayer_metrics
trainable_variables
Dlayer_regularization_losses

Estates
Fnon_trainable_variables
	variables
regularization_losses

Glayers
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
?

+kernel
,bias
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 196}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 196]}}
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lmetrics
Mlayer_metrics
trainable_variables
Nlayer_regularization_losses
Onon_trainable_variables
 	variables
!regularization_losses

Players
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
):'
??2lstm/lstm_cell/kernel
3:1
??2lstm/lstm_cell/recurrent_kernel
": ?2lstm/lstm_cell/bias
3:1	?2 module_wrapper_9/dense_10/kernel
,:*2module_wrapper_9/dense_10/bias
.
Q0
R1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Smetrics
Tlayer_metrics
>trainable_variables
Ulayer_regularization_losses
Vnon_trainable_variables
?	variables
@regularization_losses

Wlayers
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xmetrics
Ylayer_metrics
Htrainable_variables
Zlayer_regularization_losses
[non_trainable_variables
I	variables
Jregularization_losses

\layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
?
	]total
	^count
_	variables
`	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 13}
?
	atotal
	bcount
c
_fn_kwargs
d	variables
e	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 10}
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
:  (2total
:  (2count
.
]0
^1"
trackable_list_wrapper
-
_	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
a0
b1"
trackable_list_wrapper
-
d	variables"
_generic_user_object
-:+
??2Adam/embedding/embeddings/m
.:,
??2Adam/lstm/lstm_cell/kernel/m
8:6
??2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%?2Adam/lstm/lstm_cell/bias/m
8:6	?2'Adam/module_wrapper_9/dense_10/kernel/m
1:/2%Adam/module_wrapper_9/dense_10/bias/m
-:+
??2Adam/embedding/embeddings/v
.:,
??2Adam/lstm/lstm_cell/kernel/v
8:6
??2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%?2Adam/lstm/lstm_cell/bias/v
8:6	?2'Adam/module_wrapper_9/dense_10/kernel/v
1:/2%Adam/module_wrapper_9/dense_10/bias/v
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_237850
F__inference_sequential_layer_call_and_return_conditional_losses_238260
F__inference_sequential_layer_call_and_return_conditional_losses_237540
F__inference_sequential_layer_call_and_return_conditional_losses_237560?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_235790?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
embedding_input?????????
?2?
+__inference_sequential_layer_call_fn_236978
+__inference_sequential_layer_call_fn_238277
+__inference_sequential_layer_call_fn_238294
+__inference_sequential_layer_call_fn_237520?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_embedding_layer_call_and_return_conditional_losses_238304?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_embedding_layer_call_fn_238311?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238316
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238338
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238343
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238365?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
2__inference_spatial_dropout1d_layer_call_fn_238370
2__inference_spatial_dropout1d_layer_call_fn_238375
2__inference_spatial_dropout1d_layer_call_fn_238380
2__inference_spatial_dropout1d_layer_call_fn_238385?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_lstm_layer_call_and_return_conditional_losses_238636
@__inference_lstm_layer_call_and_return_conditional_losses_239015
@__inference_lstm_layer_call_and_return_conditional_losses_239266
@__inference_lstm_layer_call_and_return_conditional_losses_239645?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_lstm_layer_call_fn_239656
%__inference_lstm_layer_call_fn_239667
%__inference_lstm_layer_call_fn_239678
%__inference_lstm_layer_call_fn_239689?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_239700
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_239711?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_9_layer_call_fn_239720
1__inference_module_wrapper_9_layer_call_fn_239729?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
$__inference_signature_wrapper_237585embedding_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_239811
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_239957?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_lstm_cell_46_layer_call_fn_239974
-__inference_lstm_cell_46_layer_call_fn_239991?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_235790?(*)+,8?5
.?+
)?&
embedding_input?????????
? "C?@
>
module_wrapper_9*?'
module_wrapper_9??????????
E__inference_embedding_layer_call_and_return_conditional_losses_238304`/?,
%?"
 ?
inputs?????????
? "*?'
 ?
0??????????
? ?
*__inference_embedding_layer_call_fn_238311S/?,
%?"
 ?
inputs?????????
? "????????????
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_239811?(*)???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
H__inference_lstm_cell_46_layer_call_and_return_conditional_losses_239957?(*)???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
-__inference_lstm_cell_46_layer_call_fn_239974?(*)???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
-__inference_lstm_cell_46_layer_call_fn_239991?(*)???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
@__inference_lstm_layer_call_and_return_conditional_losses_238636(*)P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#
?
0??????????
? ?
@__inference_lstm_layer_call_and_return_conditional_losses_239015(*)P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#
?
0??????????
? ?
@__inference_lstm_layer_call_and_return_conditional_losses_239266o(*)@?=
6?3
%?"
inputs??????????

 
p 

 
? "&?#
?
0??????????
? ?
@__inference_lstm_layer_call_and_return_conditional_losses_239645o(*)@?=
6?3
%?"
inputs??????????

 
p

 
? "&?#
?
0??????????
? ?
%__inference_lstm_layer_call_fn_239656r(*)P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "????????????
%__inference_lstm_layer_call_fn_239667r(*)P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "????????????
%__inference_lstm_layer_call_fn_239678b(*)@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
%__inference_lstm_layer_call_fn_239689b(*)@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_239700m+,@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????
? ?
L__inference_module_wrapper_9_layer_call_and_return_conditional_losses_239711m+,@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????
? ?
1__inference_module_wrapper_9_layer_call_fn_239720`+,@?=
&?#
!?
args_0??????????
?

trainingp "???????????
1__inference_module_wrapper_9_layer_call_fn_239729`+,@?=
&?#
!?
args_0??????????
?

trainingp"???????????
F__inference_sequential_layer_call_and_return_conditional_losses_237540q(*)+,@?=
6?3
)?&
embedding_input?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_237560q(*)+,@?=
6?3
)?&
embedding_input?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_237850h(*)+,7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_238260h(*)+,7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_236978d(*)+,@?=
6?3
)?&
embedding_input?????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_237520d(*)+,@?=
6?3
)?&
embedding_input?????????
p

 
? "???????????
+__inference_sequential_layer_call_fn_238277[(*)+,7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_238294[(*)+,7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_237585?(*)+,K?H
? 
A?>
<
embedding_input)?&
embedding_input?????????"C?@
>
module_wrapper_9*?'
module_wrapper_9??????????
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238316?I?F
??<
6?3
inputs'???????????????????????????
p 
? ";?8
1?.
0'???????????????????????????
? ?
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238338?I?F
??<
6?3
inputs'???????????????????????????
p
? ";?8
1?.
0'???????????????????????????
? ?
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238343f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
M__inference_spatial_dropout1d_layer_call_and_return_conditional_losses_238365f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
2__inference_spatial_dropout1d_layer_call_fn_238370{I?F
??<
6?3
inputs'???????????????????????????
p 
? ".?+'????????????????????????????
2__inference_spatial_dropout1d_layer_call_fn_238375{I?F
??<
6?3
inputs'???????????????????????????
p
? ".?+'????????????????????????????
2__inference_spatial_dropout1d_layer_call_fn_238380Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
2__inference_spatial_dropout1d_layer_call_fn_238385Y8?5
.?+
%?"
inputs??????????
p
? "???????????