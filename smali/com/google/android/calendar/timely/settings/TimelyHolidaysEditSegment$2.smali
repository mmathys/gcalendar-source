.class Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;
.super Ljava/lang/Object;
.source "TimelyHolidaysEditSegment.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;)Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;

    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;)Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;->this$0:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;

    .line 92
    # getter for: Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;
    invoke-static {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;)Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingReligiousChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 93
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->isSubscribed()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 85
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;->apply(Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;)Z

    move-result v0

    return v0
.end method
