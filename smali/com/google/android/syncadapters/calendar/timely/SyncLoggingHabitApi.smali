.class Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;
.super Ljava/lang/Object;
.source "SyncLoggingHabitApi.java"

# interfaces
.implements Lcom/google/android/calendar/api/CrudApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/calendar/api/CrudApi",
        "<",
        "Lcom/google/android/calendar/api/Habit;",
        "Lcom/google/android/calendar/api/HabitModifications;",
        "Lcom/google/android/calendar/api/HabitDescriptor;",
        "Lcom/google/android/calendar/api/HabitFilterOptions;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mImpl:Lcom/google/android/calendar/api/CrudApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Habit;",
            "Lcom/google/android/calendar/api/HabitModifications;",
            "Lcom/google/android/calendar/api/HabitDescriptor;",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Habit;",
            "Lcom/google/android/calendar/api/HabitModifications;",
            "Lcom/google/android/calendar/api/HabitDescriptor;",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    .line 34
    return-void
.end method


# virtual methods
.method public count(Lcom/google/android/calendar/api/HabitFilterOptions;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "DB: habits.count"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->count(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 125
    const-string v1, "DB: habits.count"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 123
    return v0

    .line 125
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.count"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->count(Lcom/google/android/calendar/api/HabitFilterOptions;)I

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "DB: habits.insert"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const-string v1, "DB: habits.insert"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 40
    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.insert"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "DB: habits.insert"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/calendar/api/CrudApi;->create(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const-string v1, "DB: habits.insert"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 51
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.insert"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->create(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/calendar/api/HabitDescriptor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, "DB: habits.delete"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->delete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 95
    const-string v1, "DB: habits.delete"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 93
    return v0

    .line 95
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.delete"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Lcom/google/android/calendar/api/HabitDescriptor;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, "DB: habits.delete"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/calendar/api/CrudApi;->delete(Ljava/lang/Object;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 105
    const-string v1, "DB: habits.delete"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 103
    return v0

    .line 105
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.delete"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->delete(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->delete(Lcom/google/android/calendar/api/HabitDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public list(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "DB: habits.list"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->list(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/Habit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const-string v1, "DB: habits.list"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 113
    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.list"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic list(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->list(Lcom/google/android/calendar/api/HabitFilterOptions;)[Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/Habit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "DB: habits.get"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Habit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string v1, "DB: habits.get"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.get"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "DB: habits.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/calendar/api/CrudApi;->update(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 74
    const-string v1, "DB: habits.update"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 72
    return v0

    .line 74
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.update"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "DB: habits.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->mImpl:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/calendar/api/CrudApi;->update(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 85
    const-string v1, "DB: habits.update"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 83
    return v0

    .line 85
    :catchall_0
    move-exception v0

    const-string v1, "DB: habits.update"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/calendar/api/HabitModifications;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/SyncLoggingHabitApi;->update(Lcom/google/android/calendar/api/HabitModifications;Ljava/lang/Void;Z)Z

    move-result v0

    return v0
.end method
