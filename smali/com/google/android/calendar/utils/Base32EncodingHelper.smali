.class public abstract Lcom/google/android/calendar/utils/Base32EncodingHelper;
.super Ljava/lang/Object;
.source "Base32EncodingHelper.java"


# static fields
.field public static final CHARACTERS_LOWER:[C

.field public static final CHARACTERS_UPPER:[C

.field private static final MASK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/utils/Base32EncodingHelper;->CHARACTERS_UPPER:[C

    .line 23
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/utils/Base32EncodingHelper;->CHARACTERS_LOWER:[C

    .line 32
    sget-object v0, Lcom/google/android/calendar/utils/Base32EncodingHelper;->CHARACTERS_UPPER:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/calendar/utils/Base32EncodingHelper;->MASK:I

    return-void
.end method

.method public static encode([BZZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    const/4 v2, 0x0

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_0

    .line 61
    const/4 v1, 0x5

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/calendar/utils/Base32EncodingHelper;->encodeChunkTo(Ljava/io/ByteArrayOutputStream;[BIIZZ)V

    .line 60
    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeChunkTo(Ljava/io/ByteArrayOutputStream;[BIIZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p4, :cond_0

    sget-object v0, Lcom/google/android/calendar/utils/Base32EncodingHelper;->CHARACTERS_UPPER:[C

    .line 72
    :goto_0
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move v2, v1

    .line 73
    :goto_1
    if-ge v2, p3, :cond_1

    .line 74
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    or-long/2addr v4, v6

    .line 75
    const/16 v3, 0x8

    shl-long/2addr v4, v3

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    :cond_0
    sget-object v0, Lcom/google/android/calendar/utils/Base32EncodingHelper;->CHARACTERS_LOWER:[C

    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v2, p3, 0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, -0x5

    .line 81
    :goto_2
    mul-int/lit8 v3, p3, 0x8

    if-ge v1, v3, :cond_2

    .line 82
    sub-int v3, v2, v1

    ushr-long v6, v4, v3

    long-to-int v3, v6

    sget v6, Lcom/google/android/calendar/utils/Base32EncodingHelper;->MASK:I

    and-int/2addr v3, v6

    .line 83
    aget-char v3, v0, v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    add-int/lit8 v1, v1, 0x5

    .line 85
    goto :goto_2

    .line 87
    :cond_2
    if-eqz p5, :cond_3

    move v0, v1

    .line 88
    :goto_3
    const/16 v1, 0x28

    if-ge v0, v1, :cond_3

    .line 89
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 90
    add-int/lit8 v0, v0, 0x5

    goto :goto_3

    .line 93
    :cond_3
    return-void
.end method

.method public static encodeLowercaseNoPaddingBase32Hex([B)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, v0}, Lcom/google/android/calendar/utils/Base32EncodingHelper;->encode([BZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
