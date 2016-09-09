.class Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream$DelayedStreamListener;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;->this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;->this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    # getter for: Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;
    invoke-static {v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->access$100(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    .line 372
    return-void
.end method
