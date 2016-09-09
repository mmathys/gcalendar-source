.class public Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;,
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6655a82c2cc86aebL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    .line 453
    return-void
.end method


# virtual methods
.method protected getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->lock()V

    .line 482
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 943
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 944
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "[Unlocked]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[Locked by thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->unlock()V

    .line 651
    return-void
.end method
