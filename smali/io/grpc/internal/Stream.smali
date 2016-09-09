.class public interface abstract Lio/grpc/internal/Stream;
.super Ljava/lang/Object;
.source "Stream.java"


# virtual methods
.method public abstract flush()V
.end method

.method public abstract request(I)V
.end method

.method public abstract setCompressor(Lio/grpc/Compressor;)V
.end method

.method public abstract setDecompressor(Lio/grpc/Decompressor;)V
.end method

.method public abstract writeMessage(Ljava/io/InputStream;)V
.end method
