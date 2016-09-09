.class public Lcom/android/emailcommon/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/Utility$CursorGetter;,
        Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;
    }
.end annotation


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static final INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final mAbbrevDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mAbbrevEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mEmailDateTimeFormatWithMillis:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

.field private static final mFullDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mFullDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 175
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mAbbrevDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 195
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mAbbrevEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 198
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mEmailDateTimeFormat:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 201
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->mEmailDateTimeFormatWithMillis:Lcom/android/emailcommon/utility/Utility$ThreadLocalDateFormat;

    .line 427
    new-instance v0, Lcom/android/emailcommon/utility/Utility$2;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$2;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 434
    new-instance v0, Lcom/android/emailcommon/utility/Utility$3;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$3;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 441
    new-instance v0, Lcom/android/emailcommon/utility/Utility$4;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$4;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 233
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static getSmallHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 323
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->getSmallHashFromSha1([B)I

    move-result v0

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSmallHashFromSha1([B)I
    .locals 3

    .prologue
    .line 332
    const/16 v0, 0x13

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    .line 333
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
