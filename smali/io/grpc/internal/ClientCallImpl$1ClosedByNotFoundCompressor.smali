.class Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClosedByNotFoundCompressor"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;

.field final synthetic val$compressorName:Ljava/lang/String;

.field final synthetic val$observer:Lio/grpc/ClientCall$Listener;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->this$0:Lio/grpc/internal/ClientCallImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$observer:Lio/grpc/ClientCall$Listener;

    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$compressorName:Ljava/lang/String;

    .line 187
    # getter for: Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;
    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 188
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$observer:Lio/grpc/ClientCall$Listener;

    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "Unable to find compressor by name %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$compressorName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 194
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    .line 192
    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 196
    return-void
.end method
