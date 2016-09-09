.class Lio/grpc/Metadata$MetadataEntry;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataEntry"
.end annotation


# instance fields
.field isBinary:Z

.field key:Lio/grpc/Metadata$Key;

.field parsed:Ljava/lang/Object;

.field serializedBinary:[B


# direct methods
.method private constructor <init>(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    .line 634
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$Key;

    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    .line 635
    instance-of v0, p1, Lio/grpc/Metadata$BinaryKey;

    iput-boolean v0, p0, Lio/grpc/Metadata$MetadataEntry;->isBinary:Z

    .line 636
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Metadata$Key;Ljava/lang/Object;Lio/grpc/Metadata$1;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata$MetadataEntry;-><init>(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/Metadata$MetadataEntry;)V
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iget-object v0, p1, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    .line 652
    iget-object v0, p1, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    .line 653
    iget-boolean v0, p1, Lio/grpc/Metadata$MetadataEntry;->isBinary:Z

    iput-boolean v0, p0, Lio/grpc/Metadata$MetadataEntry;->isBinary:Z

    .line 654
    iget-object v0, p1, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    .line 655
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Metadata$MetadataEntry;Lio/grpc/Metadata$1;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lio/grpc/Metadata$MetadataEntry;-><init>(Lio/grpc/Metadata$MetadataEntry;)V

    return-void
.end method

.method private constructor <init>(Z[B)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iput-object p2, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    .line 644
    iput-boolean p1, p0, Lio/grpc/Metadata$MetadataEntry;->isBinary:Z

    .line 645
    return-void
.end method

.method synthetic constructor <init>(Z[BLio/grpc/Metadata$1;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata$MetadataEntry;-><init>(Z[B)V

    return-void
.end method


# virtual methods
.method public getParsed(Lio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    .line 660
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    if-eq v1, p1, :cond_2

    .line 663
    iget-object v1, p0, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    invoke-virtual {v1, v0}, Lio/grpc/Metadata$Key;->toBytes(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    .line 668
    :cond_0
    iput-object p1, p0, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    .line 669
    iget-object v1, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    if-eqz v1, :cond_1

    .line 670
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    invoke-virtual {p1, v0}, Lio/grpc/Metadata$Key;->parseBytes([B)Ljava/lang/Object;

    move-result-object v0

    .line 672
    :cond_1
    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    .line 673
    :cond_2
    return-object v0
.end method

.method public getSerialized()[B
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->key:Lio/grpc/Metadata$Key;

    iget-object v1, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/grpc/Metadata$Key;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    .line 678
    return-object v0

    .line 680
    :cond_0
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    iget-boolean v0, p0, Lio/grpc/Metadata$MetadataEntry;->isBinary:Z

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lio/grpc/Metadata$MetadataEntry;->getSerialized()[B

    move-result-object v1

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 692
    :goto_0
    return-object v0

    .line 689
    :cond_0
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->parsed:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lio/grpc/Metadata$MetadataEntry;->serializedBinary:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
