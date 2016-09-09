.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47e15d6b55bba584L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected transient holds_:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected transient owner_:Ljava/lang/Thread;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 98
    return-void
.end method


# virtual methods
.method protected declared-synchronized getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final incHolds()V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 110
    if-gez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Maximum lock count exceeded"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 113
    return-void
.end method

.method public abstract lock()V
.end method

.method public abstract unlock()V
.end method
