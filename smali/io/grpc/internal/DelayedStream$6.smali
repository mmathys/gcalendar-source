.class Lio/grpc/internal/DelayedStream$6;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream;->halfClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedStream;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$6;->this$0:Lio/grpc/internal/DelayedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$6;->this$0:Lio/grpc/internal/DelayedStream;

    # getter for: Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;
    invoke-static {v0}, Lio/grpc/internal/DelayedStream;->access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    .line 259
    return-void
.end method
