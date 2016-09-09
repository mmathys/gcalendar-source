.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/google/common/primitives/Longs;->createAsciiDigits()[B

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Longs;->asciiDigits:[B

    return-void
.end method

.method public static compare(JJ)I
    .locals 2

    .prologue
    .line 92
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createAsciiDigits()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 305
    const/16 v1, 0x80

    new-array v2, v1, [B

    .line 306
    const/4 v1, -0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 307
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 308
    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 311
    add-int/lit8 v1, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 312
    add-int/lit8 v1, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_1
    return-object v2
.end method
