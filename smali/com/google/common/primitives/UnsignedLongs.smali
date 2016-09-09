.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# static fields
.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/16 v1, 0x25

    .line 409
    new-array v0, v1, [J

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    .line 410
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    .line 411
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    .line 414
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 415
    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    .line 416
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 417
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v2, v0

    .line 418
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method public static compare(JJ)I
    .locals 4

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static divide(JJ)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 187
    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    .line 188
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    move-wide v0, v2

    .line 208
    :goto_0
    return-wide v0

    .line 191
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    cmp-long v1, p0, v2

    if-ltz v1, :cond_2

    .line 197
    div-long v0, p0, p2

    goto :goto_0

    .line 206
    :cond_2
    ushr-long v2, p0, v0

    div-long/2addr v2, p2

    shl-long/2addr v2, v0

    .line 207
    mul-long v4, v2, p2

    sub-long v4, p0, v4

    .line 208
    invoke-static {v4, v5, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2

    .prologue
    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static remainder(JJ)J
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 221
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 222
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 242
    :goto_0
    return-wide p0

    .line 225
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 230
    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 231
    rem-long/2addr p0, p2

    goto :goto_0

    .line 240
    :cond_2
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    shl-long/2addr v2, v4

    .line 241
    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    .line 242
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    :cond_3
    move-wide p2, v0

    goto :goto_1
.end method
