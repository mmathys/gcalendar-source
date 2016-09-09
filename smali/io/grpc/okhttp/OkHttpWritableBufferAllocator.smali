.class Lio/grpc/okhttp/OkHttpWritableBufferAllocator;
.super Ljava/lang/Object;
.source "OkHttpWritableBufferAllocator.java"

# interfaces
.implements Lio/grpc/internal/WritableBufferAllocator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public allocate(I)Lio/grpc/internal/WritableBuffer;
    .locals 3

    .prologue
    .line 63
    const/high16 v0, 0x100000

    const/16 v1, 0x1000

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    new-instance v1, Lio/grpc/okhttp/OkHttpWritableBuffer;

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-direct {v1, v2, v0}, Lio/grpc/okhttp/OkHttpWritableBuffer;-><init>(Lokio/Buffer;I)V

    return-object v1
.end method
