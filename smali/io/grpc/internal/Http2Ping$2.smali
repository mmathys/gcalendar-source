.class final Lio/grpc/internal/Http2Ping$2;
.super Ljava/lang/Object;
.source "Http2Ping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/Http2Ping;->asRunnable(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/lang/Throwable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

.field final synthetic val$failureCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lio/grpc/internal/Http2Ping$2;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iput-object p2, p0, Lio/grpc/internal/Http2Ping$2;->val$failureCause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lio/grpc/internal/Http2Ping$2;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iget-object v1, p0, Lio/grpc/internal/Http2Ping$2;->val$failureCause:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientTransport$PingCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method
