.class Lio/grpc/internal/DelayedStream$1;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream;->setAuthority(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedStream;

.field final synthetic val$authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedStream;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$1;->this$0:Lio/grpc/internal/DelayedStream;

    iput-object p2, p0, Lio/grpc/internal/DelayedStream$1;->val$authority:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$1;->this$0:Lio/grpc/internal/DelayedStream;

    # getter for: Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;
    invoke-static {v0}, Lio/grpc/internal/DelayedStream;->access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedStream$1;->val$authority:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    .line 155
    return-void
.end method
