.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;
.super Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolidayLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader",
        "<",
        "Lcom/android/calendar/timely/TimelineHoliday;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineHoliday;)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v0, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;

    invoke-direct {v0, p2}, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;-><init>(Lcom/android/calendar/timely/TimelineHoliday;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;

    .line 228
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/calendar/timely/TimelineHoliday;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;->mTimelineHoliday:Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineHoliday$HolidayLoader;->load(Landroid/content/Context;)Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;->loadInBackground()Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    return-object v0
.end method
