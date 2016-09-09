.class Lio/grpc/Metadata$AsciiKey;
.super Lio/grpc/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsciiKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/Metadata$Key",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final marshaller:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata$AsciiMarshaller",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;Lio/grpc/Metadata$1;)V

    .line 603
    const-string v0, "-bin"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "ASCII header is named %s. It must not end with %s"

    const-string v2, "-bin"

    .line 603
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$AsciiMarshaller;

    iput-object v0, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    .line 608
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;Lio/grpc/Metadata$1;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata$AsciiKey;-><init>(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)V

    return-void
.end method


# virtual methods
.method parseBytes([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Lio/grpc/Metadata$AsciiMarshaller;->parseAsciiString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method toBytes(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$AsciiMarshaller;->toAsciiString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
