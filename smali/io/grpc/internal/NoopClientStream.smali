.class public Lio/grpc/internal/NoopClientStream;
.super Ljava/lang/Object;
.source "NoopClientStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# static fields
.field public static INSTANCE:Lio/grpc/internal/NoopClientStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lio/grpc/internal/NoopClientStream;

    invoke-direct {v0}, Lio/grpc/internal/NoopClientStream;-><init>()V

    sput-object v0, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public halfClose()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public request(I)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
