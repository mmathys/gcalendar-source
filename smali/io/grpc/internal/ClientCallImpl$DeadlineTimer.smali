.class Lio/grpc/internal/ClientCallImpl$DeadlineTimer;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeadlineTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ClientCallImpl;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/internal/ClientCallImpl$1;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;-><init>(Lio/grpc/internal/ClientCallImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 301
    return-void
.end method
