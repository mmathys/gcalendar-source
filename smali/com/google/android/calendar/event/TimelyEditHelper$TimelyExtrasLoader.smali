.class Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;
.super Landroid/content/AsyncTaskLoader;
.source "TimelyEditHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimelyExtrasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/calendar/event/EventExtras;",
        ">;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/event/CalendarEventModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 71
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/calendar/event/EventExtras;
    .locals 8

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static/range {v1 .. v7}, Lcom/google/android/calendar/event/EventExtrasImpl;->createEventExtras(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/calendar/event/EventExtrasImpl;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->loadInBackground()Lcom/android/calendar/event/EventExtras;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->forceLoad()V

    .line 88
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEditHelper$TimelyExtrasLoader;->cancelLoad()Z

    .line 93
    return-void
.end method
