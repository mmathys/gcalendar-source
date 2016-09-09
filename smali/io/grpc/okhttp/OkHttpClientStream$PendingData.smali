.class Lio/grpc/okhttp/OkHttpClientStream$PendingData;
.super Ljava/lang/Object;
.source "OkHttpClientStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingData"
.end annotation


# instance fields
.field buffer:Lokio/Buffer;

.field endOfStream:Z

.field flush:Z


# direct methods
.method constructor <init>(Lokio/Buffer;ZZ)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->buffer:Lokio/Buffer;

    .line 313
    iput-boolean p2, p0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->endOfStream:Z

    .line 314
    iput-boolean p3, p0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->flush:Z

    .line 315
    return-void
.end method
