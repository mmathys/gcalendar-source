.class public Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;
.super Ljava/lang/Object;
.source "GrooveAsyncImageUrlLoader.java"

# interfaces
.implements Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;


# instance fields
.field private final mItem:Lcom/android/calendar/groove/TimelineGroove;


# direct methods
.method public constructor <init>(Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    check-cast p1, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;

    .line 70
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v2, v2, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v3, v3, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v2, v2, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v3, p1, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v3, v3, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 71
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 79
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v2, v2, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, v1, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/HabitDescriptor;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 82
    return v0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public loadImageUrlAsync()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;->mItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, v1, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitClient;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$ReadResult;

    .line 41
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getType()I

    move-result v0

    .line 49
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getGrooveFlairUrlString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
