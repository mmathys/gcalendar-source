.class public abstract Lio/grpc/Metadata$Key;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final VALID_T_CHARS:Ljava/util/BitSet;


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameBytes:[B

.field private final originalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lio/grpc/Metadata$Key;->generateValidTChars()Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata$Key;->VALID_T_CHARS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/Metadata$Key;->originalName:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lio/grpc/Metadata$Key;->originalName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/Metadata$Key;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Metadata$Key;->nameBytes:[B

    .line 503
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$1;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/Metadata$Key;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static generateValidTChars()Ljava/util/BitSet;
    .locals 3

    .prologue
    .line 468
    new-instance v1, Ljava/util/BitSet;

    const/16 v0, 0x7f

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 469
    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 470
    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 471
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 472
    const/16 v0, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 473
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 476
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    .line 477
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    .line 479
    :cond_1
    return-object v1
.end method

.method public static of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata$AsciiMarshaller",
            "<TT;>;)",
            "Lio/grpc/Metadata$Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lio/grpc/Metadata$AsciiKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/Metadata$AsciiKey;-><init>(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;Lio/grpc/Metadata$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;)Lio/grpc/Metadata$Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata$BinaryMarshaller",
            "<TT;>;)",
            "Lio/grpc/Metadata$Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lio/grpc/Metadata$BinaryKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/Metadata$BinaryKey;-><init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;Lio/grpc/Metadata$1;)V

    return-object v0
.end method

.method private static validateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "token must have at least 1 tchar"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 485
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 486
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 485
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 484
    goto :goto_0

    .line 492
    :cond_1
    sget-object v2, Lio/grpc/Metadata$Key;->VALID_T_CHARS:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    const-string v3, "Invalid character \'%s\' in key name \'%s\'"

    invoke-static {v2, v3, v0, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;CLjava/lang/Object;)V

    goto :goto_2

    .line 495
    :cond_2
    return-object p0
.end method


# virtual methods
.method asciiName()[B
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lio/grpc/Metadata$Key;->nameBytes:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 534
    if-ne p0, p1, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 540
    :cond_2
    check-cast p1, Lio/grpc/Metadata$Key;

    .line 541
    iget-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    iget-object v1, p1, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    return-object v0
.end method

.method abstract parseBytes([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method abstract toBytes(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lio/grpc/Metadata$Key;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Key{name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
