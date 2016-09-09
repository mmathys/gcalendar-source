.class public final Lcom/google/android/libraries/performance/primes/hprof/HprofClass;
.super Lcom/google/android/libraries/performance/primes/hprof/HprofObject;
.source "HprofClass.java"


# instance fields
.field private final classNamePosition:I

.field private fieldNamePositions:[I

.field private fieldsCount:I

.field private offsets:[I

.field private staticFieldNamePositions:[I

.field private staticValueIds:[I

.field private superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

.field private totalOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;-><init>(I)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    .line 71
    iput p2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->classNamePosition:I

    .line 72
    return-void
.end method

.method private getFieldValueInternal(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;II)I
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->offsets:[I

    aget v0, v0, p3

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId(I)I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->totalOffset:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    array-length v2, v2

    sub-int v2, p3, v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getFieldValueInternal(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;II)I

    move-result v0

    goto :goto_0
.end method

.method private parseFields(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v3, 0xffff

    and-int/2addr v3, v1

    .line 201
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    .line 202
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->offsets:[I

    .line 204
    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->totalOffset:I

    move v1, v0

    .line 205
    :goto_0
    if-ge v1, v3, :cond_1

    .line 206
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v4

    .line 207
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 208
    invoke-virtual {p1, v5}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->isObjectType(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    iget-object v6, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->get(I)I

    move-result v4

    aput v4, v6, v0

    .line 210
    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->offsets:[I

    iget v6, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->totalOffset:I

    aput v6, v4, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 213
    :cond_0
    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->totalOffset:I

    invoke-virtual {p1, v5}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getTypeSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->totalOffset:I

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    .line 216
    :goto_1
    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    .line 217
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->offsets:[I

    .line 218
    :goto_2
    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->offsets:[I

    .line 219
    return-void

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_1

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->offsets:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_2
.end method

.method private parseStaticFields(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v3, 0xffff

    and-int/2addr v3, v1

    .line 174
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    .line 175
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticFieldNamePositions:[I

    move v1, v0

    .line 177
    :goto_0
    if-ge v1, v3, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v4

    .line 179
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 180
    invoke-virtual {p1, v5}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->isObjectType(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v5

    .line 182
    if-eqz v5, :cond_0

    .line 183
    iget-object v6, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    aput v5, v6, v0

    .line 184
    iget-object v5, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticFieldNamePositions:[I

    invoke-virtual {p2, v4}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->get(I)I

    move-result v4

    aput v4, v5, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 177
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1, v5}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getTypeSize(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    goto :goto_1

    .line 192
    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    .line 193
    :goto_2
    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    .line 194
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticFieldNamePositions:[I

    .line 195
    :goto_3
    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticFieldNamePositions:[I

    .line 196
    return-void

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_2

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticFieldNamePositions:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_3
.end method

.method private skipClassConstants(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v2, 0xffff

    and-int/2addr v2, v0

    .line 163
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 164
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 165
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 166
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getTypeSize(I)I

    move-result v3

    .line 167
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public describeType(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const-string v1, "#"

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getClassName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChildCount(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    array-length v0, v0

    return v0
.end method

.method public getChildName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticFieldNamePositions:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildValue(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->staticValueIds:[I

    aget v0, v0, p2

    return v0
.end method

.method public getClassName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->classNamePosition:I

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFieldName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    invoke-static {p2, v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkElementIndex(II)I

    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    array-length v1, v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getFieldName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFieldValue(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;I)I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    invoke-static {p3, v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkElementIndex(II)I

    .line 131
    iget v0, p2, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->position:I

    .line 132
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 133
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getFieldValueInternal(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;II)I

    move-result v0

    return v0
.end method

.method public getFieldsCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    return v0
.end method

.method public parse(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/hprof/ParseContext;",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofClass;",
            ">;",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->position:I

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 150
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->readId()I

    move-result v0

    .line 151
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->getIdSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/performance/primes/hprof/ParseContext;->skipBytes(I)V

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->skipClassConstants(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)V

    .line 156
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->parseStaticFields(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;)V

    .line 157
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->parseFields(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;)V

    .line 158
    return-void
.end method

.method resolveSuperClasses()V
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldNamePositions:[I

    array-length v0, v0

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->resolveSuperClasses()V

    .line 117
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iget v1, v1, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->fieldsCount:I

    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->superClass:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iget v0, v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->flags:I

    .line 123
    :cond_0
    return-void
.end method
