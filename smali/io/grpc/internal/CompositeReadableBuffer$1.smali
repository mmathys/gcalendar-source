.class Lio/grpc/internal/CompositeReadableBuffer$1;
.super Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CompositeReadableBuffer;->readUnsignedByte()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CompositeReadableBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/CompositeReadableBuffer;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lio/grpc/internal/CompositeReadableBuffer$1;->this$0:Lio/grpc/internal/CompositeReadableBuffer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;-><init>(Lio/grpc/internal/CompositeReadableBuffer;Lio/grpc/internal/CompositeReadableBuffer$1;)V

    return-void
.end method


# virtual methods
.method readInternal(Lio/grpc/internal/ReadableBuffer;I)I
    .locals 1

    .prologue
    .line 86
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->readUnsignedByte()I

    move-result v0

    return v0
.end method
