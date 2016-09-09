.class public Lcom/android/bitmap/util/InputStreamBuffer;
.super Ljava/lang/Object;
.source "InputStreamBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoAdvance:Z

.field private mBuffer:[B

.field private mFilled:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/bitmap/util/InputStreamBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/util/InputStreamBuffer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v4, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    .line 68
    iput v4, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    .line 99
    iput-object p1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    .line 100
    if-gtz p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size %d must be positive."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-static {p2}, Lcom/android/bitmap/util/InputStreamBuffer;->leastPowerOf2(I)I

    move-result v0

    .line 105
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    .line 106
    iput-boolean p3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mAutoAdvance:Z

    .line 107
    return-void
.end method

.method private fill(I)Z
    .locals 10

    .prologue
    const/4 v4, -0x1

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    const-string v0, "fill"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    if-ge p1, v0, :cond_0

    .line 264
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Index %d is before buffer %d"

    new-array v4, v9, [Ljava/lang/Object;

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v0

    .line 271
    iget-object v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 272
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 311
    :goto_0
    return v2

    .line 277
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 278
    iget-object v5, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v5, v5

    if-le v3, v5, :cond_2

    .line 279
    iget-boolean v5, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mAutoAdvance:Z

    if-eqz v5, :cond_4

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/bitmap/util/InputStreamBuffer;->advanceTo(I)V

    .line 281
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v0

    .line 295
    :cond_2
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    iget v6, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    iget-object v7, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 299
    :goto_2
    if-eq v3, v4, :cond_5

    .line 300
    iget v4, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    .line 306
    :goto_3
    sget-object v3, Lcom/android/bitmap/util/InputStreamBuffer;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    sget-object v3, Lcom/android/bitmap/util/InputStreamBuffer;->TAG:Ljava/lang/String;

    const-string v4, "fill %d      buffer: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_3
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 311
    iget v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    if-ge v0, v3, :cond_6

    move v0, v1

    :goto_4
    move v2, v0

    goto :goto_0

    .line 283
    :cond_4
    invoke-static {v3}, Lcom/android/bitmap/util/InputStreamBuffer;->leastPowerOf2(I)I

    move-result v3

    .line 284
    sget-object v5, Lcom/android/bitmap/util/InputStreamBuffer;->TAG:Ljava/lang/String;

    const-string v6, "Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called."

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v8, v8

    .line 287
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 284
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v5, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    goto :goto_1

    .line 296
    :catch_0
    move-exception v3

    move v3, v4

    goto :goto_2

    .line 303
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    goto :goto_3

    :cond_6
    move v0, v2

    .line 311
    goto :goto_4
.end method

.method private static leastPowerOf2(I)I
    .locals 2

    .prologue
    .line 367
    add-int/lit8 v0, p0, -0x1

    .line 368
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 369
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 371
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 372
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    return v0
.end method

.method private shiftToBeginning(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 322
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index %d out of bounds. Length %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    :goto_0
    add-int v1, v0, p1

    iget v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    if-ge v1, v2, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    iget-object v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    add-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method


# virtual methods
.method public advanceTo(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    const-string v0, "advance to"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    sub-int v4, p1, v0

    .line 190
    if-gtz v4, :cond_0

    .line 192
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 239
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    if-ge v4, v0, :cond_2

    .line 196
    invoke-direct {p0, v4}, Lcom/android/bitmap/util/InputStreamBuffer;->shiftToBeginning(I)V

    .line 197
    iput p1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    .line 198
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    .line 235
    :goto_1
    sget-object v0, Lcom/android/bitmap/util/InputStreamBuffer;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/android/bitmap/util/InputStreamBuffer;->TAG:Ljava/lang/String;

    const-string v3, "advanceTo %d buffer: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    aput-object p0, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 201
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    sub-int v0, v4, v0

    move v3, v2

    .line 205
    :cond_3
    if-lez v0, :cond_7

    .line 206
    :try_start_0
    iget-object v5, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 207
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 213
    :goto_2
    const/4 v5, 0x5

    if-lt v3, v5, :cond_3

    move v3, v0

    move v0, v1

    .line 222
    :goto_3
    if-eqz v0, :cond_4

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mInputStream:Ljava/io/InputStream;

    .line 227
    :cond_4
    sub-int v0, p1, v3

    iput v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    .line 228
    iput v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    goto :goto_1

    .line 210
    :cond_5
    int-to-long v8, v0

    sub-long v6, v8, v6

    long-to-int v0, v6

    goto :goto_2

    .line 218
    :catch_0
    move-exception v3

    move v3, v0

    move v0, v1

    .line 219
    goto :goto_3

    .line 231
    :cond_6
    iput p1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    .line 232
    iput v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    goto :goto_1

    :cond_7
    move v3, v0

    move v0, v2

    goto :goto_3
.end method

.method public get(I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "get"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/bitmap/util/InputStreamBuffer;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    sub-int v0, p1, v0

    .line 133
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 134
    iget-object v1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    aget-byte v0, v1, v0

    return v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 137
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index %d beyond length."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public has(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 160
    const-string v1, "has"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 161
    iget v1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    if-ge p1, v1, :cond_0

    .line 162
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index %d is before buffer %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    iget v1, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    sub-int v1, p1, v1

    .line 170
    iget v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 171
    :cond_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/bitmap/util/InputStreamBuffer;->fill(I)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_2
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    const-string v0, "+%d+%d [%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mBuffer:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/bitmap/util/InputStreamBuffer;->mFilled:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
