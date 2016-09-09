.class final Lio/grpc/okhttp/internal/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    .line 48
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 191
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 192
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 194
    :cond_0
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 196
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 224
    :goto_1
    return-object v0

    .line 199
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 228
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 229
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 204
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 207
    :sswitch_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 208
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 213
    :sswitch_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->cur:I

    .line 215
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 216
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 218
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    .line 219
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    aput-char v4, v0, v1

    .line 218
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 221
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 224
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->cur:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private getByte(I)I
    .locals 8

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x46

    const/16 v5, 0x41

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 315
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Malformed DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    .line 322
    if-lt v0, v3, :cond_2

    if-gt v0, v4, :cond_2

    .line 323
    add-int/lit8 v0, v0, -0x30

    .line 332
    :goto_1
    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    .line 333
    if-lt v1, v3, :cond_6

    if-gt v1, v4, :cond_6

    .line 334
    add-int/lit8 v1, v1, -0x30

    .line 343
    :goto_2
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    return v0

    .line 324
    :cond_2
    if-lt v0, v7, :cond_3

    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    .line 325
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 326
    :cond_3
    if-lt v0, v5, :cond_4

    if-gt v0, v6, :cond_4

    .line 327
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 329
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Malformed DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 335
    :cond_6
    if-lt v1, v7, :cond_7

    const/16 v2, 0x66

    if-gt v1, v2, :cond_7

    .line 336
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 337
    :cond_7
    if-lt v1, v5, :cond_8

    if-gt v1, v6, :cond_8

    .line 338
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 340
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Malformed DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getEscaped()C
    .locals 4

    .prologue
    .line 236
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 237
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 260
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getUTF8()C

    move-result v0

    :goto_1
    return v0

    .line 256
    :sswitch_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    goto :goto_1

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private getUTF8()C
    .locals 8

    .prologue
    const/16 v6, 0x80

    const/16 v2, 0x3f

    .line 267
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getByte(I)I

    move-result v1

    .line 268
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 270
    if-ge v1, v6, :cond_0

    .line 271
    int-to-char v0, v1

    .line 304
    :goto_0
    return v0

    .line 272
    :cond_0
    const/16 v0, 0xc0

    if-lt v1, v0, :cond_7

    const/16 v0, 0xf7

    if-gt v1, v0, :cond_7

    .line 275
    const/16 v0, 0xdf

    if-gt v1, v0, :cond_2

    .line 276
    const/4 v0, 0x1

    .line 277
    and-int/lit8 v1, v1, 0x1f

    .line 287
    :goto_1
    const/4 v3, 0x0

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_6

    .line 288
    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 289
    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v5, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v5, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v4, v4, v5

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4

    :cond_1
    move v0, v2

    .line 290
    goto :goto_0

    .line 278
    :cond_2
    const/16 v0, 0xef

    if-gt v1, v0, :cond_3

    .line 279
    const/4 v0, 0x2

    .line 280
    and-int/lit8 v1, v1, 0xf

    goto :goto_1

    .line 282
    :cond_3
    const/4 v0, 0x3

    .line 283
    and-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 292
    :cond_4
    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 294
    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v4}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getByte(I)I

    move-result v4

    .line 295
    iget v5, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 296
    and-int/lit16 v5, v4, 0xc0

    if-eq v5, v6, :cond_5

    move v0, v2

    .line 297
    goto :goto_0

    .line 300
    :cond_5
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    add-int/2addr v3, v4

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 302
    :cond_6
    int-to-char v0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    .line 304
    goto :goto_0
.end method

.method private hexAV()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x20

    .line 141
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 147
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 152
    :goto_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_5

    .line 154
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 175
    :cond_3
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int v2, v0, v1

    .line 176
    const/4 v0, 0x5

    if-lt v2, v0, :cond_4

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_9

    .line 177
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_5
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6

    .line 159
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 160
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 163
    :goto_3
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_3

    .line 166
    :cond_6
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-gt v0, v1, :cond_7

    .line 167
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 170
    :cond_7
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto/16 :goto_1

    .line 177
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_9
    div-int/lit8 v0, v2, 0x2

    new-array v3, v0, [B

    .line 182
    const/4 v1, 0x0

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    :goto_4
    array-length v4, v3

    if-ge v1, v4, :cond_a

    .line 183
    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 182
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 186
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 54
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 103
    :goto_1
    return-object v0

    .line 61
    :cond_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 64
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 65
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 69
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_4

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :cond_4
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 78
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_8

    .line 79
    :goto_4
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_5

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 82
    :cond_5
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_8

    .line 83
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 87
    :cond_8
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 91
    :goto_6
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_9

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_6

    .line 96
    :cond_9
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_d

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_d

    :cond_a
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_d

    :cond_b
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    .line 100
    :cond_c
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 103
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 109
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 110
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 113
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected end of DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 119
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 133
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 121
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    .line 122
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 127
    :goto_3
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 128
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_3

    .line 136
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 355
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 356
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 357
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->cur:I

    .line 358
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    .line 360
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 361
    if-nez v0, :cond_1

    move-object v1, v2

    .line 395
    :cond_0
    :goto_0
    return-object v1

    .line 365
    :cond_1
    const-string v1, ""

    .line 367
    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_2

    move-object v1, v2

    .line 368
    goto :goto_0

    .line 371
    :cond_2
    iget-object v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 384
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v1

    .line 390
    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_3

    move-object v1, v2

    .line 395
    goto :goto_0

    .line 373
    :sswitch_1
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 376
    :sswitch_2
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 398
    :cond_3
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_5

    .line 403
    :cond_4
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 404
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 405
    if-nez v0, :cond_1

    .line 406
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Malformed DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_5
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    .line 400
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Malformed DN: "

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 406
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
