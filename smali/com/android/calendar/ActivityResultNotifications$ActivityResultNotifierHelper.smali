.class public Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;
.super Ljava/lang/Object;
.source "ActivityResultNotifications.java"

# interfaces
.implements Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ActivityResultNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResultNotifierHelper"
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->mListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->mListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;

    .line 96
    invoke-interface {v0, p1, p2, p3}, Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->mListeners:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterActivityResultListener(Lcom/android/calendar/ActivityResultNotifications$ActivityResultListener;)V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/ActivityResultNotifications$ActivityResultNotifierHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
