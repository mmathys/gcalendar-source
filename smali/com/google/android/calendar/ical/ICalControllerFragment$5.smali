.class Lcom/google/android/calendar/ical/ICalControllerFragment$5;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->showCalendarPicker(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
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
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

.field final synthetic val$originalModels:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$5;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$5;->val$originalModels:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z
    .locals 4

    .prologue
    .line 808
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 809
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$5;->val$originalModels:Ljava/util/Map;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 805
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/ical/ICalControllerFragment$5;->apply(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z

    move-result v0

    return v0
.end method
