.class Lio/grpc/internal/DelayedStream$7;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream;->request(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedStream;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedStream;I)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$7;->this$0:Lio/grpc/internal/DelayedStream;

    iput p2, p0, Lio/grpc/internal/DelayedStream$7;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$7;->this$0:Lio/grpc/internal/DelayedStream;

    # getter for: Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;
    invoke-static {v0}, Lio/grpc/internal/DelayedStream;->access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/DelayedStream$7;->val$numMessages:I

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->request(I)V

    .line 272
    return-void
.end method
