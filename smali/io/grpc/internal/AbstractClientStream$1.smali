.class Lio/grpc/internal/AbstractClientStream$1;
.super Ljava/lang/Object;
.source "AbstractClientStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/AbstractClientStream;->newCloseListenerTask(Lio/grpc/Status;Lio/grpc/Metadata;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/AbstractClientStream;

.field final synthetic val$status:Lio/grpc/Status;

.field final synthetic val$trailers:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream$1;->this$0:Lio/grpc/internal/AbstractClientStream;

    iput-object p2, p0, Lio/grpc/internal/AbstractClientStream$1;->val$status:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/AbstractClientStream$1;->val$trailers:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$1;->this$0:Lio/grpc/internal/AbstractClientStream;

    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream$1;->val$status:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream$1;->val$trailers:Lio/grpc/Metadata;

    # invokes: Lio/grpc/internal/AbstractClientStream;->closeListener(Lio/grpc/Status;Lio/grpc/Metadata;)V
    invoke-static {v0, v1, v2}, Lio/grpc/internal/AbstractClientStream;->access$000(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 254
    return-void
.end method
