.class public Lcom/android/calendar/timely/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/Recycler$RecyclerManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMaxCountOfObjects:I

.field private final mRecycledObjects:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRecyclerManager:Lcom/android/calendar/timely/Recycler$RecyclerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/Recycler$RecyclerManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/Recycler$RecyclerManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/Recycler$RecyclerManager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/calendar/timely/Recycler;->mRecyclerManager:Lcom/android/calendar/timely/Recycler$RecyclerManager;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecycledObjects:Ljava/util/LinkedList;

    .line 38
    iput p2, p0, Lcom/android/calendar/timely/Recycler;->mMaxCountOfObjects:I

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized getOrCreateObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecycledObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecyclerManager:Lcom/android/calendar/timely/Recycler$RecyclerManager;

    invoke-interface {v0}, Lcom/android/calendar/timely/Recycler$RecyclerManager;->createObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    :goto_0
    monitor-exit p0

    return-object v0

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecycledObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/calendar/timely/Recycler;->mRecyclerManager:Lcom/android/calendar/timely/Recycler$RecyclerManager;

    invoke-interface {v1, v0}, Lcom/android/calendar/timely/Recycler$RecyclerManager;->prepareToReuse(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/calendar/timely/Recycler;->mMaxCountOfObjects:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecycledObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/Recycler;->mMaxCountOfObjects:I

    if-ge v0, v1, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecyclerManager:Lcom/android/calendar/timely/Recycler$RecyclerManager;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/Recycler$RecyclerManager;->clean(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/Recycler;->mRecycledObjects:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
