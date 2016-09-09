.class Lio/grpc/internal/ClientCallImpl$1ClosedByContext;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClosedByContext"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;

.field final synthetic val$observer:Lio/grpc/ClientCall$Listener;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->this$0:Lio/grpc/internal/ClientCallImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->val$observer:Lio/grpc/ClientCall$Listener;

    .line 167
    # getter for: Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;
    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 168
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->val$observer:Lio/grpc/ClientCall$Listener;

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v1

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 173
    return-void
.end method
