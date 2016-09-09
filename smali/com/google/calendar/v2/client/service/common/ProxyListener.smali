.class public final Lcom/google/calendar/v2/client/service/common/ProxyListener;
.super Ljava/lang/Object;
.source "ProxyListener.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Disposable;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Disposable;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private batchLevel:I

.field private final changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private hasChanges:Z

.field private observedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/common/ChangeNotifier;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->hasChanges:Z

    .line 56
    iput v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I

    .line 64
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    .line 65
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->observedValue:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static newInstance(Lcom/google/calendar/v2/client/service/common/ChangeNotifier;Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ProxyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<TT;>;TT;)",
            "Lcom/google/calendar/v2/client/service/common/ProxyListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-direct {v0, p0, p1}, Lcom/google/calendar/v2/client/service/common/ProxyListener;-><init>(Lcom/google/calendar/v2/client/service/common/ChangeNotifier;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->observedValue:Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public finishBatchUpdate()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must call startBatchUpdate before finishBatchUpdate."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I

    .line 118
    iget-boolean v1, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->hasChanges:Z

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0, p0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->onChange(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onChange(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->changeNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->observedValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->notifyListeners(Ljava/lang/Object;)V

    .line 87
    monitor-enter p0

    .line 88
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->hasChanges:Z

    .line 89
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :goto_0
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 89
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 91
    :cond_0
    monitor-enter p0

    .line 92
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->hasChanges:Z

    .line 93
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public declared-synchronized startBatchUpdate()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyListener;->batchLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
