.class Lio/grpc/Metadata$BinaryKey;
.super Lio/grpc/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinaryKey"
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
.field private final marshaller:Lio/grpc/Metadata$BinaryMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$BinaryMarshaller",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata$BinaryMarshaller",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;Lio/grpc/Metadata$1;)V

    .line 577
    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Binary header is named %s. It must end with %s"

    const-string v2, "-bin"

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "-bin"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "empty key name"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 581
    const-string v0, "marshaller is null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$BinaryMarshaller;

    iput-object v0, p0, Lio/grpc/Metadata$BinaryKey;->marshaller:Lio/grpc/Metadata$BinaryMarshaller;

    .line 582
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;Lio/grpc/Metadata$1;)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata$BinaryKey;-><init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;)V

    return-void
.end method


# virtual methods
.method parseBytes([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lio/grpc/Metadata$BinaryKey;->marshaller:Lio/grpc/Metadata$BinaryMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$BinaryMarshaller;->parseBytes([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method toBytes(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lio/grpc/Metadata$BinaryKey;->marshaller:Lio/grpc/Metadata$BinaryMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$BinaryMarshaller;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
