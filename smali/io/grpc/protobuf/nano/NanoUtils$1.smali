.class final Lio/grpc/protobuf/nano/NanoUtils$1;
.super Ljava/lang/Object;
.source "NanoUtils.java"

# interfaces
.implements Lio/grpc/MethodDescriptor$Marshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/MethodDescriptor$Marshaller",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$factory:Lio/grpc/protobuf/nano/MessageNanoFactory;


# direct methods
.method constructor <init>(Lio/grpc/protobuf/nano/MessageNanoFactory;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lio/grpc/protobuf/nano/NanoUtils$1;->val$factory:Lio/grpc/protobuf/nano/MessageNanoFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/google/protobuf/nano/MessageNano;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 66
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->setSizeLimit(I)I

    .line 67
    iget-object v1, p0, Lio/grpc/protobuf/nano/NanoUtils$1;->val$factory:Lio/grpc/protobuf/nano/MessageNanoFactory;

    invoke-interface {v1}, Lio/grpc/protobuf/nano/MessageNanoFactory;->newInstance()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "Failed parsing nano proto message"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lio/grpc/protobuf/nano/NanoUtils$1;->parse(Ljava/io/InputStream;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public stream(Lcom/google/protobuf/nano/MessageNano;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lio/grpc/protobuf/nano/NanoProtoInputStream;

    invoke-direct {v0, p1}, Lio/grpc/protobuf/nano/NanoProtoInputStream;-><init>(Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method

.method public bridge synthetic stream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p0, p1}, Lio/grpc/protobuf/nano/NanoUtils$1;->stream(Lcom/google/protobuf/nano/MessageNano;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
