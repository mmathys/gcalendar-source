.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;
.super Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConferenceTypeLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/event/CalendarEventModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iput-object p2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 269
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;->loadInBackground()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$ConferenceTypeLoader;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getConferenceTypeForCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
