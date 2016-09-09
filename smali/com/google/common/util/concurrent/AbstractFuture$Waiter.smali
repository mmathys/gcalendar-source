.class final Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Waiter"
.end annotation


# static fields
.field static final TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;


# instance fields
.field volatile next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>(Z)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    # getter for: Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->putThread(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V

    .line 169
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 1

    .prologue
    .line 174
    # getter for: Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->putNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 175
    return-void
.end method

.method unpark()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 182
    if-eqz v0, :cond_0

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 184
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 186
    :cond_0
    return-void
.end method
