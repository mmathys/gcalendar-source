.class Lio/grpc/internal/FailingClientStream;
.super Lio/grpc/internal/NoopClientStream;
.source "FailingClientStream.java"


# instance fields
.field private final error:Lio/grpc/Status;

.field private started:Z


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lio/grpc/internal/NoopClientStream;-><init>()V

    .line 51
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    .line 53
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-boolean v0, p0, Lio/grpc/internal/FailingClientStream;->started:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "already started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 58
    iput-boolean v1, p0, Lio/grpc/internal/FailingClientStream;->started:Z

    .line 59
    iget-object v0, p0, Lio/grpc/internal/FailingClientStream;->error:Lio/grpc/Status;

    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
