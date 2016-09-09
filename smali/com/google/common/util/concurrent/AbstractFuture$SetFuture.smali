.class final Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetFuture"
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractFuture;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->this$0:Lcom/google/common/util/concurrent/AbstractFuture;

    # getter for: Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->this$0:Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    # invokes: Lcom/google/common/util/concurrent/AbstractFuture;->completeWithFuture(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z
    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->access$400(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z

    goto :goto_0
.end method
