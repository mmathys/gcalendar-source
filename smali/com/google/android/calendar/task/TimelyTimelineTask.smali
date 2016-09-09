.class public abstract Lcom/google/android/calendar/task/TimelyTimelineTask;
.super Lcom/android/calendar/task/TimelineTask;
.source "TimelyTimelineTask.java"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/calendar/task/TimelineTask;-><init>(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/task/TaskSetup;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/calendar/task/TimelineTask;-><init>(Lcom/android/calendar/task/TaskSetup;)V

    .line 18
    return-void
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public abstract getDetailsDueMillis()J
.end method

.method public abstract getDetailsEventRecurrence(Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendarcommon2/EventRecurrence;
.end method

.method public abstract getDetailsIsAllDay()Z
.end method

.method public abstract getDurationMillis()I
.end method
