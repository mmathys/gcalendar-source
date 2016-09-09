.class public final Lio/grpc/internal/ReadableBuffers;
.super Ljava/lang/Object;
.source "ReadableBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ReadableBuffers$BufferInputStream;,
        Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;
    }
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([B)V

    sput-object v0, Lio/grpc/internal/ReadableBuffers;->EMPTY_BUFFER:Lio/grpc/internal/ReadableBuffer;

    return-void
.end method

.method public static empty()Lio/grpc/internal/ReadableBuffer;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lio/grpc/internal/ReadableBuffers;->EMPTY_BUFFER:Lio/grpc/internal/ReadableBuffer;

    return-object v0
.end method

.method public static ignoreClose(Lio/grpc/internal/ReadableBuffer;)Lio/grpc/internal/ReadableBuffer;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lio/grpc/internal/ReadableBuffers$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/ReadableBuffers$1;-><init>(Lio/grpc/internal/ReadableBuffer;)V

    return-object v0
.end method

.method public static openStream(Lio/grpc/internal/ReadableBuffer;Z)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v0, p0}, Lio/grpc/internal/ReadableBuffers$BufferInputStream;-><init>(Lio/grpc/internal/ReadableBuffer;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lio/grpc/internal/ReadableBuffers;->ignoreClose(Lio/grpc/internal/ReadableBuffer;)Lio/grpc/internal/ReadableBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public static readArray(Lio/grpc/internal/ReadableBuffer;)[B
    .locals 3

    .prologue
    .line 90
    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {p0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    .line 92
    new-array v1, v0, [B

    .line 93
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    .line 94
    return-object v1
.end method

.method public static readAsString(Lio/grpc/internal/ReadableBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-string v0, "charset"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p0}, Lio/grpc/internal/ReadableBuffers;->readArray(Lio/grpc/internal/ReadableBuffer;)[B

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method
