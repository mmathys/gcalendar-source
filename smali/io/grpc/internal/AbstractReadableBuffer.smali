.class public abstract Lio/grpc/internal/AbstractReadableBuffer;
.super Ljava/lang/Object;
.source "AbstractReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkReadable(I)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final readInt()I
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractReadableBuffer;->checkReadable(I)V

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v2

    .line 63
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v3

    .line 64
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method
