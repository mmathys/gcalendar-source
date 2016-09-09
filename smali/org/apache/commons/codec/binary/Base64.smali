.class public Lorg/apache/commons/codec/binary/Base64;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 83
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 96
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 115
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    .line 74
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 83
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 96
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 115
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base64;-><init>(I)V

    .line 174
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[B)V

    .line 216
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 243
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 273
    const/4 v2, 0x3

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 143
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->decodeTable:[B

    .line 278
    if-eqz p2, :cond_3

    .line 279
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/Base64;->containsAlphabetOrPad([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    array-length v0, p2

    goto :goto_0

    .line 283
    :cond_1
    if-lez p1, :cond_2

    .line 284
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 285
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 286
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    :goto_1
    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/codec/binary/Base64;->decodeSize:I

    .line 296
    if-eqz p3, :cond_4

    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    .line 297
    return-void

    .line 288
    :cond_2
    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 289
    iput-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 292
    :cond_3
    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 293
    iput-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_1

    .line 296
    :cond_4
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_2
.end method


# virtual methods
.method decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 429
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 432
    :cond_1
    if-gez p3, :cond_2

    .line 433
    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 435
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 436
    iget v1, p0, Lorg/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v1, p4}, Lorg/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v2

    .line 437
    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    .line 438
    iget-byte v4, p0, Lorg/apache/commons/codec/binary/Base64;->pad:B

    if-ne v3, v4, :cond_4

    .line 440
    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 461
    :cond_3
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz v0, :cond_0

    .line 462
    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->decodeSize:I

    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 466
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v1, :pswitch_data_0

    .line 481
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_4
    if-ltz v3, :cond_5

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 444
    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    aget-byte v3, v4, v3

    .line 445
    if-ltz v3, :cond_5

    .line 446
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x4

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 447
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 448
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v3, :cond_5

    .line 449
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 450
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 451
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 435
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 472
    :pswitch_1
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v1, v1, 0x4

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 473
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 476
    :pswitch_2
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 477
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 478
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-gez p3, :cond_4

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 339
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    if-eqz v0, :cond_0

    .line 342
    :cond_2
    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 343
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 344
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_0
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 351
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 353
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_3

    .line 354
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v4, p0, Lorg/apache/commons/codec/binary/Base64;->pad:B

    aput-byte v4, v0, v3

    .line 355
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v4, p0, Lorg/apache/commons/codec/binary/Base64;->pad:B

    aput-byte v4, v0, v3

    .line 371
    :cond_3
    :goto_1
    :pswitch_1
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int v1, v4, v1

    add-int/2addr v1, v3

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 373
    iget v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v1, :cond_0

    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v1, :cond_0

    .line 374
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 360
    :pswitch_2
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 361
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 362
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 364
    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v3, v4, :cond_3

    .line 365
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v4, p0, Lorg/apache/commons/codec/binary/Base64;->pad:B

    aput-byte v4, v0, v3

    goto :goto_1

    :cond_4
    move v1, v2

    .line 378
    :goto_2
    if-ge v1, p3, :cond_0

    .line 379
    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base64;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v4

    .line 380
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 381
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 382
    if-gez v0, :cond_5

    .line 383
    add-int/lit16 v0, v0, 0x100

    .line 385
    :cond_5
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 386
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v0, :cond_6

    .line 387
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 388
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 389
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 390
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    .line 391
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 392
    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    if-lez v0, :cond_6

    iget v0, p0, Lorg/apache/commons/codec/binary/Base64;->lineLength:I

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v0, v5, :cond_6

    .line 393
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 395
    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 378
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected isInAlphabet(B)Z
    .locals 2

    .prologue
    .line 781
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
